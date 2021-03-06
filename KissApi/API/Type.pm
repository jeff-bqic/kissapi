#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API type class
#
# Created:  2021/11/15
#
# Update:   $Date: 2022-01-25 10:45:03 +0100 (Di, 25. Jan 2022) $
#
# Revision: $Revision: 199 $
#
# File:     $Id: Type.pm 199 2022-01-25 09:45:03Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API::Type;

use Data::Dumper::Concise;
use UUID qw(uuid);
use Clone qw(clone);
use Class::Load ':all';

use KissApi::Globals;

use Moops;

$| = 1;

class KissApi::API::Type 1.0
{
    has name =>
    (
        is       => 'rwp',
        isa      => Str,
        reader   => 'name',
        writer   => '_name',
        default  => '',
    );

    has parent =>
    (
        is       => 'rwp',
        isa      => Str,
        reader   => 'parent',
        writer   => '_parent',
        default  => 'Str',
    );

    has description => 
    (
        is       => 'rwp',
        isa      => Str,
        reader   => 'description',
        writer   => '_description',
        default  => '',
    );

    has range =>
    (
        is       => 'rwp',
        isa      => HashRef,
        reader   => 'range',
        writer   => '_range',
        default  => sub { {} },
    );

    has properties =>
    (
        is       => 'rwp',
        isa      => HashRef,
        reader   => 'properties',
        writer   => '_properties',
        default  => sub { {} },
    );

    has attributes_order =>
    (
        is       => 'rwp',
        isa      => ArrayRef,
        reader   => 'attributes_order',
        writer   => '_attributes_order',
        default  => sub { [] },
    );

    #########################################################################
    #
    # the constructor wrapper
    #
    #  parameters:
    #   $_[0] - the name of the type
    #   $_[1] - the hash ref with the type's data
    #    or
    #   $_[0] - the hash ref with the type's data includinge the TypeName
    #
    #  returns:
    #   the next call in the class hierarchy
    #
    #  notes:
    #
    #########################################################################

    around BUILDARGS
    {
        return $self->$next(
            @_ == 1 ?
            {
                name        => $_[0]->{TypeName} || $_[0]->{name},
                parent      => $_[0]->{Parent} || $_[0]->{parent} || 'Str',
                description => $_[0]->{TypeDescription} || $_[0]->{Description} || '',
                range       => $_[0]->{Range} || $_[0]->{range} || {},
                properties  => $_[0]->{Properties} || $_[0]->{properties} || {},
                attributes_order  => $_[0]->{AttributesOrder} || $_[0]->{attributes_order} || [],
            } :
            @_ == 2 ?
            {
                name        => $_[0],
                parent      => $_[1]->{Parent} || $_[1]->{parent} || 'Str',
                description => $_[1]->{TypeDescription} || $_[0]->{Description} || '',
                range       => $_[1]->{Range} || $_[1]->{range} || {},
                properties  => $_[1]->{Properties} || $_[1]->{properties} || {},
                attributes_order  => $_[1]->{AttributesOrder} || $_[1]->{attributes_order} || [],
            } :
            { @_ }
                           );
    }

    #########################################################################
    #
    # the constructor
    #
    #  parameters:
    #   $name             - the type name
    #   $parent           - the parent type (default: Str)
    #   $description      - the type description (default: undef)
    #   $range            - the value range (if any)
    #   $properties       - the type's properties
    #   $attributes_order - the type's attributes_order
    #
    #  returns:
    #   the legal entity object
    #
    #  notes:
    #
    #########################################################################

