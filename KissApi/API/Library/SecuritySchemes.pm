#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API securities schemes library
#
# Created:  2021/12/16
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: SecuritySchemes.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API::Library::SecuritySchemes;

use Data::Dumper::Concise;

use KissApi::Globals;
use KissApi::API::Security;

use Moops;

$| = 1;

class KissApi::API::Library::SecuritySchemes 1.0
{
    lexical_has securities =>
    (
        is       => 'rwp',
        isa      => HashRef[Object],
        accessor => \(my $_securities),
        default  => sub { {} },
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
        return $self->$next({ defs => @_ == 1 ? $_[0] : \@_ });
    }

    #########################################################################
    #
    # the constructor
    #
    #  parameters:
    #   $args (o) - an array ref with security definitons
    #
    #  returns:
    #   the security schemes object
    #
    #  notes:
    #
    #########################################################################

    method BUILD($args?)
    {
        $self->collective_entry($args->{defs}) 
            if $args && $args->{defs} && $#{$args->{defs}} >= 0;
    }

    #########################################################################
    #
    # the method to enter new parameters to the library
    #
    #  parameters:
    #   @args (o) - an array with security definitons
    #
    #  returns:
    #   an array with the IDs of the added security schemes
    #
    #  notes:
    #
    #########################################################################

    method collective_entry(@args?)
    {
        my @res;

        foreach my $sdef (@args)
        {
            my $security = KissApi::API::Security->new($sdef);

            if ($security)
            {
                $self->security($security);

                push @res, $security->id;
            }
        }

        return @res;
    }

    #########################################################################
    #
    # the accessor method for a single security
    #
    #  parameters:
    #   $id           - the id of the security
    #   $security (o) - the security data to store (KissApi::API::Security)
    #
    #  returns:
    #   the security
    #
    #  notes:
    #
    #########################################################################

    multi method security(Str $id, Object $security?)
    {
        $self->$_securities->{$id} = $security if $security;

        return $self->$_securities->{$id};
    }

    #########################################################################
    #
    # mutator method for a single security
    #
    #  parameters:
    #   $security - the security data to store (KissApi::API::Security)
    #
    #  returns:
    #   the security
    #
    #  notes:
    #
    #########################################################################

    multi method security(Object $security)
    {
        $self->$_securities->{$security->id} = $security if $security;

        return $security;
    }

    #########################################################################
    #
    # the inspector method for all securites
    #
    #  parameters:
    #   none
    #
    #  returns:
    #   the (used) securities
    #
    #  notes:
    #
    #########################################################################

    method securities
    {
        return $self->$_securities;
    }

    #########################################################################
    #
    # method to print the openapi yaml part
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

        $yamlw->line($indent, 'securitySchemes', '');

        foreach my $security (sort keys %{$self->$_securities})
        {
            $self->$_securities->{$security}->print_yaml($yamlw, $indent + 1);
        }
        
        return $self;
    }

    #########################################################################
    #
    # method to print the security collection (for debugging purposes)
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
        print "Security Schemes: \n";
        print "-" x 80, "\n";

        foreach my $security (sort keys %{$self->$_securities})
        {
            $self->$_securities->{$security}->print;
        }

        print "-" x 80, "\n";
        
        return $self;
    }
}


