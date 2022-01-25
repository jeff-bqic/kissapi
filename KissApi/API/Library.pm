############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss library (for types, parameters, security schemes)
#
# Created:  2021/12/20
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: Library.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API::Library;

use Data::Dumper::Concise;

use KissApi::API::Library::Types;
use KissApi::API::Library::Parameters;
use KissApi::API::Library::SecuritySchemes;

use Moops;

$| = 1;

class KissApi::API::Library 1.0
{
    has types =>
    (
        is       => 'rwp',
        isa      => 'KissApi::API::Library::Types',
        reader   => 'types',
        writer   => '_types',
    );

    has parameters =>
    (
        is       => 'rwp',
        isa      => 'KissApi::API::Library::Parameters',
        reader   => 'parameters',
        writer   => '_parameters',
    );

    has security_schemes =>
    (
        is       => 'rwp',
        isa      => 'KissApi::API::Library::SecuritySchemes',
        reader   => 'security_schemes',
        writer   => '_security_schemes',
    );

	#########################################################################
	#
	# the method to get the only instance of the class
	#
	#  parameters:
	#   none
	#
	#  returns:
	#   the only instance of KissApi::API::Library
	#
	#  notes:
	#
	#########################################################################

	method instance ($class: @args = undef)
	{
		$class = ref($class) || $class;

		no strict 'refs';

		my $instance = \${"$class\::_instance"};

		return $$instance if defined $$instance;

		# create the highlander instance
		$$instance = $class->new(
            types            => KissApi::API::Library::Types->new,
            parameters       => KissApi::API::Library::Parameters->new,
            security_schemes => KissApi::API::Library::SecuritySchemes->new,
                                );

		return $$instance;
    }

    #########################################################################
    #
    # the method to print the library (for debugging purposes)
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
        print "=" x 80, "\n";
        print "Library: \n";
        print "=" x 80, "\n";
        $self->types->print;
        $self->parameters->print;
        $self->security_schemes->print;
        print "=" x 80, "\n";

        return $self;
    }
}


