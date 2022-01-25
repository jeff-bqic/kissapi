#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API service endpoint
#
# Created:  2021/12/21
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: Endpoint.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API::Service::Endpoint;

use Data::Dumper::Concise;
use Clone qw(clone);
use Lingua::EN::Inflect;
use List::Util qw(uniq);

use KissApi::Globals;
use KissApi::API::Library;
use KissApi::API::Service::Endpoint::Operation;

use Moops;

$| = 1;

class KissApi::API::Service::Endpoint 1.0
{
    lexical_has path =>
    (
        is       => 'rwp',
        isa      => Str,
        accessor => \(my $_path),
        default  => '',
    );

    lexical_has description =>
    (
        is       => 'rwp',
        isa      => Str,
        accessor => \(my $_description),
        default  => '',
    );

    lexical_has securities =>
    (
        is       => 'rwp',
        isa      => ArrayRef[Str],
        coerce   => 1,
        accessor => \(my $_securities),
        default  => sub { [] },
    );

    lexical_has tags =>
    (
        is       => 'rwp',
        isa      => ArrayRef[Str],
        coerce   => 1,
        accessor => \(my $_tags),
        default  => sub { [] },
    );

    lexical_has parameters =>
    (
        is       => 'rwp',
        isa      => HashRef,
        coerce   => 1,
        accessor => \(my $_parameters),
        default  => sub { {} },
    );

    lexical_has operations => 
    (
        is       => 'rwp',
        isa      => HashRef[Object],
        coerce   => 1,
        accessor => \(my $_operations),
        default  => sub { {} },
    );

    lexical_has op_data => 
    (
        is       => 'rwp',
        isa      => HashRef,
        coerce   => 1,
        accessor => \(my $_op_data),
        default  => sub { {} },
    );

    #########################################################################
    #
    # the constructor wrapper
    #
    #  parameters:
    #   @_ - the endpoint path and definition
    #
    #  returns:
    #   the next call in the class hierarchy
    #
    #  notes:
    #   allows for a call just with the endpoint path and definition
    #
    #########################################################################

    around BUILDARGS
    {
        $self->$next(@_ == 2 ? { path => $_[0], def => $_[1] } : { @_ });
    }

    #########################################################################
    #
    # the constructor
    #
    #  parameters:
    #   $args - a hash ref with the parsed endpoint definition
    #
    #  returns:
    #   the endpoint object
    #
    #  notes:
    #
    #########################################################################

    method BUILD($args = {})
    {
        $self->$_path($args->{path});

        my $def = $args->{def};

        if ($def)
        {
            # shortcut for the library
            my $lib = KissApi::API::Library->instance;

            $def->{operations} =
            {
                create   => 1,
                upcreate => 1,
                getList  => 1,
                get      => 1,
                update   => 1,
                delete   => 1,
            } unless $def->{operations};

            # prepare the operation data
            $self->_prepare_op_data;

            foreach my $dkey (keys %$def)
            {
                if ($dkey =~ /^description$/i)
                {
                    # store the description
                    $self->$_description($def->{$dkey});
                }
                elsif ($dkey =~ /^security$/i)
                {
                    # extract the securities
                    push @{$self->$_securities}, $lib->security_schemes->collective_entry(@{$def->{$dkey}});
                }
                elsif ($dkey =~ /^parameters$/i)
                {
                    # extract the parameters
                    my $res = $lib->parameters->collective_entry($def->{$dkey});

                    push @{$self->$_parameters->{$_}}, @{$res->{$_}} foreach keys %$res;
                }
                elsif ($dkey =~ /^operations$/i)
                {
                    $def->{$dkey} =  { map { $_ => 1 } @{$def->{$dkey}} }
                        if ref($def->{$dkey}) eq 'ARRAY';

                    foreach my $op (keys %{$def->{$dkey}})
                    {
                        my $operation = 
                            KissApi::API::Service::Endpoint::Operation->new(
                                $op, $def->{$dkey}->{$op}, $self->$_op_data
                                                                          );
                        $self->$_operations->{$op} = $operation;
                    }
                }
            }
        }
    }

