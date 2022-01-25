#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API security
#
# Created:  2021/12/16
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: Security.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API::Security;

use Data::Dumper::Concise;
use Clone qw(clone);

use KissApi::Globals;

use Moops;

$| = 1;

class KissApi::API::Security 1.0
{
    has type =>
    (
        is       => 'rwp',
        isa      => Str,
        reader   => 'type',
        writer   => '_type',
        default  => '',
    );

    has id => 
    (
        is       => 'rwp',
        isa      => Str,
        reader   => 'id',
        writer   => '_id',
        default  => '',
    );

    has data =>
    (
        is       => 'rw',
        isa      => HashRef,
        reader   => 'data',
        writer   => '_data',
        default  => sub { {} },
    );

    #########################################################################
    #
    # the constructor wrapper
    #
    #  parameters:
    #   @_ - a hash with the security definition { <type> => { def } }
    #
    #  returns:
    #   the next call in the class hierarchy
    #
    #  notes:
    #
    #########################################################################

    around BUILDARGS
    {
        my $args = {};

        if (@_ == 1) 
        {
            my $ref = ref($_[0]);
            my $stype;

            if ($ref)
            {
                $stype = (keys %{$_[0]})[0];

                $args =
                {
                    type => lc $stype,
                    id   => ref($_[0]->{$stype}) ?
                            $_[0]->{$stype}->{id} :
                            $_[0]->{$stype} // $StandardSecurityIds->{$stype},
                };
            }
            else
            {
                $args =
                {
                    type => lc $_[0],
                    id   => $StandardSecurityIds->{$_[0]},
                };
            }

            $args->{data} = clone($StandardSecurity->{lc $args->{type}});

            if ($ref && ref($_[0]->{$stype}))
            {
                foreach my $skey (keys %{$_[0]->{$stype}})
                {
                    $args->{data}->{$skey} = $_[0]->{$stype}->{$skey}
                        unless $skey =~ /^(id|type)/;
                }
            }

            $self->$next($args);
        }
        else
        {
            return $self->$next({ @_ });
        }
    }

    #########################################################################
    #
    # method to print the openapi yaml
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
        $yamlw->line($indent, $self->id, '');

        $yamlw->line($indent + 1, $_, $self->data->{$_})
            foreach sort keys %{$self->data};

        return $self;
    }

    #########################################################################
    #
    # method to print the security (for debugging purposes)
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
        print "+" x 30, "\n";
        print $self->id, "\n";
        print "+" x 30, "\n";
        print "type: ", $self->type, "\n";
        print map { "$_: " . $self->data->{$_} . "\n" } sort keys %{$self->data};

        return $self;
    }
}
