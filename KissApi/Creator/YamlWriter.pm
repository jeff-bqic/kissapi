#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API Yaml Writer
#
# Created:  2021/11/22
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: YamlWriter.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::Creator::YamlWriter;

use Clone qw(clone);
use Data::Dumper::Concise;
use Lingua::EN::Inflect qw(PL);

use KissApi::Globals;

use MooseX::Types::Path::Class qw(File);

use Moops;

$| = 1;

my $YamlIndent = "  ";

class KissApi::Creator::YamlWriter 1.0
{
    lexical_has file =>
    (
        is       => 'ro',
        isa      => File,
        coerce   => 1,
        accessor => \(my $_file),
    );

    #########################################################################
    #
    # constructor wrapper
    #
    #  parameters:
    #   @_ - the constructor arguments
    #
    #  returns:
    #   the next call in the class hierarchy
    #
    #  notes:
    #   the method allows for a constructor call just with the file name
    #
    #########################################################################

    around BUILDARGS
    {
        return $self->$next(@_ == 1 ? { file => $_[0] } : @_);
    }

    #########################################################################
    #
    # constructor
    #
    #  parameters:
    #   none
    #
    #  returns:
    #   the creator object
    #
    #  notes:
    #
    #########################################################################

    method BUILD($args = {})
    {
        $args->{file} .= '.yml' unless $args->{file} =~ /\.\w+$/;

        $self->$_file(Path::Class::File->new($args->{file}));

        $self->$_file->absolute;
        $self->$_file->remove;
        $self->$_file->opena();

        Lingua::EN::Inflect::classical();
    }

    #########################################################################
    #
    # method to create an OpenAPI YAML line
    #
    #  parameters:
    #   $indent - the indent
    #   $key    - the key to write
    #   $value  - the value
    #   $prefix - a prefix for array values
    #
    #  returns:
    #   the object itself for function call concatenation
    #
    #########################################################################

    method line(Int $indent, Str $key, $value = undef, $prefix = '')
    {
        if ($self->_has_content($value))
        {
            my $ind = $YamlIndent x $indent;

            $value =~ s/\n\s*/\n${ind}${YamlIndent}/gs unless ref($value);

            $self->$_file->spew_lines(iomode => '>>', $ind . $key . ': ' . (ref($value) ? '' : $value));

            if (ref($value) eq 'ARRAY')
            {
                $prefix = "$prefix: " if $prefix;

                $self->$_file->spew_lines(iomode => '>>', "${ind}${YamlIndent}- ${prefix}$_") foreach @{$value};
            }
        }

        return $self;
    }

    #########################################################################
    #
    # method to print an empty line to the yaml file
    #
    #  parameters:
    #   none
    #
    #  returns:
    #   the object itself for function call concatenation
    #
    #########################################################################

    method empty_line()
    {
        $self->$_file->spew_lines(iomode => '>>', '');

        return $self;
    }

	#########################################################################
	#
	# method to print a type to the yaml file
	#
	#  parameters:
    #   $type      - the type
    #   $type_name - the type name
    #   $indent    - the indent
	#
	#  returns:
	#   the object itself for function call concatanations
	#
	#########################################################################