    #########################################################################
    #
    # apply the given (service) and own securities to all operations
    #
    #  parameters:
    #   $securities (o) - the securities to apply (ArrayRef)
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method apply_securities(ArrayRef $securities?)
    {
        push @{$self->$_securities}, @$securities if $securities && @$securities >= 0;

        $self->$_securities(uniq($self->$_securities));

        # apply the securites to the operations too
        $self->$_operations->{$_}->apply_securities($self->$_securities)
            foreach keys %{$self->$_operations};

        return $self;
    }

    #########################################################################
    #
    # apply the given (service) tags
    #
    #  parameters:
    #   $tags - the tags to apply (ArrayRef)
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method apply_tags(ArrayRef $tags?)
    {
        push @{$self->$_tags}, @$tags if $tags && @$tags >= 0;

        $self->$_tags(uniq($self->$_tags));

        # apply the tags to the operations too
        $self->$_operations->{$_}->apply_tags($self->$_tags)
            foreach keys %{$self->$_operations};

        return $self;
    }

    #########################################################################
    #
    # apply the given (service) parameters
    #
    #  parameters:
    #   $parameters - the parameters to apply (HashRef)
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method apply_parameters(HashRef $parameters?)
    {
        push @{$self->$_parameters->{$_}}, @{$parameters->{$_}} foreach keys %$parameters;

        @{$self->$_parameters->{$_}} = uniq(@{$self->$_parameters->{$_}}) foreach keys %{$self->$_parameters};

        # apply the parameters to the operations too
        $self->$_operations->{$_}->apply_parameters($self->$_parameters)
            foreach keys %{$self->$_operations};

        return $self;
    }

    #########################################################################
    #
    # retrieve all (used) types
    #
    #  parameters:
    #   none
    #
    #  returns:
    #   the sorted names (!) of all (used) types
    #
    #  notes:
    #
    #########################################################################

    method all_types
    {
        my @types;

        push @types, $self->$_operations->{$_}->all_types foreach keys %{$self->$_operations};

        return uniq(sort @types);
    }

    #########################################################################
    #
    # method to print the endpoint openapi yaml
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

        my $paths_seen = {};

        foreach my $op (@StandardOperations)
        {
            if ($self->$_operations->{$op})
            {
                my $path = $self->$_operations->{$op}->path;

                $self->$_operations->{$op}->print_yaml($yamlw, $indent, $paths_seen->{$path});

                $paths_seen->{$path} = 1;
            }
        }

