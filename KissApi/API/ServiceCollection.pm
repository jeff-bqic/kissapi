#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API service collection
#
# Created:  2021/12/16
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: ServiceCollection.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API::ServiceCollection;

use Data::Dumper::Concise;
use List::Util qw(uniq);

use KissApi::Globals;
use KissApi::API::Service;

use Moops;

$| = 1;

class KissApi::API::ServiceCollection 1.0
{
    lexical_has services =>
    (
        is       => 'rwp',
        isa      => HashRef[Object],
        accessor => \(my $_services),
        default  => sub { {} },
    );

    #########################################################################
    #
    # the constructor
    #
    #  parameters:
    #   $args - a hash ref with the parsed services
    #
    #  returns:
    #   the service collection object
    #
    #  notes:
    #
    #########################################################################

    method BUILD($args = {})
    {
        $self->service($_, $args->{$_}) foreach keys %$args;
    }

    #########################################################################
    #
    # the accessor method for a single service
    #
    #  parameters:
    #   $sname   - the name of the service
    #   $def (o) - the defintion of the service
    #
    #  returns:
    #   the KissApi::API::Service or undef
    #
    #  notes:
    #
    #########################################################################

    method service(Str $sname, HashRef $def?)
    {
        $self->$_services->{$sname} = KissApi::API::Service->new($sname, $def) if $def;

        return $self->$_services->{$sname};
    }

    #########################################################################
    #
    # the inspector method for all services
    #
    #  parameters:
    #   none
    #
    #  returns:
    #   all services
    #
    #  notes:
    #
    #########################################################################

    method services
    {
        return $self->$_services;
    }

    #########################################################################
    #
    # the inspector method for all service names
    #
    #  parameters:
    #   none
    #
    #  returns:
    #   the sorted names (!) of all services
    #
    #  notes:
    #
    #########################################################################

    method service_names
    {
        return sort keys %{$self->$_services};
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

        push @types, $self->$_services->{$_}->all_types foreach $self->service_names;

        return uniq(sort @types);
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

        $yamlw->empty_line->line($indent, 'tags', '');

        $yamlw->line($indent + 1, '- name', $self->$_services->{$_}->name)->
                    line($indent + 2, 'description', $self->$_services->{$_}->description)
            foreach $self->service_names;

        $yamlw->empty_line->line($indent, 'paths', '');

        $self->$_services->{$_}->print_yaml($yamlw, $indent + 1)
            foreach $self->service_names;
        
        return $self;
    }

    #########################################################################
    #
    # method to print the parameter collection (for debugging purposes)
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
        $self->$_services->{$_}->print foreach $self->service_names;
        
        return $self;
    }
}


