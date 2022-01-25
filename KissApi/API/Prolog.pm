#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API Prolog
#
# Created:  2021/11/15
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: Prolog.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API::Prolog;

use Data::Dumper::Concise;

use KissApi::Globals;

use Moops;

$| = 1;

class KissApi::API::Prolog 1.0
{
    has data =>
    (
        is       => 'rwp',
        isa      => HashRef,
        reader   => 'data',
        writer  => '_data',
    );

    #########################################################################
    #
    # the constructor wrapper
    #
    #  parameters:
    #   @_ - the constructor arguments
    #
    #  returns:
    #   the next call in the class hierarchy
    #
    #  notes:
    #   the method allows for a constructor call just with a hash ref of 
    #   the data
    #
    #########################################################################

    around BUILDARGS
    {
        return $self->$next(@_ == 1 ? { data => $_[0] } : { @_ });
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
        $self->data->{description} = ">\n" . $self->data->{description}
            if $self->data->{description} =~ /\n/;

        $yamlw->line(0, 'openapi', $OpenApiVersion)->
                line(0, 'info', '')->
                    line(1, 'title', $self->data->{title})->
                    line(1, 'version', "'" . $self->data->{version} . "'")->
                    line(1, 'license', $self->data->{license})->
                        line(2, 'name', $self->data->{license}->{name})->
                        line(2, 'url', $self->data->{license}->{url})->
                    line(1, 'contact', $self->data->{contact})->
                        line(2, 'name', $self->data->{contact}->{name})->
                        line(2, 'email', $self->data->{contact}->{email})->
                    line(1, 'description', $self->data->{description})->
                empty_line->
                line(0, 'servers', $self->data->{servers}, 'url')->
                empty_line;
        
        return $self;
    }

    #########################################################################
    #
    # the method to print the prolog (for debugging purposes)
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
        print "Prolog: \n";
        print "-" x 80, "\n";

        print Dumper($self->data);

        print "-" x 80, "\n";

        return $self;
    }
}
