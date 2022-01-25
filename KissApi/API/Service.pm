#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API service
#
# Created:  2021/12/16
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: Service.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API::Service;

use Data::Dumper::Concise;
use List::Util qw(uniq);

use KissApi::Globals;
use KissApi::API::Library;
use KissApi::API::Service::Endpoint;

use Moops;

$| = 1;

class KissApi::API::Service 1.0
{
    has name =>
    (
        is       => 'rwp',
        isa      => Str,
        reader   => 'name',
        writer   => '_name',
    );

    has description =>
    (
        is       => 'rwp',
        isa      => Str,
        reader   => 'description',
        writer   => '_description',
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

    lexical_has parameters =>
    (
        is       => 'rwp',
        isa      => HashRef,
        coerce   => 1,
        accessor => \(my $_parameters),
        default  => sub { {} },
    );

    lexical_has endpoints =>
    (
        is       => 'rwp',
        isa      => HashRef[Object],
        coerce   => 1,
        accessor => \(my $_endpoints),
        default  => sub { {} },
    );

    #########################################################################
    #
    # the constructor wrapper
    #
    #  parameters:
    #   @_ - the service name and definition
    #
    #  returns:
    #   the next call in the class hierarchy
    #
    #  notes:
    #   allows for a call just with the service name and definition
    #
    #########################################################################

    around BUILDARGS
    {
        $self->$next(@_ == 2 ? { name => $_[0], def => $_[1] } : { @_ });
    }

    #########################################################################
    #
    # the constructor
    #
    #  parameters:
    #   $args - a hash ref with the parsed service definitions
    #
    #  returns:
    #   the services object
    #
    #  notes:
    #
    #########################################################################

    method BUILD($args = {})
    {
        my $def = $args->{def};

        if ($def)
        {
            # shortcut for the library
            my $lib = KissApi::API::Library->instance;

            foreach my $dkey (keys %$def)
            {
                if ($dkey =~ /^description$/i)
                {
                    # store the description
                    my $description = $def->{$dkey};
                    $description = ">\n" . $description if $description =~ /\n/;

                    $self->_description($description);
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
                else
                {
                    # an endpoint
                    $self->$_endpoints->{$dkey} =
                        KissApi::API::Service::Endpoint->new($dkey, $def->{$dkey});
                }
            }

            # apply the securities, tag(s) and paramters to all endpoints
            $self->$_endpoints->{$_}->apply_tags([$self->name])->apply_securities($self->$_securities)->apply_parameters($self->$_parameters)
                foreach keys %{$self->$_endpoints};
        }
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

        push @types, $self->$_endpoints->{$_}->all_types foreach keys %{$self->$_endpoints};

        return uniq(sort @types);
    }

    #########################################################################
    #
    # apply the given (api) and own securities to all endpoints
    #
    #  parameters:
    #   $securities (o) - the securities to apply (ArrayRef)
    #
    #  returns:
    #   nothing
    #
    #  notes:
    #
    #########################################################################

    method apply_securities(ArrayRef $securities?)
    {
        push @{$self->$_securities}, @$securities if $securities && @$securities >= 0;

        $self->$_securities(uniq($self->$_securities));

        # apply the securities to all endpoints
        $self->$_endpoints->{$_}->apply_securities($self->$_securities)
            foreach keys %{$self->$_endpoints};
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
    #   nothing
    #
    #  notes:
    #
    #########################################################################

    method print_yaml(Object $yamlw, Int $indent?)
    {
        $indent = 0 unless defined($indent) && $indent >= 0;

        $self->$_endpoints->{$_}->print_yaml($yamlw, $indent) foreach sort keys %{$self->$_endpoints};
    }

    #########################################################################
    #
    # method to print the service (for debugging purposes)
    #
    #  parameters:
    #   none
    #
    #  returns:
    #   nothing
    #
    #  notes:
    #
    #########################################################################

    method print
    {
        print "-" x 40, "\nService <";
        print $self->name, ">\n";
        print "-" x 40, "\n";
        print "description: ", $self->description, "\n";
        print "parameters:\n";
        print "    $_: [ ", join(', ', @{$self->$_parameters->{$_}}), " ]\n"
            foreach keys %{$self->$_parameters};
        print "securities: [ ", join(', ', @{$self->$_securities}), " ]\n";
        $self->$_endpoints->{$_}->print foreach sort keys %{$self->$_endpoints};
    }
}