        return $self;
    }

    #########################################################################
    #
    # method to print the endpoint (for debugging purposes)
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
        print "*" x 40, "\nEndpoint <";
        print $self->$_path, ">\n";
        print "*" x 40, "\n";
        print "description: ", $self->$_description, "\n";
        print "parameters:\n";
        print "    $_: [ ", join(', ', @{$self->$_parameters->{$_}}), " ]\n"
            foreach keys %{$self->$_parameters};
        print "securities: [ ", join(', ', @{$self->$_securities}), " ]\n";
        print "tags: [ ", join(', ', @{$self->$_tags}), " ]\n";
        print "operations:\n"; 
        foreach my $op (@StandardOperations)
        {
            $self->$_operations->{$op}->print if $self->$_operations->{$op};
        }

        return $self;
    }

    #########################################################################
    #
    # internal method to prepare the endpoint data for the operations
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

    method _prepare_op_data
    {
        $self->$_op_data(Clone::clone($KissApi::Globals::StandardOperationsData));

        # the complete singular ID 
        # remove anything before the first '{' and behind the last '}'
        ($self->$_op_data->{cid} = $self->$_path) =~ s/^[^\{]*\{/{/g;
        $self->$_op_data->{cid} =~ s/\}[^\}]*$/}/g;

        # the complete plural ID
        # replace last {param} by its plural
        ($self->$_op_data->{pid} = $self->$_op_data->{cid}) =~ s/(.*)\{(\w+)\}/$1#$2#/;
        $self->$_op_data->{pid} =~ s/#(\w+)#/Lingua::EN::Inflect::PL($1)/e;

        foreach my $id ('cid', 'pid')
        {
            # replace all {param}'s by the upper case first version
            $self->$_op_data->{$id} =~ s/\{(\w+)\}/ucfirst(${1})/ge;

            # replace all slashes followed by a small letter by the 
            # uppercase letter
            $self->$_op_data->{$id} =~ s/\/([a-z])/\U$1/g;

            # remove all remaining slashes
            $self->$_op_data->{$id} =~ s/\///g;

            # the human readable name
            # replace all capital letters by a spece and the small letter
            ($self->$_op_data->{'hr_' . $id} = lcfirst($self->$_op_data->{$id})) => s/([A-Z])/ $1/g;
            $self->$_op_data->{'hr_' . $id} =~ s/([A-Z])/lc($1)/ge;
        }
        
        # shortcuts for the "thing*s"
        $self->$_op_data->{TheThing}   = ucfirst $self->$_op_data->{cid};
        $self->$_op_data->{TheThings}  = ucfirst $self->$_op_data->{pid};
        $self->$_op_data->{theThing}   = lcfirst $self->$_op_data->{cid};
        $self->$_op_data->{theThings}  = lcfirst $self->$_op_data->{pid};
        ($self->$_op_data->{the_thing} = $self->$_op_data->{theThing}) =~ s/([A-Z])/ \L$1/g;
        ($self->$_op_data->{the_things} = $self->$_op_data->{theThings}) =~ s/([A-Z])/ \L$1/g;

        # shortcut for the library
        my $lib = KissApi::API::Library->instance;

        # retrieve all path parameters
        my @pparams = ($self->$_path =~ /\{(\w+)\}/g);

        foreach my $pparam (@pparams)
        {
            my $id = "${pparam}Id";

            # add id to path parameters
            $lib->parameters->parameter(
                'path',
                {
                    type     => ucfirst($id),
                    name     => $id,
                    required => 'true',
                }
                                       );

            # add to types
            $lib->types->type(
                {
                    used       => 1,
                    TypeName   => ucfirst($id),
                    Parent     => 'UUID',
                    Properties =>
                    {
                        description => "the unique ID of the ${id}"
                    },
                }
                             );
        }

        # prepare the paths for each operation
        foreach my $op ('get', 'getList', 'create')
        {
            $self->$_op_data->{$op}->{path} = 
                ($self->$_path =~ /^\// ? '' : '/') . $self->$_path;
            
            if ($op eq 'getList')
            {
                # the last {param} is replaced by the plural 'params'
                $self->$_op_data->{$op}->{path} =~ s/\{(\w+)\}([^\}]*)$/#$1#$2/;
            }
            elsif ($op eq 'create')
            {
                # the last {param} is replaced by 'param'
                $self->$_op_data->{$op}->{path}    =~ s/\{(\w+)\}([^\}]*)$/$1$2/;
            }

            # all {param}'s are replaced by '#param#/{paramId}'
            $self->$_op_data->{$op}->{path} =~ s/\{(\w+)\}/#$1#\/{${1}Id}/g;
            # all '#param#' are replaced by the pural 'params'
            $self->$_op_data->{$op}->{path} =~ s/#(\w+)#/Lingua::EN::Inflect::PL($1)/ge;
        }

        $self->$_op_data->{update}->{path}   = $self->$_op_data->{get}->{path};
        $self->$_op_data->{delete}->{path}   = $self->$_op_data->{get}->{path};
        $self->$_op_data->{upcreate}->{path} = $self->$_op_data->{create}->{path};

        $self->$_op_data->{create}->{operation_id}   = 
            $self->$_op_data->{create}->{op_prefix} . 
            $self->$_op_data->{TheThing};
        $self->$_op_data->{upcreate}->{operation_id} =
            $self->$_op_data->{upcreate}->{op_prefix} . 
            $self->$_op_data->{TheThing};
        $self->$_op_data->{getList}->{operation_id}  =
            $self->$_op_data->{getList}->{op_prefix} . 
            $self->$_op_data->{TheThings};
        $self->$_op_data->{get}->{operation_id}      =
            $self->$_op_data->{get}->{op_prefix} . 
            $self->$_op_data->{TheThing};
        $self->$_op_data->{update}->{operation_id}   =
            $self->$_op_data->{update}->{op_prefix} . 
            $self->$_op_data->{TheThing};
        $self->$_op_data->{delete}->{operation_id}   =
            $self->$_op_data->{delete}->{op_prefix} . 
            $self->$_op_data->{TheThing};

        return $self;
    }
}
