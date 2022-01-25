#############################################################################
#
# Copyright (c) by jeff (jeff@bqic.de)
#
# Author:   $Author: jeff $
#
# Purpose:  the Kiss API service endpoint operation
#
# Created:  2021/12/21
#
# Update:   $Date: 2022-01-14 15:49:05 +0100 (Fr, 14. Jan 2022) $
#
# Revision: $Revision: 185 $
#
# File:     $Id: Operation.pm 185 2022-01-14 14:49:05Z jeff $
#
# Notes:
#
#############################################################################

package KissApi::API::Service::Endpoint::Operation;

use Data::Dumper::Concise;
use List::Util qw(uniq any);

use KissApi::Globals;
use KissApi::API::Library;

use Moops;

$| = 1;

class KissApi::API::Service::Endpoint::Operation 1.0
{
    has path =>
    (
        is       => 'rwp',
        isa      => Str,
        reader   => 'path',
        writer   => '_path',
    );

    has request =>
    (
        is       => 'rwp',
        isa      => Str,
        reader   => 'request',
        writer   => '_request',
        default  => '',
    );

    # the 200 response
    has response =>
    (
        is       => 'rwp',
        isa      => Str,
        reader   => 'response',
        writer   => '_response',
        default  => '',
    );

    lexical_has type =>
    (
        is       => 'rwp',
        isa      => Str,
        accessor => \(my $_type),
    );

    lexical_has method =>
    (
        is       => 'rwp',
        isa      => Str,
        accessor => \(my $_method),
    );

    lexical_has operation_id =>
    (
        is       => 'rwp',
        isa      => Str,
        accessor => \(my $_operation_id),
        default  => '',
    );

    lexical_has description =>
    (
        is       => 'rwp',
        isa      => Str,
        accessor => \(my $_description),
        default  => '',
    );

    lexical_has summary =>
    (
        is       => 'rwp',
        isa      => Str,
        accessor => \(my $_summary),
        default  => sub { [] },
    );

