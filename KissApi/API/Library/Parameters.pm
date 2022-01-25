#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API parameters library
#
# Created:  2021/12/16
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: Parameters.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API::Library::Parameters;

use Data::Dumper::Concise;
use Clone qw(clone);
use List::MoreUtils qw(uniq);

use KissApi::Globals;

use Moops;

$| = 1;

class KissApi::API::Library::Parameters 1.0
{
    has header =>
    (
        is       => 'rwp',
        isa      => HashRef,
        reader   => 'header',
        writer   => '_header',
        default  => sub { {} },
    );

    has query =>
    (
        is       => 'rwp',
        isa      => HashRef,
        reader   => 'query',
        writer   => '_query',
        default  => sub { {} },
    );

    has path =>
    (
        is       => 'rwp',
        isa      => HashRef,
        reader   => 'path',
        writer   => '_path',
        default  => sub { {} },
    );

    has cookie =>
    (
        is       => 'rwp',
        isa      => HashRef,
        reader   => 'cookie',
        writer   => '_cookie',
        default  => sub { {} },
    );

    lexical_has used =>
    (
        is       => 'rwp',
        isa      => HashRef,
        accessor => \(my $_used),
        default  => sub { {} },
    );

    #########################################################################
    #
    # the constructor
    #
    #  parameters:
    #   $args - a (parsed) parameters definitions as array or hash
    #
    #  returns:
    #   the parameter definitions object
    #
    #  notes:
    #
    #########################################################################

    method BUILD(Any $args?)
    {
        $self->collective_entry($args) if $args and keys %$args;
    }

    #########################################################################
    #
    # the method to enter new parameters to the library
    #
    #  parameters:
    #   $args - a (parsed) parameters definitions as array or hash
    #
    #  returns:
    #   a hash ref with the parameters added to the library
    #       {
    #           header => [ <header_parameter_ids> ... ],
    #           query  => [ <query_parameter_ids> ... ],
    #           path   => [ <path_parameter_ids> ... ],
    #           cookie => [ <cookie_parameter_ids> ... ],
    #       }
    #
    #  notes:
    #
    #########################################################################

