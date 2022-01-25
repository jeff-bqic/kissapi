#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API types
#
# Created:  2021/12/09
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: Types.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::Types;

use DateTime::Tiny;
use Date::Tiny;
use Time::Tiny;
use Data::UUID;

use Moose::Util::TypeConstraints;

use Moops;

library KissApi::Types
    extends Types::Standard
    declares
        Amount,
        BIC,
        Country,
        Currency,
        Date,
        DateTime,
        Email,
        Gender,
        Language,
        NonNegativeInt,
        Time,
        URI,
        UUID
{
    declare 'Amount' =>
        as 'Num',
        where { $_ =~ /^[-+]?\d{1,20}(.\d{1,8})?$/ },
        message { "Not a valid amount" };

    coerce 'Amount' =>
        from 'Str',
        via { 0+$_ };
        
    declare 'BIC' =>
        as 'Str',
        where { $_ =~ /^[A-Z]{4}[A-Z]{2}[A-Z0-9]{2}([A-Z0-9]{3})?$/ },
        message { "Not a valid BIC" };

    declare 'Country' =>
        as 'Str',
        where { $_ =~ /^([A-Z]{2})$/ },
        message { "Country must be an ISO 3166-1 alpha2 code" };

     coerce 'Country' =>
         from 'Str',
         via { uc($_) };

    declare 'Currency' =>
        as 'Str',
        where { $_ =~ /^([A-Z]{3})$/ },
        message { "Currency must be an ISO 4217 alpha3 code" };

     coerce 'Currency' =>
         from 'Str',
         via { uc($_) };

    declare 'Date' =>
        as 'Object',
        where { $_->isa('Date::Tiny') },
        message { "Date must be of format 'YYYY-MM-DD'" };

    coerce 'Date' =>
        from 'Str',
        via { Date::Tiny->from_string($_) };

    declare 'DateTime' =>
        as 'Object',
        where { $_->isa('DateTime::Tiny') },
        message { "DateTime must be of format 'YYYY-MM-DDTHH:mm:ss'" };

    coerce 'DateTime' =>
        from 'Str',
        via { $_ =~ s/ /T/; DateTime::Tiny->from_string($_); };

    declare 'Email' =>
        as 'Str',
        where { $_ =~ /^[a-z0-9!#'$%&*+\/=?^_‘\{\|\}~-]+(?:\.[a-z0-9!#'$%&*+\/=?^_‘{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/i },
        message { "Not a valid e-mail address" };

    declare 'Gender' =>
        as enum([qw{ F M O }]),
        message { "Gender is an Enum of [F(emale) M(ale) O(ther)]" };

    coerce 'Gender' =>
        from 'Str',
        via { uc(substr($_, 0, 1)) };

    declare 'IBAN' =>
        as 'Str',
        where { $_ =~ /^([A-Z]{2}[ \-]?[0-9]{2})(?=(?:[ \-]?[A-Z0-9]){9,30}$)((?:[ \-]?[A-Z0-9]{3,5}){2,7})([ \-]?[A-Z0-9]{1,3})?$/ },
        message { "Not a valid IBAN" };

    declare 'Language' =>
        as 'Str',
        where { $_ =~ /^([A-Z]{2})$/ },
        message { "Language must be an ISO 639-1 alpha2 code" };

     coerce 'Language' =>
         from 'Str',
         via { uc($_) };

    declare 'NonNegativeInt' =>
        as 'Int',
        where { $_ >= 0 },
        message { "NonNegativeInt must be greater then or equal to zero" };

    coerce 'NonNegativeInt' =>
        from 'Str',
        via { 0+$_ };
        
    declare 'PhoneNumber' =>
        as 'Str',
        where { $_ =~ /^[\+]?[(]?[0-9]{0,4}[)]?[-\s\.]?[0-9-\s]+$/ },
        message { "Not a valid phone number" };

    declare 'Time' =>
        as 'Object',
        where { $_->isa('Time::Tiny') },
        message { "Time must be of format 'HH:mm:ss'" };

    coerce 'Time' =>
        from 'Str',
        via { Time::Tiny->from_string($_) };

    declare 'URI' =>
        as 'Str',
        where { $_ =~ /^([-a-z0-9+.]+):(?:\/\/(?:((?:[-a-z0-9._~!'$&()*+,;=:]|%[0-9a-f]{2})*)@)?((?:[-a-z0-9._~!'$&()*+,;=]|%[0-9a-f]{2})*)(?::(\d*))?(\/(?:[-a-z0-9._~!'$&()*+,;=:@\/]|%[0-9a-f]{2})*)?|(\/?(?:[-a-z0-9._~!'$&()*+,;=:@]|%[0-9a-f]{2})+(?:[-a-z0-9._~!'$&()*+,;=:@\/]|%[0-9a-f]{2})*)?)(?:\?((?:[-a-z0-9._~!\$\&\(\)\*\+,;=:\/?@]|%[0-9a-f]{2})*))?(?:#((?:[-a-z0-9._~!'$&()*+,;=:\/?@]|%[0-9a-f]{2})*))?$/i },
        message { "Not a valid URI" };

    declare 'UUID' =>
        as 'Str',
        where { $_ =~ /^[0-9a-f]{8}(?:-[0-9a-f]{4}){3}-[0-9a-f]{12}$/i },
        message { "not a valid UUID" };
};

1;