    lexical_has tags =>
    (
        is       => 'rwp',
        isa      => ArrayRef[Str],
        coerce   => 1,
        accessor => \(my $_tags),
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

    lexical_has securities =>
    (
        is       => 'rwp',
        isa      => ArrayRef[Str],
        coerce   => 1,
        accessor => \(my $_securities),
        default  => sub { [] },
    );

    lexical_has responses => 
    (
        is       => 'rwp',
        isa      => ArrayRef[Object],
        coerce   => 1,
        accessor => \(my $_responses),
        default  => sub { [] },
    );

    lexical_has opdata => 
    (
        is       => 'rwp',
        isa      => HashRef
        coerce   => 1,
        accessor => \(my $_opdata),
        default  => sub { {} },
    );

    #########################################################################
    #
    # the constructor wrapper
    #
    #  parameters:
    #   @_ - the operation type and definition (could just be '1' for 
    #        the standard) and endpoint specific operations' data
    #
    #  returns:
    #   the next call in the class hierarchy
    #
    #  notes:
    #   allows for a call just with the operation type and definition
    #
    #########################################################################

    around BUILDARGS
    {
        $self->$next(@_ == 3 ? { type => $_[0], def => $_[1], opdata => $_[2], } : { @_ });
    }

    #########################################################################
    #
    # the constructor
    #
    #  parameters:
    #   $args - a hash ref with 
    #           {
    #               def    => # the parsed definition of the operation
    #               opdata => # the endpoint specific operations' data
    #           }
    #
    #  returns:
    #   the operation object
    #
    #  notes:
    #
    #########################################################################

    method BUILD($args = {})
    {
        # shortcut for the operations data
        my $opdata = $args->{opdata};

        # shortcut for the operation specific data
        my $opsd = $opdata->{$args->{type}};

        # the operation's definition data
        my $def = ref($args->{def}) ?
                  { %$opsd, %{$args->{def}} } :
                  $opsd;

        # store reference of opdata
        $self->$_opdata($opdata);

        if ($def)
        {
            # set defaults
            foreach my $t ('thing', 'things')
            {
                $def->{description} =~ s/\{$t\}/$opdata->{"the_${t}"}/g;
                $def->{summary}     =~ s/\{$t\}/$opdata->{"the_${t}"}/g;
            }

            $self->_path($def->{path});
            $self->$_type($args->{type});
            $self->$_method($def->{method});
            $self->$_operation_id($def->{operation_id});
            $self->$_description($def->{description});
            $self->$_summary($def->{summary});
            push @{$self->$_responses}, @{$def->{responses}};
            $self->_request($opdata->{TheThing}) if $def->{method} =~ /^p/;

            # extract the path parameters
            my @pparams = ($opsd->{path} =~ /\{(\w+)\}/g);
            push @{$self->$_parameters->{path}}, @pparams if $#pparams >= 0;

            # shortcut for the library
            my $lib = KissApi::API::Library->instance;

            if (ref($def) eq 'HASH')
            {
                foreach my $dkey (keys %$def)
                {
                    if ($dkey =~ /^operation_?id$/i)
                    {
                        # override the default operation ID
                        $self->$_operation_id($def->{$dkey});
                    }
                    elsif ($dkey =~ /^description$/i)
                    {
                        # override the default description
                        $self->$_description($def->{$dkey});
                    }
                    elsif ($dkey =~ /^summary$/i)
                    {
                        # override the default summary
                        $self->$_summary($def->{$dkey});
                    }
                    elsif ($dkey =~ /^parameters$/i)
                    {
                        # extract the parameters
                        my $res = $lib->parameters->collective_entry($def->{$dkey});

                        push @{$self->$_parameters->{$_}}, @{$res->{$_}} foreach keys %$res;
                    }
                    elsif ($dkey =~ /^security$/i)
                    {
                        # extract the securities
                        push @{$self->$_securities}, $lib->security_schemes->collective_entry(@{$def->{$dkey}});
                    }
                    elsif ($dkey =~ /^pagination$/i)
                    {
                        if ($def->{$dkey})
                        {
                            foreach my $pp ('Page', 'Limit', 'Last', 'Total')
                            {
                                $lib->parameters->parameter(
                                    'query', 
                                    "pagination${pp}", 
                                    {
                                        type     => "Pagination${pp}",
                                        name     => "pagination${pp}",
                                        required => 'false',
                                    }
                                                           );

                                push @{$self->$_parameters->{query}}, "pagination${pp}";
                                
                                # mark the type as used
                                $lib->types->used("Pagination${pp}");
                            }
                        }
                    }
                    elsif ($dkey =~ /^search(_?for)?$/i)
                    {
                        if ($def->{$dkey})
                        {
                            $lib->parameters->parameter(
                                'query', 
                                "searchFor", 
                                {
                                    type     => "SearchFor",
                                    name     => "searchFor",
                                    required => 'false',
                                }
                                                       );

                            push @{$self->$_parameters->{query}}, "searchFor";
                                
                            # mark the type as used
                            $lib->types->used("SearchFor");
                        }
                    }
                    elsif ($dkey =~ /^order(_?by)?$/i)
                    {
                        if ($def->{$dkey})
                        {
                            $lib->parameters->parameter(
                                'query', 
                                "orderBy", 
                                {
                                    type     => "OrderBy",
                                    name     => "orderBy",
                                    required => 'false',
                                }
                                                       );

                            push @{$self->$_parameters->{query}}, "orderBy";
                                
                            # mark the type as used
                            $lib->types->used("OrderBy");
                        }
                    }
                    elsif ($dkey =~ /^(request|response)$/i)
                    {
                        my $tname = ucfirst($self->$_operation_id) . ucfirst($dkey);

                        # create a request or response type
                        my $rtype =
                        {
                            used        => 1,
                            Description => $self->$_description || "the $opdata->{the_thing} $dkey",
                            TypeName    => $tname,
                            Parent      => 'Class',
                        };

                        $rtype->{Properties}->{$_}->{Parent} = $def->{$dkey}->{$_}
                            foreach keys %{$def->{$dkey}};

                        # store the type in the type library
                        $lib->types->type($rtype);

                        # store the request/response type
                        $dkey = '_' . $dkey;
                        $self->$dkey($tname);
                    }
                    elsif ($dkey =~ /^responses$/i)
                    {
                        @{$self->$_responses} = @{$def->{$dkey}};

                        if (! $def->{response})
                        {
                            if (grep { /^20[01]$/ } @{$def->{$dkey}})
                            {
                                if ($self->$_method =~ /^p/)
                                {
                                    my $rtype = 
                                    {
                                        used        => 1,
                                        Description => "the $opdata->{the_thing} ID",
                                        TypeName    => $opdata->{TheThing} . "Id",
                                        Parent      => 'UUID',
                                    };

                                    $lib->types->type($rtype);
                                }
                                elsif ($args->{type} eq 'get')
                                {
                                    $lib->types->used($opdata->{TheThing});
                                }
                                elsif ($args->{type} eq 'getList')
                                {
                                    # create a type for the list of {thing}s
                                    my $ratype = 
                                    {
                                        used        => 1,
                                        Description => "list of $opdata->{the_things}",
                                        TypeName    => $opdata->{TheThings},
                                        Parent      => 'Array',
                                        Properties  => 
                                        {
                                            items =>
                                            {
                                                Parent     => $opdata->{TheThing},
                                                Properties =>
                                                {
                                                    min    => 0,
                                                    max    => $MaxGetListItems,
                                                    unique => $def->{unique},
                                                }
                                            },
                                        },
                                    };

                                    # store the type in the type library
                                    $lib->types->type($ratype);

                                    # create the response type
                                    my $rtype =
                                    {
                                        used        => 1,
                                        Description => "$opdata->{the_things}",
                                        TypeName    => ucfirst($self->$_operation_id) . 'Response',
                                        Parent      => 'Class',
                                        Properties  => 
                                        {
                                            $opdata->{theThings} =>
                                            {
                                                title  => '',
                                                Parent => $opdata->{TheThings},
                                            }
                                        },
                                        AttributesOrder => [ $opdata->{theThings} ],
                                    };

                                    if ($def->{pagination})
                                    {
                                        $rtype->{Properties}->{pagination} =
                                        {
                                            title  => '',
                                            Parent => 'Pagination',
                                        };

                                        push @{$rtype->{AttributesOrder}}, 'pagination';
                                    }

                                    # store the type in the type library
                                    $lib->types->type($rtype);

                                    # store the response type
                                    $self->_response($rtype->{TypeName});
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    #########################################################################
    #
    # apply the given (endpoint) securities
    #
    #  parameters:
    #   $securities - the securities to apply (ArrayRef)
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method apply_securities(ArrayRef $securities?)
    {
        push @{$self->$_securities}, @$securities if $securities && @$securities >= 0;

        $self->$_securities(uniq($self->$_securities));

        return $self;
    }

    #########################################################################
    #
    # apply the given (endpoint) tags
    #
    #  parameters:
    #   $tags - the tags to apply (ArrayRef)
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method apply_tags(ArrayRef $tags?)
    {
        push @{$self->$_tags}, @$tags if $tags && @$tags >= 0;

        $self->$_tags(uniq($self->$_tags));

        return $self;
    }

    #########################################################################
    #
    # apply the given (endpoint) parameters
    #
    #  parameters:
    #   $parameters - the parameters to apply (HashRef)
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method apply_parameters(HashRef $parameters?)
    {
        push @{$self->$_parameters->{$_}}, @{$parameters->{$_}} foreach keys %$parameters;

        @{$self->$_parameters->{$_}} = uniq(@{$self->$_parameters->{$_}}) foreach keys %{$self->$_parameters};

        return $self;
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

        # TODO

        return uniq(sort @types);
    }

    #########################################################################
    #
    # method to print the operation openapi yaml
    #
    #  parameters:
    #   $yamlw         - the yaml writer
    #   $indent (o)    - the indent
    #   $path_seen (o) - flag to ommit printing the path (default: false)
    #
    #  returns:
    #   the object itself for function call concatanations
    #
    #  notes:
    #
    #########################################################################

    method print_yaml(Object $yamlw, Int $indent?, Bool $path_seen?)
    {
        # shortcut for the library
        my $lib = KissApi::API::Library->instance;

        $indent = 0 unless defined($indent) && $indent >= 0;

        # the path
        $yamlw->line($indent, "'" . $self->path . "'", "") unless $path_seen;

        # the intro
        $yamlw->line($indent + 1, $self->$_method, '')->
                    line($indent + 2, 'tags', $self->$_tags, '')->
                    line($indent + 2, 'operationId', $self->$_operation_id)->
                    line($indent + 2, 'summary', defined $self->$_summary ? $self->$_summary : undef)->
                    line($indent + 2, 'description', defined $self->$_description ? $self->$_description : undef);

        # the securities
        my @securities = ();
        
        push @securities, $lib->security_schemes->security($_)->id . ': []'
            foreach @{$self->$_securities};

        $yamlw->line($indent + 2, 'security', \@securities, '');

        # the parameters
        my @params;

        foreach my $ptype (@ParameterTypes)
        {
            push @params, "'#/components/parameters/" . $lib->parameters->id($ptype, $_) . "'"
                foreach @{$self->$_parameters->{$ptype}};
        }

        $yamlw->line($indent + 2, 'parameters', \@params, '$ref') if @params;

        # create (POST), upcreate (PUT) and update (PATCH) require request data
        if ($self->$_method =~ /^p/)
        {
            $yamlw->line($indent + 2, 'requestBody', '')->
                        line($indent + 3, 'required', 'true')->
                        line($indent + 3, 'content', '')->
                            line($indent + 4, 'application/json', '');

            $yamlw->line($indent + 5, 'schema', '')->
                        line($indent + 6, '$ref', "'#/components/schemas/" .$self->request . "'");
        }

        # the responses
        if ($self->$_responses)
        {
            $yamlw->line($indent + 2, 'responses', '');

            # the responses
            foreach my $response (@{$self->$_responses})
            {
                $yamlw->line($indent + 3, "'$response'", '');

                my $description = $self->$_description || 'OK';
                my $schema = undef;

                if ($response =~ /^20[01]$/)
                {
                    if ($self->response)
                    {
                        $schema = "'#/components/schemas/" . $self->response . "'";
                    }
                    else
                    {
                        if ($self->$_method =~ /^p/)
                        {
                            # post, put and patch return a {thing}Id
                            $description = "the " . $self->$_opdata->{the_thing} . " ID" unless $description ne 'OK';
                            $schema = "'#/components/schemas/" . $self->$_opdata->{TheThing} . "Id'";
                        }
                        elsif ($self->$_type eq 'get')
                        {
                            # returns a {thing}
                            $description = "the " . $self->$_opdata->{the_thing} unless $description ne 'OK';
                            $schema = "'#/components/schemas/" . $self->$_opdata->{TheThing} . "'";
                        }
                        elsif ($self->$_type eq 'delete')
                        {
                            # returns nothing
                        }
                    }
                }
                elsif ($response == 202)
                {
#                    $yamlw->line($indent + 4, 'description', $description);
                }
                else
                {
                    $description = $StandardErrorResponses->{$response};
                    $schema = "'#/components/schemas/Error'";
                }

                $yamlw->line($indent + 4, 'description', $description);

                $yamlw->line($indent + 4, 'content', '')->
                            line($indent + 5, 'application/json', '')->
                                line($indent + 6, 'schema', '')->
                                    line($indent + 7, '$ref', $schema)
                    if $schema;
            }
        }

        return $self;
    }

    #########################################################################
    #
    # method to print the operation (for debugging purposes)
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
        print "~" x 30, "\n";
        print uc $self->$_method, " ", $self->path, "\n";
        print "~" x 30, "\n";
        print "type: ", $self->$_type, "\n";
        print "operationId: ", $self->$_operation_id, "\n";
        print "description: ", $self->$_description, "\n";
        print "summary: ", $self->$_summary, "\n";
        print "securities: [ ", join(', ', @{$self->$_securities}), " ]\n";
        print "tags: [ ", join(', ', @{$self->$_tags}), " ]\n";
        print "parameters:\n";
        print "    $_: [ ", join(', ', @{$self->$_parameters->{$_}}), " ]\n"
            foreach keys %{$self->$_parameters};
        print "request: ", $self->request, "\n";
        print "response (200): ", $self->response, "\n";
        print "responses: [", join(', ', @{$self->$_responses}), " ]\n";

        return $self;
    }
}