    method collective_entry(Any $args?)
    {
        my $res = {};

        if ($args)
        {
            $args = { map { (keys %$_)[0] => (values %$_)[0] } @$args } if ref($args) eq 'ARRAY';

            foreach my $ptype (keys %$args)
            {
                if (ref($args->{$ptype}) eq 'HASH')
                {
                    # a global  parameters definition 
                    foreach my $param (keys %{$args->{$ptype}})
                    {
                        $self->$ptype->{$param} = $args->{$ptype}->{$param};

                        $self->$ptype->{$param}->{required} //= $StandardParameterRequirements->{$ptype};

                        push @{$res->{$ptype}}, $param;
                    }
                }
                elsif (ref($args->{$ptype}) eq 'ARRAY')
                {
                    # a service, endpoint or operation parameter list
                    foreach my $param (@{$args->{$ptype}})
                    {
                        if (ref($param))
                        {
                            my ($pname, $opt) = (keys %$param)[0] =~ /^([^?!(]+)([?!])?$/;
                            $opt = $ParameterOptions->{$opt} // 
                                   $StandardParameterRequirements->{$ptype};

                            my $pvalue = $param->{$pname};
                            my ($cname, $vname) = $pvalue =~ /^([^?!(]+)([?!])?(?:\(([-_\w]+)\))?$/;

                            if (defined($self->$ptype->{$pname}))
                            {
                                print STDERR "redefinition of parameter <$param> of type<", defined($self->$ptype->{$param}->{type}) ? $self->$ptype->{$param}->{type} : 'Str', " as <$cname> -> skip\n"
                                    if defined($self->$ptype->{$pname}->{type}) &&
                                       $self->$ptype->{$pname}->{type} ne $cname;
                            }
                            else
                            {
                                $self->$ptype->{$pname} =
                                {
                                    type     => $cname,
                                    name     => $vname // $pname,
                                    required => $opt,
                                }
                            }

                            push @{$res->{$ptype}}, $pname;
                        }
                        else
                        {
                            unless (defined($self->$ptype->{$param}))
                            {
                                my ($name, $opt) = $param =~ /^([^!?]+)([!?])?$/;

                                $opt = $ParameterOptions->{$opt} // 
                                       $StandardParameterRequirements->{$ptype};

                                $self->$ptype->{$param} =
                                {
                                    type     => 'Str',
                                    name     => $name,
                                    required => $opt,
                                };
                            }

                            push @{$res->{$ptype}}, $param;
                        }
                    }
                }
                else
                {
                    # just an parameter id; must have been defined already
                    $self->$ptype->{$args->{$ptype}} ?
                        push @{$res->{$ptype}}, $args->{$ptype} :
                        print STDERR "WARNING: parameter <$args->{$ptype}> not defined -> skip\n" if $::debug;
                }
            }
        }

        return $res;
    }

    #########################################################################
    #
    # the accessor method for a single parameter
    #
    #  parameters:
    #   $ptype    - the param type (header, query, path, cookie)
    #   $name    - the name of the parameter
    #   $def (o) - the param definition as hash (mutator call)
    #
    #  returns:
    #   the parameters id
    #
    #  notes:
    #
    #########################################################################

    multi method parameter(Str $ptype, Str $name, HashRef $def?)
    {
        return undef unless $ParameterTypes->{$ptype};

        $self->$ptype->{$name} = $def if $def;

        return $self->$ptype->{$name};
    }

    #########################################################################
    #
    # a mutator method for a single parameter
    #
    #  parameters:
    #   $ptype - the param type (header, query, path, cookie)
    #   $def   - the param definition as hash 
    #
    #  returns:
    #   the parameters id
    #
    #  notes:
    #
    #########################################################################

    multi method parameter(Str $ptype, HashRef $def)
    {
        return undef unless $ParameterTypes->{$ptype};

        my $name = delete $def->{name};

        return undef unless $name;

        return $self->parameter($ptype, $name, $def);
    }

    #########################################################################
    #
    # the inspector method for all parameter types
    #
    #  parameters:
    #   none
    #
    #  returns:
    #   the parameter types of all stored parameters
    #
    #  notes:
    #
    #########################################################################

    method all_types()
    {
        my @types;

        foreach my $ptype (@ParameterTypes)
        {
            foreach my $param (sort keys %{$self->$ptype})
            {
                push @types, $self->$ptype->{$param}->{type}
                    if $self->$ptype->{$param}->{type} &&
                      ! $BasicTypes->{$self->$ptype->{$param}->{type}};
            }
        }

        return uniq(sort @types);
    }

    #########################################################################
    #
    # method to retrieve the ID of a parameter
    #
    #  parameters:
    #   $type - the parameter type
    #   $name - the parameter name
    #
    #  returns:
    #   the ID of the parameter
    #
    #  notes:
    #
    #########################################################################

    method id(Str $type, Str $name)
    {
        return $self->$type->{$name} ? 
               $name . ucfirst($type) . 'Param' : 
               undef;
    }

    #########################################################################
    #
    # method to print the openapi yaml
    #
    #  parameters:
    #   $yamlw      - the yaml writer
    #   $indent (o) - the indent
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

        $yamlw->empty_line->line($indent, 'parameters', '');

        foreach my $ptype (sort @ParameterTypes)
        {
            foreach my $param (sort keys %{$self->$ptype})
            {
                # make a copy that can be destroyed step by step
                my $phash = clone($self->$ptype->{$param});

                $yamlw->line($indent + 1, $param . ucfirst($ptype) . 'Param', '')->
                            line($indent + 2, 'name', delete $phash->{name} // $param)->
                            line($indent + 2, 'description', delete $phash->{description})->
                            line($indent + 2, 'example', delete $phash->{example})->
                            line($indent + 2, 'style', delete $phash->{style})->
                            line($indent + 2, 'in', $ptype)->
                            line($indent + 2, 'required', delete $phash->{required} // 'false')->
                            line($indent + 2, 'schema', '');

                # the remaining attributes belong to the type
                my $type = delete $phash->{type} // 'Str';

                if ($type eq 'Str' // $type eq 'string')
                {
                    $yamlw->line($indent + 3, 'type', 'string');

                    foreach my $sattr (keys %$phash)
                    {
                        $yamlw->line($indent + 3, $sattr, $phash->{$sattr});
                    }
                }
                else
                {
                    $yamlw->line($indent + 3, '$ref', "'#/components/schemas/${type}'");
                }
            }
        }

        return $self;
    }

    #########################################################################
    #
    # method to print the parameter definitions (for debugging purposes)
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

    method print()
    {
        print "-" x 80, "\n";
        print "Parameters: \n";
        print "-" x 80, "\n";

        foreach my $ptype (@ParameterTypes)
        {
            print "+" x 30, "\n$ptype\n", "+" x 30, "\n";

            foreach my $param (sort keys %{$self->$ptype})
            {
                print $param;
                print "\n", "~" x 20, "\n";
                print Dumper($self->$ptype->{$param});
            }
        }

        print "-" x 80, "\n";

        return $self;
    }
}