    method BUILD($args = {})
    {
        my ($rcode, $rmsg) = Class::Load::try_load_class('KissApi::API::Library');
        # closure for making a pattern case insensitive
        my $ipattern = sub
        {
            my ($pattern) = shift;

            if (defined $pattern && $pattern =~ /\/i$/)
            {
                $pattern =~ s/i$//;

                $pattern =~ s/([a-z])-([a-z])/\U${1}-\U${2}\L${1}-\L${2}/gi;
            }

            return $pattern;
        };

        die "cannot load application class <KissApi::API::Library>: $rmsg"
            unless $rcode;

        my $typelib = KissApi::API::Library->instance->types;

        $self->_description("a " . $self->name) unless $self->description;

        $self->properties->{pattern} = &$ipattern($self->properties->{pattern})
            if defined $self->properties->{pattern};

        $typelib->used($self->parent) unless $BasicTypes->{$self->parent};

        if ($typelib->base_type($self->parent) eq 'Class')
        {
            # maybe some attributes have just a type name
            foreach my $attr (keys %{$self->properties})
            {
                my $attr_name;
                my $opt;

                ($attr_name, $opt) = $attr =~ /([^?!]+)([?!])?$/;

                my $parent = ref($self->properties->{$attr}) ?
                             $self->properties->{$attr}->{Parent} :
                             $self->properties->{$attr};

                $self->properties->{$attr_name} =
                    {
                        Parent   => $parent,
                        Optional => $opt eq '?',
                    }
                    unless ref($self->properties->{$attr_name});
                
                delete $self->properties->{$attr} if $attr ne $attr_name;

                $self->properties->{$attr_name}->{Properties}->{pattern} =
                    &$ipattern( $self->properties->{$attr_name}->{Properties}->{pattern})
                    if defined $self->properties->{$attr_name}->{Properties}->{pattern};

                $typelib->used($parent);
            }
        }
        elsif ($self->parent eq 'UUID')
        {
            $self->_parent('Str');
            $self->properties->{example} = uuid;
            $self->_description("an UUID");
            $self->properties->{pattern} = '^[0-9A-Fa-f]{8}(?:-[0-9A-Fa-f]{4}){3}-[0-9A-Fa-f]{12}$';
            $self->properties->{format} = 'uuid';
            $self->range->{min} = 36;
            $self->range->{max} = 36;
        }
    }

    #########################################################################
    #
    # method to print the type openapi yaml
    #
    #  parameters:
    #   $yamlw      - the yaml writer
    #   $typelib    - the type lib for recursive calls
    #   $indent (o) - the print indent
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method print_yaml(Object $yamlw, Object $typelib, Int $indent?)
    {
        $self->_print_yaml($yamlw,
                           $typelib,
                           {
                               Name            => $self->name,
                               Description     => $self->properties->{description} || $self->description,
                               Parent          => $self->parent,
                               Title           => defined($self->properties->{title}) && ! ref($self->properties->{title}) ? $self->properties->{title} : $self->name,
                               Properties      => $self->properties,
                               Range           => $self->range,
                               AttributesOrder => $self->attributes_order,
                           },
                           $indent);

        return $self;
    }

    #########################################################################
    #
    # method to print the type (for debugging purposes)
    #
    #  parameters:
    #   $used (o) - the used flag
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method print(Bool $used?)
    {
        print "*" x 40, "\n", $self->name;
        print " <-- used !" if $used;
        print "\n", "*" x 40, "\n";
        print "Parent: ", $self->parent, "\n";
        print "Range:\n", Dumper($self->range);
        print "Properties:\n", Dumper($self->properties);
        print "AttributesOrder:\n", Dumper($self->attributes_order);

        return $self;
    }

