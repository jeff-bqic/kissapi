#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API Creator
#
# Created:  2021/11/22
#
# Update:   $Date: 2022-01-25 10:45:03 +0100 (Di, 25. Jan 2022) $
#
# Revision: $Revision: 199 $
#
# File:     $Id: Creator.pm 199 2022-01-25 09:45:03Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::Creator;

use File::Slurp;
use File::Path qw(make_path);
use List::Objects::Types -all; #qw(HashObj ArrayObj);
use List::Objects::WithUtils ':all';
use Clone qw(clone);
use Data::Dumper::Concise;
use Lingua::EN::Inflect qw(PL);

use KissApi::Globals;
use KissApi::ApiParser;
use KissApi::TypeParser;
use KissApi::API;
use KissApi::API::Library;
use KissApi::Creator::YamlWriter;

use Moops;

$| = 1;

my $OpenAPIGenerator = 'openapi-generator-cli generate -g <lang> -i <api> -o <path> 2>&1 >/dev/null';

class KissApi::Creator 1.0
{
    lexical_has api =>
    (
        is       => 'rwp',
        isa      => 'KissApi::API',
        accessor => \(my $_api),
        init_arg => undef,
    );

    has api_parser =>
    (
        is       => 'ro',
        isa      => Object,
        reader   => 'api_parser',
        writer   => '_api_parser',
        init_arg => undef,
    );

    has type_parser =>
    (
        is       => 'ro',
        isa      => Object,
        reader   => 'type_parser',
        writer   => '_type_parser',
        init_arg => undef,
    );

    lexical_has paths =>
    (
        is       => 'rwp',
        isa      => HashRef,
        accessor => \(my $_paths),
        default  => sub { {} },
    );

    #########################################################################
    #
    # method to initialize the creator
    #
    #  parameters:
    #   none
    #
    #  returns:
    #   resets the creator, especially the API
    #
    #  notes:
    #
    #########################################################################

    method BUILD
    {
        # the API object

        # the API parser
        $self->_api_parser(KissApi::ApiParser->new());
        $self->api_parser->{_creator} = $self;

        # the types parser
        $self->_type_parser(KissApi::TypeParser->new());
        $self->type_parser->{_type_library} = KissApi::API::Library->instance->types;

        Lingua::EN::Inflect::classical();
    }

	#########################################################################
	#
	# accessor method of the api
	#
	#  parameters:
	#   $api (o) - the parsed api definition
	#
	#  returns:
	#   nothing
	#
	#########################################################################

	method api(HashRef $api?)
	{
        $self->$_api(KissApi::API->new($api)) if $api;

        return $self->$_api;
    }

	#########################################################################
	#
	# method to parse a types file
	#
	#  parameters:
	#   $file - the name of the file to parse
	#
	#  returns:
	#   the object itself
	#
	#########################################################################

	method parse_types(Str $file)
	{
        unless (-e $file)
        {
            print STDERR "cannot find types file <$file>\n";

            exit;
        }

        my $content = File::Slurp::read_file($file);

        $self->type_parser->startrule($content);

        # mark default types as used
        KissApi::API::Library->instance->types->used(@DefaultTypes);

        return $self;
    }

	#########################################################################
	#
	# method to parse an api file
	#
	#  parameters:
	#   $file - the name of the file to parse
	#
	#  returns:
	#   the parsed api
	#
	#########################################################################

	method parse_api(Str $file)
	{
        my $content = File::Slurp::read_file($file);

        $self->api_parser->startrule($content);

        return $self->api;
    }

	#########################################################################
	#
	# method to get a path for the files to produce
	#
	#  parameters:
	#   $type - 'openapi' or programming language
	#
	#  returns:
	#   the requested path
	#
	#########################################################################

	method path(Str $type)
	{
        unless ($self->$_paths->{$type})
        {
            my $api = $self->api;

            $self->$_paths->{$type} = "apis/" . $api->name . '/' . $type;

            File::Path::make_path($self->$_paths->{$type});
        }

        return $self->$_paths->{$type};
    }

	#########################################################################
	#
	# method to generate the name of the openapi yaml file
	#
	#  parameters:
	#   none
	#
	#  returns:
	#   the name of the openapi yaml file including the path
	#
	#########################################################################

	method openapi_yaml_file()
	{
        my $path = $self->path('openapi');

        return $path . "/" . $self->api->name . '.yml';
    }

	#########################################################################
	#
	# method to print the OpenAPI yaml file
	#
	#  parameters:
	#   none
	#
	#  returns:
	#   the object itself for function call concatanations
	#
	#########################################################################

	method print_openapi()
	{
        my $yaml_file = $self->openapi_yaml_file();

        my $yamlw = KissApi::Creator::YamlWriter->new($yaml_file) || die "cannot open file <$yaml_file> for writing";

        $self->api->print_yaml($yamlw);

        print "OpenAPI YAML specification created in <$yaml_file>\n";

        return $self;
    }

	#########################################################################
	#
	# method to print the client libraries in a given programming language
	#
	#  parameters:
	#   $lang - the programming language to use (see openapi-generator-cli)
	#
	#  returns:
	#   the object itself for function call concatanations
	#
	#########################################################################

	method generate_client_libs(Str $lang)
	{
        my $cmd = $OpenAPIGenerator;

        my $ofile = $self->openapi_yaml_file();
        my $lpath = $self->path($lang);

        $cmd =~ s/<path>/$lpath/;
        $cmd =~ s/<api>/$ofile/;
        $cmd =~ s/<lang>/$lang/;

        my $res = system($cmd);

        die "cannot generate client libraries for language <$lang>" if $res;

        print "client libraries for <$lang> created in <$lpath>\n";
        return $self;
    }
}