	method print_type(HashRef $type, Str $type_name, Int $indent)
	{
        my $min = ! defined($type->{Range}) || ! defined($type->{Range}->{min}) || $type->{Range}->{min} =~ /-infinite/i ? undef : $type->{Range}->{min};
        my $max = ! defined($type->{Range}) || ! defined($type->{Range}->{max}) || $type->{Range}->{max} =~ /infinite/i ? undef : $type->{Range}->{max};


        $type->{Properties}->{example} = ">\n" . $type->{Properties}->{example}
            if $type->{Properties}->{example} =~ /\n/;

        my $title = undef;
        $title = defined($type->{title}) 
                 ? $type->{title} eq ''
                      ? undef
                      : $type->{title}
                 : $type_name;
           
        $self->line($indent, $type_name, '');

        my $example = defined $type->{Properties}->{example} 
                      ? $type->{Parent} eq 'Str' 
                          ? "'$type->{Properties}->{example}'"
                          : $type->{Properties}->{example}
                      : undef;

        $self->line($indent + 1, 'title', $title)->
               line($indent + 1, 'description', $type->{TypeDescription})->
               line($indent + 1, 'example', $example)->
               line($indent + 1, 'default', $type->{Properties}->{default})
            if $BasicTypes->{$type->{Parent}};

        if($type->{Parent} eq 'Str')
        {
            if (defined($type->{Properties}->{pattern}))
            {
                $type->{Properties}->{pattern} =~ s/'/''/g;
                $type->{Properties}->{pattern} =~ s/^\/|\/$//g;
                $type->{Properties}->{pattern} = "'$type->{Properties}->{pattern}'";
            }

            $self->line($indent + 1, 'type', 'string')->
                   line($indent + 1, 'minLength', $type->{Range}->{min})->
                   line($indent + 1, 'maxLength', $type->{Range}->{max})->
                   line($indent + 1, 'pattern', $type->{Properties}->{pattern});

        }
        elsif($type->{Parent} eq 'Int')
        {
            my $bits = ! defined ($min) || ! defined($max) ||
                       $min < -2147483648 || $max > 2147483647 ?
                       '64' : '32';

            $self->line($indent + 1, 'type', 'integer')->
                   line($indent + 1, 'format', 'int' . $bits)->
                   line($indent + 1, 'minimum', $min)->
                   line($indent + 1, 'maximum', $max)->
                   line($indent + 1, 'multipleOf', $type->{Properties}->{multipleOf});
        }
        elsif($type->{Parent} eq 'Num')
        {
            my $format = ! defined ($min) || ! defined($max) ||
                         $min < -3.40282347e+38 || $max > 3.40282347e+38 ?
                         'double' : 'float';

            $self->line($indent + 1, 'type', 'number')->
                   line($indent + 1, 'format', $format)->
                   line($indent + 1, 'minimum', $min)->
                   line($indent + 1, 'maximum', $max)->
                   line($indent + 1, 'multipleOf', $type->{Properties}->{multipleOf});
        }
        elsif($type->{Parent} eq 'Bool')
        {
            $self->line($indent + 1, 'type', 'boolean');
        }
        elsif($type->{Parent} eq 'Date')
        {
            $self->line($indent + 1, 'type', 'string')->
                   line($indent + 1, 'format', 'date');
        }
        elsif($type->{Parent} eq 'DateTime')
        {
            $self->line($indent + 1, 'type', 'string')->
                   line($indent + 1, 'format', 'date-time');
        }
        elsif($type->{Parent} eq 'Time')
        {
            $self->line($indent + 1, 'type', 'string')->
                   line($indent + 1, 'format', 'time');
        }
        elsif($type->{Parent} eq 'Base64')
        {
            $self->line($indent + 1, 'type', 'string')->
                   line($indent + 1, 'format', 'byte');
        }
        elsif($type->{Parent} eq 'Binary')
        {
            $self->line($indent + 1, 'type', 'string')->
                   line($indent + 1, 'format', 'binary');
        }
        elsif($type->{Parent} eq 'Enum')
        {
            $self->line($indent + 1, 'type', 'string')->
                   line($indent + 1, 'enum', '[' . join(',', @{$type->{Properties}->{values}}) . ']');
        }
        elsif($type->{Parent} eq 'Map')
        {
            $self->line($indent + 1, 'type', 'object')->
                   line($indent + 1, 'additionalProperties', '')->
                       line($indent + 2, '$ref', "'#/components/schemas/" . ($type->{Properties}->{valueType} // $type->{Properties}->{value_type}) . "'");
        }
        elsif($type->{Parent} eq 'Array')
        {
            my $itype = ref($type->{Properties}->{items}) ? 
                        $type->{Properties}->{items}->{Parent} : 
                        $type->{Properties}->{items};
            $itype //= $type->{Properties}->{itemType} // $type->{Properties}->{item_type};

            if ($TypeMap->{$itype})
            {
                $itype = $TypeMap->{$itype};
            }
            else
            {
                $itype = "'#/components/schemas/$itype'";
            }

            $min = $type->{Properties}->{items}->{Properties}->{min}
                if ref($type->{Properties}->{items}) && 
                   defined $type->{Properties}->{items}->{Properties}->{min};

            $max = $type->{Properties}->{items}->{Properties}->{max}
                if ref($type->{Properties}->{items}) &&
                   defined $type->{Properties}->{items}->{Properties}->{max};

            my $unique = $type->{Properties}->{uniqueItems} // $type->{Properties}->{unique_items} // $type->{Properties}->{items}->{unique};
            $unique //= $type->{Properties}->{items}->{unique} if ref($type->{Properties}->{items});

            $self->line($indent + 1, 'type', 'array')->
                   line($indent + 1, 'minItems', $min)->
                   line($indent + 1, 'maxItems', $max)->
                   line($indent + 1, 'uniqueItems', $unique)->
                   line($indent + 1, 'items', '')->
                       line($indent + 2, $itype =~ /schemas/ ? '$ref' : 'type', $itype);
        }
        elsif($type->{Parent} eq 'Class')
        {
            $self->line($indent + 1, 'type', 'object')->
                   line($indent + 1, 'additionalProperties', 'false')->
                   line($indent + 1, 'properties', '');

            my @required = ();

            foreach my $property_name (keys %{$type->{Properties}})
            {
                my $property = $type->{Properties}->{$property_name};

                push @required, $property_name unless $property->{Optional};

                $self->PrintType($property, $property_name, $indent + 2);
            }

            if ($#required >= 0)
            {
                $self->line($indent + 1, 'required', \@required, '');
            }
        }
        else
        {
            $self->line($indent + 1, '$ref', "'#/components/schemas/$type->{Parent}'");
        }

        return $self;
    }

	#########################################################################
	#
	# internal method to print the paths for a service
	#
	#  parameters:
    #   $epc          - the endpoint collection
    #   $epc_name     - the name of the endpoint collection
    #   $service      - the service hash
    #   $service_name - the service name
	#
	#  returns:
	#   the object itself for function call concatanations
	#
	#########################################################################

	method print_endpoints(HashRef $epc, Str $epc_name, HashRef $service, Str $service_name)
	{
        my $epdata = $epc->{epdata};

        my $paths_seen = {};

        # the main part
        foreach my $op ('create', 'upcreate', 'getList', 'get', 'update', 'delete')
        {
            $epdata->{$op}->{operationId} = $epdata->{$op}->{op_prefix} . $epdata->{$op}->{operationId};

            for my $sd ('summary', 'description')
            {
                $epdata->{$op}->{$sd} =~ s/{thing}/$epdata->{the_thing}/;
                $epdata->{$op}->{$sd} =~ s/{things}/$epdata->{the_things}/;
            }

            next unless $epc->{operations}->{$op};

            # shortcut for the operation's data
            my $opdata = $epc->{operations}->{$op};

            if (ref($opdata))
            {
                # use the defaults and override them with the given definitions
                $opdata = { %{$epdata->{$op}}, %{$opdata} };
            }
            else
            {
                # just use the defaults
                $opdata = $epdata->{$op};
            }

            $self->line(1, "'$opdata->{path}'", '') unless $paths_seen->{$opdata->{path}};

            $paths_seen->{$opdata->{path}} = 1;

            $self->PrintEndpointIntro($opdata->{method}, $service_name, $opdata->{operationId}, $opdata->{summary}, $opdata->{description});

            $self->PrintEndpointSecurities($service->{security}, $epc->{security});

            my $opparams = $opdata->{parameters} // {};
            push @{$opparams->{query}}, 'orderBy' if defined $opdata->{order};
            push @{$opparams->{query}}, 'search' if defined $opdata->{search};
            push @{$opparams->{query}}, map { "pagination$_" } qw(Page Limit) if defined $opdata->{pagination};

            # retrieve all path parameters
            my @pparams = ($opdata->{path} =~ /\{(\w+)\}/g);
            push @{$opparams->{path}}, @pparams;

            $self->PrintEndpointParameters($epc->{parameters} // {}, $opparams);

            # post, put and patch methods require request data
            if ($opdata->{method} =~ /^p/)
            {
                $self->line(3, 'requestBody', '')->
                           line(4, 'required', 'true')->
                           line(4, 'content', '')->
                               line(5, 'application/json', '');

                if (defined $opdata->{request})
                {
                    my $robj = 
                    {
                        Parent => 'Class',
                        title  => '', 
                        # ucfirst($opdata->{operationId}) . 'Request',
                    };

                    foreach my $rparam (keys %{$opdata->{request}})
                    {
                        my $attr_name;
                        my $opt;

                        ($attr_name, $opt) = $rparam =~ /([^?!]+)([?!])?$/;

                        $robj->{Properties}->{$attr_name} =
                        {
                            Optional => $opt eq '?',
                            Parent   => $opdata->{request}->{$rparam},
                        };
                    }

                    $self->PrintType($robj, 'schema', 6);
                }
                else
                {
                    $self->line(6, 'schema', '')->
                               line(7, '$ref', "'#/components/schemas/$epdata->{TheThing}'");
                }
            }

            # the responses
            $self->line(3, 'responses', '');

            foreach my $resp (@{$opdata->{responses}})
            {
                $self->line(4, "'$resp'", '');

                my $description = 'OK';
                my $schema = '';

                if ($resp eq 'default')
                {
                    $self->line(5, '$ref', "'#/components/responses/${resp}Error'");
                }
                elsif ($resp < 400)
                {
                    if ($op eq 'getList')
                    {
                        # returns a list of {things}s
                        $description = "the $epdata->{the_things}";
                        $schema = "'#/components/schemas/$epdata->{TheThings}'";

                        my $type = 
                        {
                            title      => '',
                            # ucfirst($opdata->{operationId}) . 'Response',
                            Parent     => 'Class',
                            Properties =>
                            {
                                $epdata->{theThings} => 
                                {
                                    title  => '',
                                    Parent => "$epdata->{TheThings}",
                                }
                            },
                        };

                        if ($opdata->{pagination})
                        {
                            $type->{Properties}->{pagination} =
                            {
                                title  => '',
                                Parent => 'Pagination',
                            };
                        }

                        $self->line(5, 'description', $description)->
                               line(5, 'content', '')->
                                   line(6, 'application/json', '');

                        $self->PrintType($type, 'schema', 7);
                    }
                    else
                    {
                        if ($opdata->{method} =~ /^p/)
                        {
                            # post, put and patch return a {thing}Id
                            $description = "the $epdata->{the_thing} ID";
                            $schema = "'#/components/schemas/$epdata->{TheThing}Id'";
                        }
                        elsif ($op eq 'get')
                        {
                            # returns a {thing}
                            $description = "the $epdata->{the_thing}";
                            $schema = "'#/components/schemas/$epdata->{TheThing}'";
                        }
                        elsif ($op eq 'delete')
                        {
                            # returns nothing
                            $description = "OK";
                            $schema = undef;
                        }

                    $self->line(5, 'description', $description);

                    $self->line(5, 'content', '')->
                               line(6, 'application/json', '')->
                                   line(7, 'schema', '')->
                                       line(8, '$ref', $schema) if $schema;
                    }
                }
                else
                {
                    $self->line(5, '$ref', "'#/components/responses/${resp}Error'");
                }
            }
        }

        return $self;
    }

	#########################################################################
	#
	# internal method to print the intro of an endpoint
	#
	#  parameters:
    #   $method      - the method of the endpoint
    #   $tag_name    - the name of the endpoint collection
    #   $opid        - the operation id of the endpoint
    #   $summary     - the summary of the endpoint
    #   $description - the description of the endpoint
	#
	#  returns:
	#   the object itself for function call concatanations
	#
	#########################################################################

	method PrintEndpointIntro(Str $method, Str $tag_name, Str $opid, Any $summary?, Any $description?)
	{
        $self->line(2, $method, '')->
                   line(3, 'tags', [ $tag_name ], '')->
                   line(3, 'operationId', $opid)->
                   line(3, 'summary', defined $summary ? ">\n" . $summary : undef)->
                   line(3, 'description', defined $description ? ">\n" . $description : undef);

        return $self;
    }   

	#########################################################################
	#
	# internal method to print the security of an endpoint
	#
	#  parameters:
    #   @securities - the securities array
	#
	#  returns:
	#   the object itself for function call concatanations
	#
	#########################################################################

	method PrintEndpointSecurities(@securities)
	{
        @securities = map { ref eq 'ARRAY' ? @$_ : $_ } @securities;

        # get all security names
        my @sn = ();

        foreach my $security (@securities)
        {
            next unless $security;

            my $sval = $StandardSecurityIds->{$security};

            if (ref($security))
            {
                my $key = (keys %$security)[0];

                my $sval = ref($security->{$key}) ?
                           $security->{$key}->{id} // $StandardSecurityIds->{$key} :
                           $security->{$key};
            }

            push @sn, ref($sval) ? $sval : "$sval: []" if $sval;
        }

        $self->line(3, 'security', \@sn, '');

        return $self;
    }   

	#########################################################################
	#
	# internal method to print the parameters of an endpoint
	#
	#  parameters:
    #   $service_params  - the parameters defined in the service for 
    #                      all endpoints
    #   $endpoint_params - the parameters of the endpoint that override the
    #                      parameters of the the service or are added to them
	#
	#  returns:
	#   the object itself for function call concatanations
	#
	#########################################################################

	method PrintEndpointParameters(HashRef $service_params?, HashRef $endpoint_params?)
	{
        my $params = {};

        foreach my $sp ($service_params, $endpoint_params)
        {
            foreach my $ptype ('path', 'header', 'query', 'cookie')
            {
                foreach my $parray ($sp->{$ptype})
                {
                    foreach my $param (@{$parray})
                    {
                        my $pname = ref($param) ? (keys %$param)[0] : $param;
                        $pname .= ucfirst($ptype) . 'Param';

                        $params->{$pname} = "'#/components/parameters/$pname'";
                    }
                }
            }
        }

        $self->line(3, 'parameters', [values %$params], '$ref') if keys %$params;

        return $self;
    }   

    #########################################################################
    #
    # helper method to check if an element isn't empty
    #
    #  parameters:
    #   $element - the element to check
    #
    #  returns:
    #   1 if the element (scalar or hash) isn't empty, else 0
    #
    #########################################################################

    method _has_content($element)
    {
        my $ref = ref($element);

        if ($ref eq 'HASH')
        {
            foreach my $key (keys %$element)
            {
                return 1 if $self->_has_content($element->{$key});
            }
        }
        elsif ($ref eq 'ARRAY')
        {
            return @{$element} >= 0;
        }
        else
        {
            return defined($element);
        }
    }
}