    #########################################################################
    #
    # internal method to print the type openapi yaml
    #
    #  parameters:
    #   $yamlw      - the yaml writer
    #   $typelib    - the type lib for recursive calls
    #   $data       - hash with the data to use
    #                 {
    #                     Name
    #                     Parent
    #                     Description
    #                     Title
    #                     Properties
    #                     {
    #                         default
    #                         pattern        # only Str
    #                         multipleOf     # only Int || Num
    #                         values         # only Enum
    #                         valueType      # only Map
    #                         uniqueItems    # only Array
    #                         itemType       # only Array
    #                         items          # only Array
    #                         {
    #                             Parent 
    #                         }
    #                     }
    #                     AttributesOrder []
    #                     Range          # only Str || Int || Num || Array
    #                     {
    #                         min
    #                         max
    #                     }
    #                 }
    #   $indent (o) - the print indent
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method _print_yaml(Object $yamlw, Object $typelib, HashRef $data, Int $indent?)
    {
        my $base_type = $typelib->base_type($data->{Parent});
        # my $base_type = $typelib->base_type($data->{Name});

        my $stype = $data->{Parent} ? $typelib->type($data->{Parent}) : undef;

        if ($stype)
        {
            $data->{Properties} = { %{$stype->properties}, %{$data->{Properties}} };
            $data->{Range} = $stype->range unless $data->{Range};
            $data->{Parent} = $stype->parent;

#            return $self->_print_yaml($yamlw, $typelib, $data, $indent);
        }
        
        return $self->_print_yaml($yamlw, $typelib, $data, $indent)
            unless ($BasicTypes->{$data->{Parent}} || $base_type eq 'Class');

        my $min = $data->{Range}->{min};
        my $max = $data->{Range}->{max};
        $min = undef if $min =~ /infinite/i;
        $max = undef if $max =~ /infinite/i;

        my $example = defined $data->{Properties}->{example}
                      ? $data->{Parent} eq 'Str'
                           ? "'" . $data->{Properties}->{example} . "'"
                           : $data->{Properties}->{example}
                      : undef;

        $example = ">\n" . $example if defined($example) && $example =~ /\n/;

        my $description = $data->{Properties}->{description} || $data->{Description} || '';

        $description = ">\n" .$description if defined($description) && $description =~ /\n/;

        $yamlw->line($indent, $data->{Name}, '');

        $yamlw->line($indent + 1, 'title', $data->{Title} || undef)->
                line($indent + 1, 'description', $description)->
                line($indent + 1, 'example', $example)->
                line($indent + 1, 'default', $data->{Properties}->{default})
;#            if $BasicTypes->{$self->parent} || $self->parent eq 'UUID';

        if($data->{Parent} eq 'Str')
        {
            if (defined($data->{Properties}->{pattern}))
            {
                $data->{Properties}->{pattern} =~ s/(^'|'$)//g;
                $data->{Properties}->{pattern} =~ s/'/''/g;
                $data->{Properties}->{pattern} =~ s/^\/|\/$//g;
                $data->{Properties}->{pattern} = "'" . $data->{Properties}->{pattern} . "'";
            }

            $yamlw->line($indent + 1, 'type', 'string')->
                    line($indent + 1, 'minLength', $min)->
                    line($indent + 1, 'maxLength', $max)->
                    line($indent + 1, 'format', $data->{Properties}->{format})->
                    line($indent + 1, 'pattern', $data->{Properties}->{pattern});

        }
        elsif($data->{Parent} eq 'Int')
        {
            my $bits = ! defined ($min) || ! defined($max) ||
                       $min < -2147483648 || $max > 2147483647 ?
                       '64' : '32';

            $yamlw->line($indent + 1, 'type', 'integer')->
                    line($indent + 1, 'format', 'int' . $bits)->
                    line($indent + 1, 'minimum', $min)->
                    line($indent + 1, 'maximum', $max)->
                    line($indent + 1, 'multipleOf', $data->{Properties}->{multipleOf});
        }
        elsif($data->{Parent} eq 'Num')
        {
            my $format = ! defined ($min) || ! defined($max) ||
                         $min < -3.40282347e+38 || $max > 3.40282347e+38 ?
                         'double' : 'float';

            $yamlw->line($indent + 1, 'type', 'number')->
                    line($indent + 1, 'format', $format)->
                    line($indent + 1, 'minimum', $min)->
                    line($indent + 1, 'maximum', $max)->
                    line($indent + 1, 'multipleOf', $data->{Properties}->{multipleOf});
        }
        elsif($data->{Parent} eq 'Bool')
        {
            $yamlw->line($indent + 1, 'type', 'boolean');
        }
        elsif($data->{Parent} eq 'Date')
        {
            $yamlw->line($indent + 1, 'type', 'string')->
                    line($indent + 1, 'format', 'date');
        }
        elsif($data->{Parent} eq 'DateTime')
        {
            $yamlw->line($indent + 1, 'type', 'string')->
                    line($indent + 1, 'format', 'date-time');
        }
        elsif($data->{Parent} eq 'Time')
        {
            $yamlw->line($indent + 1, 'type', 'string')->
                    line($indent + 1, 'format', 'time');
        }
        elsif($data->{Parent} eq 'Base64')
        {
            $yamlw->line($indent + 1, 'type', 'string')->
                    line($indent + 1, 'format', 'base64');
        }
        elsif($data->{Parent} eq 'Binary')
        {
            $yamlw->line($indent + 1, 'type', 'string')->
                    line($indent + 1, 'format', 'binary');
        }
        elsif($data->{Parent} eq 'Enum')
        {
            $yamlw->line($indent + 1, 'type', 'string')->
                    line($indent + 1, 'enum', '[' . join(',', @{$data->{Properties}->{values}}) . ']');
        }
        elsif($data->{Parent} eq 'Map')
        {
            my $value_type = $TypeMap->{$data->{Properties}->{valueType} // $data->{Properties}->{value_type}};
            my $value_label;
            
            if ($value_type)
            {
                $value_label = 'type';
            }
            else
            {
                $value_label = '$ref';
                $value_type  = "'#/components/schemas/" . ($data->{Properties}->{valueType} // $data->{Properties}->{value_type}) . "'";
            }

            $yamlw->line($indent + 1, 'type', 'object')->
                    line($indent + 1, 'additionalProperties', '')->
                        line($indent + 2, $value_label, $value_type);
        }
        elsif($data->{Parent} eq 'Array')
        {
            my $itype = ref($data->{Properties}->{items}) ?
                        $data->{Properties}->{items}->{Parent} :
                        $data->{Properties}->{items};
            $itype //= $data->{Properties}->{itemType} // $data->{Properties}->{item_type};

            if ($TypeMap->{$itype})
            {
                $itype = $TypeMap->{$itype};
            }
            else
            {
                $itype = "'#/components/schemas/$itype'";
            }

            $min = $data->{Properties}->{items}->{Properties}->{min}
                if ref($data->{Properties}->{items}) &&
                   defined $data->{Properties}->{items}->{Properties}->{min};

            $max = $data->{Properties}->{items}->{Properties}->{max}
                if ref($data->{Properties}->{items}) &&
                   defined $data->{Properties}->{items}->{Properties}->{max};

            my $unique = $data->{Properties}->{uniqueItems} // $data->{Properties}->{unique_items} // $data->{Properties}->{items}->{unique} // $data->{Properties}->{items}->{Properties}->{unique};

            $yamlw->line($indent + 1, 'type', 'array')->
                    line($indent + 1, 'minItems', $min)->
                    line($indent + 1, 'maxItems', $max)->
                    line($indent + 1, 'uniqueItems', $unique ? 'true' : undef)->
                    line($indent + 1, 'items', '')->
                        line($indent + 2, $itype =~ /schemas/ ? '$ref' : 'type', $itype);
        }
        elsif($data->{Parent} eq 'Class' || $base_type eq 'Class')
        {
            my $type_label = 'type';

            if ($data->{Parent} ne 'Class')
            {
                $yamlw->line($indent + 1, 'allOf', '')->
                            line($indent + 2, '- $ref', "'#/components/schemas/" . $data->{Parent} . "'");

                $type_label = '- ' . $type_label;

                $indent++;
            }

            $yamlw->line($indent + 1, $type_label, 'object');
#                    line($indent + 1, 'additionalProperties', 'false')->

            $indent++ if $type_label =~ /^- /;

            $yamlw->line($indent + 1, 'properties', '');

            my @required = ();

#            foreach my $property_name (keys %{$data->{Properties}})
            my @property_names = @{$data->{AttributesOrder}};
            @property_names = sort keys %{$data->{Properties}} unless $#property_names >= 0;

            foreach my $property_name (@property_names)
            {
                my $property = $data->{Properties}->{$property_name};

                push @required, $property_name unless $property->{Optional};

                my $attr_type = ref($property) ? $property->{Parent} : $property;

                if (ref($property) && $BasicTypes->{$attr_type})
                {
                    my $attr = clone $property;
                    $attr->{Name} = $property_name;

                    # some "basic" types have definitions
                    my $btype = $typelib->type($attr_type);
                    $attr->{Properties} = { %{$btype->{properties}}, %{$attr->{Properties}} } if $btype;

                    # recursively print the attributes of the class
                    $self->_print_yaml($yamlw, $typelib, $attr, $indent + 2);
                }
                else
                {
                    $yamlw->line($indent + 2, $property_name, '')->
                                line($indent + 3, '$ref', "'#/components/schemas/" . $attr_type . "'");
                }
            }

            if ($#required >= 0)
            {
                $yamlw->line($indent + 1, 'required', \@required, '');
            }
        }

        return $self;
    }
}
