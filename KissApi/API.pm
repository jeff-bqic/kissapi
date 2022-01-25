#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API 
#
# Created:  2021/11/15
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: API.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API;

use Data::Dumper::Concise;

use KissApi::Globals;
use KissApi::API::Library;
use KissApi::API::Prolog;
use KissApi::API::ServiceCollection;
use KissApi::API::Security;

use Moops;

$| = 1;

class KissApi::API 1.0
{
    has name =>
    (
        is       => 'rwp',
        isa      => Str,
        reader   => 'name',
        writer   => '_name',
        default  => '',
    );

    lexical_has prolog =>
    (
        is       => 'rwp',
        isa      => 'KissApi::API::Prolog',
        accessor => \(my $_prolog),
        init_arg => undef,
    );

    lexical_has service_collection =>
    (
        is       => 'rwp',
        isa      => 'KissApi::API::ServiceCollection',
        accessor => \(my $_service_collection),
        init_arg => undef,
    );

    #########################################################################
    #
    # the constructor
    #
    #  parameters:
    #   $args - a hash ref with the parsed api
    #
    #  returns:
    #   the api
    #
    #  notes:
    #
    #########################################################################

    method BUILD($args = {})
    {
        if ($args && keys %$args)
        {
            # shortcut for the library
            my $lib = KissApi::API::Library->instance;

            $self->_name($args->{ApiName} || $args->{Name});

            $lib->parameters->collective_entry($args->{ParameterDefinitions} || $args->{Parameters});

            $lib->security_schemes->collective_entry(@{$args->{Security}}, @{$args->{security}});

            $self->$_prolog(KissApi::API::Prolog->new($args->{Prolog}));

            $self->$_service_collection(KissApi::API::ServiceCollection->new($args->{Services}));

            # collect all used types
            my @used_types = $lib->parameters->all_types;
            push @used_types, $self->services->all_types;

            # mark them as used
            $lib->types->used($_) foreach @used_types;
        }
    }

    #########################################################################
    #
    # accessor method of the prolog
    #
    #  parameters:
    #   $prolog - the (parsed) prolog data
    #
    #  returns:
    #   nothing
    #
    #  notes:
    #
    #########################################################################

    method prolog(HashRef $prolog?)
    {
        $self->$_prolog(KissApi::API::Prolog->new($prolog)) if $prolog;

        return $self->$_prolog;
    }

    #########################################################################
    #
    # accessor method for a service
    #
    #  parameters:
    #   $def (o) - the (parsed) services hash
    #
    #  returns:
    #   nothing
    #
    #  notes:
    #
    #########################################################################

    method services(HashRef $def?)
    {
        $self->$_service_collection(KissApi::API::ServiceCollection->new($def)) if $def;

        return $self->$_service_collection;
    }

    #########################################################################
    #
    # the method to print the prolog in the yaml file
    #
    #  parameters:
    #   $yamlw - the YAML writer
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method print_yaml(Object $yamlw)
    {
        # shortcut for the library
        my $lib = KissApi::API::Library->instance;

        # the prolog
        $self->prolog->print_yaml($yamlw);

        # the components
        $yamlw->line(0, 'components', '')->empty_line;

        # the security schemes
        $lib->security_schemes->print_yaml($yamlw, 1);

        # the parameters
        $lib->parameters->print_yaml($yamlw, 1);

        # the types (schemas)
        $lib->types->print_yaml($yamlw, 1);

        # the tags
        $self->$_service_collection->print_yaml($yamlw, 0);

        return $self;
    }

    #########################################################################
    #
    # the method to print the API (for debugging purposes)
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
        print "=" x 80, "\nAPI: <", $self->name, ">\n", "=" x 80, "\n";

        $self->$_prolog->print;

        KissApi::API::Library->instance->print;

        $self->$_service_collection->print;

        return $self;
    }
}
