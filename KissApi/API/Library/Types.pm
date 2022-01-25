############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss type library
#
# Created:  2021/11/15
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: Types.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API::Library::Types;

use Data::Dumper::Concise;

use KissApi::Globals;
use KissApi::API::Type;

use Moops;

$| = 1;

class KissApi::API::Library::Types 1.0
{
    lexical_has types =>
    (
        is       => 'rwp',
        isa      => HashRef[Object],
        accessor => \(my $_types),
        default  => sub { {} },
    );

    lexical_has used_types =>
    (
        is       => 'rwp',
        isa      => HashRef,
        accessor => \(my $_used_types),
        default  => sub { {} },
    );

    #########################################################################
    #
    # inspector method of a type
    #
    #  parameters:
    #   $type - the type name 
    #
    #  returns:
    #   the KissApi::API::Type or undef
    #
    #  notes:
    #
    #########################################################################

    multi method type(Str $type)
    {
        return $self->$_types->{$type};
    }

    #########################################################################
    #
    # mutator method of a type
    #
    #  parameters:
    #   $def - the type definition hash ref
    #
    #  returns:
    #   the KissApi::API::Type
    #
    #  notes:
    #
    #########################################################################

    multi method type(HashRef $def)
    {
        my $used = delete $def->{used};

        my $type = KissApi::API::Type->new($def);

        $self->$_types->{$type->name} = $type;

        $self->used($type->name) if $used;

        return $self->$_types->{$type->name};
    }

    #########################################################################
    #
    # inspector method of all used types
    #
    #  parameters:
    #   none
    #
    #  returns:
    #   all used types
    #
    #  notes:
    #
    #########################################################################

    multi method used()
    {
        return map { $_ => $self->$_types->{$_} } keys %{$self->$_used_types};
    }

    #########################################################################
    #
    # mutator method of a type to mark it as used
    #
    #  parameters:
    #   $type_name - the name of the type
    #
    #  returns:
    #   the KissApi::API::Library::Types object itself
    #
    #  notes:
    #
    #########################################################################

    multi method used(Str $type_name)
    {
        # mark all types of class type fields as used as well
        my $type = $self->$_types->{$type_name};

        if ($type)
        {
            $self->$_used_types->{$type_name} = 1;

            if ($type->parent eq 'Class')
            {
                foreach my $field (keys %{$type->properties})
                {
                    $self->used($type->properties->{$field}->{Parent})
                        unless $BasicTypes->{$type->properties->{$field}->{Parent}};
                }
            }
        }

        return $self;
    }

    #########################################################################
    #
    # mutator method of multiple types to mark it as used
    #
    #  parameters:
    #   @type_names - the names of the types
    #
    #  returns:
    #   the KissApi::API::Library::Types object itself
    #
    #  notes:
    #
    #########################################################################

    multi method used(Array @type_names)
    {
        $self->used($_) foreach @type_names;

        return $self;
    }

    #########################################################################
    #
    # method to find the base type of a type
    #
    #  parameters:
    #   $type - the name of type to check
    #
    #  returns:
    #   the base type of a type
    #
    #  notes:
    #
    #########################################################################

    method base_type(Str $type)
    {
        return $type if $BasicTypes->{$type};

        return undef unless $self->$_types->{$type};

        my $btype = $self->$_types->{$type}->parent;

        return $BasicTypes->{$btype} ? $btype : $self->base_type($btype);
    }

    #########################################################################
    #
    # the method to print the openapi yaml
    #
    #  parameters:
    #   $yamlw      - the yaml writer
    #   $indent (o) - the print indent
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method print_yaml(Object $yamlw, Int $indent?)
    {
        $indent = 0 unless defined($indent) && $indent >= 0;

        $yamlw->empty_line->line($indent, 'schemas', '');

        $self->$_types->{$_}->print_yaml($yamlw, $self, $indent + 1) foreach sort keys %{$self->$_used_types};

        return $self;
    }

    #########################################################################
    #
    # the method to print the type library (for debugging purposes)
    #
    #  parameters:
    #   none
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method print
    {
        print "-" x 80, "\n";
        print "Types: \n";
        print "-" x 80, "\n";
        $self->$_types->{$_}->print($self->$_used_types->{$_}) foreach sort keys %{$self->$_types};
        print "-" x 80, "\n";

        return $self;
    }
}
