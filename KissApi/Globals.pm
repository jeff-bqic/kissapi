#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   jeff
#
# Purpose:  the KISS API global vars
#
# Created:  2021/12/09
#
# Update:   $Date: 2022-01-25 11:13:42 +0100 (Di, 25. Jan 2022) $
#
# Revision: $Revision: 200 $
#
# File:     $Id: Globals.pm 200 2022-01-25 10:13:42Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::Globals;

use v5.14;
use strict;
use warnings;

no strict 'refs';
no strict 'subs';

use vars qw( $VERSION @ISA );

($VERSION = '$$Revision: 200 $') =~ s/^\$Revision[:]\s*|\s*\$$//g;

use Exporter;
our @ISA = 'Exporter';
our @EXPORT = qw( @BasicTypes $BasicTypes @ParameterTypes $ParameterTypes @DefaultTypes $TypeAttributes $OpenApiVersion $TypeMap $MaxGetListItems $ParameterOptions $StandardParameterRequirements $StandardErrorResponses $StandardSecurityIds $StandardSecurity @StandardOperations $StandardOperationData );

our @BasicTypes = qw( Str Int Num Bool Date DateTime Time Base64 Binary Enum UUID Map Array Class);

our $BasicTypes = { map { $_ => 1 } @BasicTypes };

our @ParameterTypes = qw( header query path cookie );

our $ParameterTypes = { map { $_ => 1 } @ParameterTypes };

our @DefaultTypes = qw( Error );

our $TypeAttributes =
{
    Str   => '|pattern|',
    Enum  => '|values|',
    Array => '|items|',
};

our $OpenApiVersion = '3.1.0';

our $TypeMap =
{
    Str  => 'string',
    Int  => 'integer',
    Num  => 'number',
    Bool => 'boolean',
};

our $MaxGetListItems = 500;

our $StandardErrorResponses =
{
    400     => 'Bad Request Error',
    401     => 'Unauthorized Error',
    403     => 'Forbidden Error',
    404     => 'Not Found Error',
    406     => 'Not Acceptable Error',
    415     => 'Unsupporrted Media Type Error',
    429     => 'Too Many Requests Error',
    500     => 'Internal Server Error',
    503     => 'Service Unavailable Error',
    default => 'Unxepected Error',
};

our $ParameterOptions =
{
    '?' => 'false',
    '!' => 'true',
};

our $StandardParameterRequirements =
{
    header => 'true',
    query  => 'false',
    path   => 'true',
    cookie => 'false',
};

our $StandardSecurityIds =
{
    basic  => 'BasicAuth',
    apikey => 'ApiKeyAuth',
    bearer => 'BearerAuth',
};

our $StandardSecurity =
{
    apikey =>
    {
        name => 'X-API-KEY',
        in   => 'header',
        type => 'apiKey',
    },
    basic =>
    {
        type   => 'http',
        scheme => 'basic',
    },
    bearer =>
    {
        type         => 'http',
        scheme       => 'bearer',
        bearerFormat => 'JWT',
    },
};

our @StandardOperations = qw( create upcreate getList get update delete );

our $StandardOperationsData =
{
    getList =>
    {
        method      => 'get',
        op_prefix   => 'get',
        responses   => [ 200,           400, 401, 403, 404, 406,      429, 500, 'default' ],
        summary     => 'get all {things}',
        description => 'retrieve a list of all {things}',
        order       => 1,
        pagination  => 1,
        search      => 1,
        unique      => 1,
    },
    create =>
    {
        method      => 'post',
        op_prefix   => 'create',
        responses   => [ 200, 201, 202, 400, 401, 403,      406, 415, 429, 500, 'default' ],
        summary     => 'create one {thing}',
        description => 'create a new {thing}'
    },
    get =>
    {
        method      => 'get',
        op_prefix   => 'get',
        responses   => [ 200,           400, 401, 403, 404, 406,      429, 500, 'default' ],
        summary     => 'get one {thing}',
        description => 'get a certain {thing}'
    },
    upcreate =>
    {
        method      => 'put',
        op_prefix   => 'updateOrCreate',
        responses   => [ 200, 201, 202, 400, 401, 403,      406, 415, 429, 500, 'default' ],
        summary     => 'update or create one {thing}',
        description => 'update an existing {thing} or create a new one'
    },
    update =>
    {
        method      => 'patch',
        op_prefix   => 'update',
        responses   => [ 200,      202, 400, 401, 403, 404, 406, 415, 429, 500, 'default' ],
        summary     => 'update one {thing}',
        description => 'update a certain {thing}'
    },
    delete =>
    {
        method      => 'delete',
        op_prefix   => 'delete',
        responses   => [ 200,           400, 401, 403, 404, 406,      429, 500, 'default' ],
        summary     => 'delete one {thing}',
        description => 'delete a certain {thing}'
    },
};

1;
