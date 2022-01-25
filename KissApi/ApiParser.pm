#
# This parser was generated with
# Parse::RecDescent version 1.967015
#

package KissApi::ApiParser;
use KissApi::ParserRuntime;
{ my $ERRORS;


package KissApi::ParserRuntime::KissApi::ApiParser;
use strict;
use vars qw($skip $AUTOLOAD  );
@KissApi::ParserRuntime::KissApi::ApiParser::ISA = ();
$skip = '\\s*';


    use Data::Dumper::Concise;
    use File::Slurp;

    $::RD_ERRORS = 1;
    $::RD_WARN = 3;
    $::RD_HINT = 1;

    $::RD_AUTOACTION = q { $return = $#item == 1 ? { $item[0] => $item[1] } : { %item } };
;


{
local $SIG{__WARN__} = sub {0};
# PRETEND TO BE IN KissApi::ParserRuntime NAMESPACE
*KissApi::ParserRuntime::KissApi::ApiParser::AUTOLOAD   = sub
{
    no strict 'refs';

    ${"AUTOLOAD"} =~ s/^KissApi::ParserRuntime::KissApi::ApiParser/KissApi::ParserRuntime/;
    goto &{${"AUTOLOAD"}};
}
}

push @KissApi::ParserRuntime::KissApi::ApiParser::ISA, 'KissApi::ParserRuntime';
# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::API
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"API"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [API]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{API},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/api:?/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/api:?/i ApiName OpenBrace ApiPart CloseBrace]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{API},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{API});
        %item = (__RULE__ => q{API});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/api:?/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{API},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:api:?)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [ApiName]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{API},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{ApiName})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::ApiName($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [ApiName]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{API},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [ApiName]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{API},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ApiName}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying subrule: [OpenBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{API},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{OpenBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::OpenBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [OpenBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{API},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [OpenBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{API},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{OpenBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [ApiPart]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{API},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{ApiPart})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::ApiPart, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [ApiPart]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{API},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [ApiPart]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{API},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ApiPart(s)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{API},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::CloseBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [CloseBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{API},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [CloseBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{API},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CloseBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{API},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    my $api = {};

    $api->{ApiName} = $item{ApiName};

    foreach my $apipart (@{$item{'ApiPart(s)'}})
    {
        my $key = (keys %$apipart)[0];

        if ($key =~ /^(Prolog|Security)$/i)
        {
            $api->{ucfirst $key} = $apipart->{$key};
        }
        elsif ($key eq 'ParameterDefinitions')
        {
            foreach my $pd (@{$apipart->{$key}})
            {
                my $pdkey = (keys %$pd)[0];

                $api->{ParameterDefinitions}->{$pdkey} = $pd->{$pdkey};
            }
        }
        else
        {
            $api->{Services}->{$key} = $apipart->{$key};
        }
    }

    if ($::debug > 1)
    {
        print "=" x 80, "\n";
        print "parsed API\n";
        print "=" x 80, "\n";

        print Dumper $api;
        print "=" x 80, "\n\n\n";

    }

    $thisparser->{_creator}->api($api);
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/api:?/i ApiName OpenBrace ApiPart CloseBrace]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{API},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{API},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{API},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{API},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{API},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::AnyString
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"AnyString"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [AnyString]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{AnyString},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{SingleQuotedString, or DoubleQuotedString, or String});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [SingleQuotedString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{AnyString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{AnyString});
        %item = (__RULE__ => q{AnyString});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [SingleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{AnyString},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::SingleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [SingleQuotedString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{AnyString},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [SingleQuotedString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AnyString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{SingleQuotedString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [SingleQuotedString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AnyString},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [DoubleQuotedString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{AnyString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{AnyString});
        %item = (__RULE__ => q{AnyString});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [DoubleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{AnyString},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::DoubleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [DoubleQuotedString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{AnyString},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [DoubleQuotedString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AnyString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{DoubleQuotedString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [DoubleQuotedString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AnyString},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [String]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{AnyString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{AnyString});
        %item = (__RULE__ => q{AnyString});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [String]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{AnyString},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::String($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [String]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{AnyString},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [String]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AnyString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{String}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [String]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AnyString},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{AnyString},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{AnyString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{AnyString},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{AnyString},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::ApiName
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ApiName"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [ApiName]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{ApiName},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Identifier});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Identifier]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ApiName},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ApiName});
        %item = (__RULE__ => q{ApiName});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Identifier]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ApiName},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Identifier($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Identifier]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ApiName},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Identifier]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ApiName},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Identifier}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Identifier]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ApiName},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{ApiName},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{ApiName},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{ApiName},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{ApiName},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::ApiPart
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ApiPart"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [ApiPart]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{ApiPart},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Prolog, or ParameterDefinitions, or Service, or Security});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Prolog]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ApiPart});
        %item = (__RULE__ => q{ApiPart});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Prolog]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ApiPart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Prolog($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Prolog]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ApiPart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Prolog]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Prolog}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Prolog]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [ParameterDefinitions]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{ApiPart});
        %item = (__RULE__ => q{ApiPart});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [ParameterDefinitions]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ApiPart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::ParameterDefinitions($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [ParameterDefinitions]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ApiPart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [ParameterDefinitions]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ParameterDefinitions}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [ParameterDefinitions]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Service]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{ApiPart});
        %item = (__RULE__ => q{ApiPart});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Service]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ApiPart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Service($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Service]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ApiPart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Service]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Service}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Service]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Security]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{ApiPart});
        %item = (__RULE__ => q{ApiPart});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Security]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ApiPart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Security($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Security]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ApiPart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Security]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Security}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Security]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{ApiPart},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{ApiPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{ApiPart},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{ApiPart},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Array
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Array"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Array},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{OpenBracket});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [OpenBracket ArrayItem CloseBracket]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Array});
        %item = (__RULE__ => q{Array});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [OpenBracket]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Array},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::OpenBracket($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [OpenBracket]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Array},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [OpenBracket]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{OpenBracket}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [ArrayItem]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Array},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{ArrayItem})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::ArrayItem, 0, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [ArrayItem]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Array},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [ArrayItem]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ArrayItem(s?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBracket]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Array},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBracket})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::CloseBracket($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [CloseBracket]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Array},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [CloseBracket]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CloseBracket}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    push @{$item[2]}, $item[3] unless $item[3] eq ']';
    $return = $item[2];
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [OpenBracket ArrayItem CloseBracket]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Array},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Array},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Array},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Array},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::ArrayItem
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ArrayItem"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [ArrayItem]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{ArrayItem},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{FinalArrayItem});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [FinalArrayItem Comma]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ArrayItem});
        %item = (__RULE__ => q{ArrayItem});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [FinalArrayItem]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ArrayItem},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::FinalArrayItem($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [FinalArrayItem]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ArrayItem},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [FinalArrayItem]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{FinalArrayItem}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Comma]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ArrayItem},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Comma})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::Comma, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Comma]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ArrayItem},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Comma]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Comma(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = $item[1];
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [FinalArrayItem Comma]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{ArrayItem},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{ArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{ArrayItem},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{ArrayItem},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::ArrayKeyValuePair
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ArrayKeyValuePair"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [ArrayKeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{ArrayKeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Key});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Key ArrayValue]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ArrayKeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ArrayKeyValuePair});
        %item = (__RULE__ => q{ArrayKeyValuePair});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Key]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ArrayKeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Key($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Key]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ArrayKeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Key]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayKeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Key}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying subrule: [ArrayValue]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ArrayKeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{ArrayValue})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::ArrayValue($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [ArrayValue]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ArrayKeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [ArrayValue]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayKeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ArrayValue}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayKeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = { $item[1] => $item[2] };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Key ArrayValue]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayKeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{ArrayKeyValuePair},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{ArrayKeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{ArrayKeyValuePair},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{ArrayKeyValuePair},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::ArrayString
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ArrayString"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [ArrayString]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{ArrayString},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        local $skip = defined($skip) ? $skip : $KissApi::ParserRuntime::skip;
        KissApi::ParserRuntime::_trace(q{Trying production: [<skip: '\s*'> SingleQuotedString, or DoubleQuotedString, or /[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~]+/i]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ArrayString});
        %item = (__RULE__ => q{ArrayString});
        my $repcount = 0;


        

        KissApi::ParserRuntime::_trace(q{Trying directive: [<skip: '\s*'>]},
                    KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { my $oldskip = $skip; $skip= '\s*'; $oldskip };
        if (defined($_tok))
        {
            KissApi::ParserRuntime::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match directive>>},
                        KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_ArrayString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ArrayString},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{SingleQuotedString, or DoubleQuotedString, or /[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~]+/i})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_1_of_rule_ArrayString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_ArrayString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ArrayString},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_ArrayString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_ArrayString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = $item[2];
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [<skip: '\s*'> SingleQuotedString, or DoubleQuotedString, or /[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~]+/i]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{ArrayString},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{ArrayString},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{ArrayString},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::ArrayValue
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ArrayValue"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [ArrayValue]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Colon});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ArrayValue});
        %item = (__RULE__ => q{ArrayValue});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_ArrayValue]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_1_of_rule_ArrayValue($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_ArrayValue]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ArrayValue},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_ArrayValue]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_ArrayValue}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{ArrayValue});
        %item = (__RULE__ => q{ArrayValue});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_2_of_rule_ArrayValue]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_2_of_rule_ArrayValue($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_2_of_rule_ArrayValue]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ArrayValue},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_2_of_rule_ArrayValue]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_2_of_rule_ArrayValue}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{ArrayValue});
        %item = (__RULE__ => q{ArrayValue});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_3_of_rule_ArrayValue]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_3_of_rule_ArrayValue($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_3_of_rule_ArrayValue]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ArrayValue},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_3_of_rule_ArrayValue]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_3_of_rule_ArrayValue}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = $item[2] || $item[1];
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{ArrayValue},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{ArrayValue},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{ArrayValue},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::At
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"At"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [At]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{At},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'@'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['@']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{At},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{At});
        %item = (__RULE__ => q{At});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['@']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{At},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\@/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['@']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{At},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{At},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{At},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{At},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{At},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::CloseBrace
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"CloseBrace"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [CloseBrace]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{CloseBrace},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'\}'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['\}']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{CloseBrace},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{CloseBrace});
        %item = (__RULE__ => q{CloseBrace});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['\}']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{CloseBrace},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\}/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['\}']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{CloseBrace},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{CloseBrace},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{CloseBrace},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{CloseBrace},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{CloseBrace},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::CloseBracket
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"CloseBracket"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [CloseBracket]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{CloseBracket},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{']'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [']']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{CloseBracket},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{CloseBracket});
        %item = (__RULE__ => q{CloseBracket});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [']']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{CloseBracket},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\]/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [']']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{CloseBracket},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{CloseBracket},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{CloseBracket},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{CloseBracket},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{CloseBracket},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Colon
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Colon"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Colon},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{':'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [':']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Colon},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Colon});
        %item = (__RULE__ => q{Colon});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [':']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Colon},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\:/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [':']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Colon},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Colon},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Colon},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Colon},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Colon},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Comma
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Comma"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Comma]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Comma},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{','});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [',']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Comma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Comma});
        %item = (__RULE__ => q{Comma});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [',']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Comma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\,/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [',']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Comma},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Comma},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Comma},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Comma},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Comma},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Comment
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Comment"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Comment]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Comment},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{SingleLineComment, or MultiLineComment});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [SingleLineComment]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Comment});
        %item = (__RULE__ => q{Comment});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [SingleLineComment]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Comment},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::SingleLineComment, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [SingleLineComment]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Comment},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [SingleLineComment]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{SingleLineComment(s)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{>>Matched production: [SingleLineComment]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Comment},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [MultiLineComment]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{Comment});
        %item = (__RULE__ => q{Comment});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [MultiLineComment]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Comment},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::MultiLineComment($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [MultiLineComment]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Comment},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [MultiLineComment]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{MultiLineComment}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [MultiLineComment]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Comment},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Comment},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Comment},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Comment},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Description
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Description"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Description]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Description},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/description:?/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/description:?/i AnyString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Description},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Description});
        %item = (__RULE__ => q{Description});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/description:?/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Description},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:description:?)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [AnyString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Description},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{AnyString})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::AnyString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [AnyString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Description},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [AnyString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Description},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{AnyString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Description},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = { description => $item[2] };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/description:?/i AnyString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Description},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Description},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Description},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Description},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Description},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Dot
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Dot"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Dot]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Dot},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'.'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['.']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Dot},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Dot});
        %item = (__RULE__ => q{Dot});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['.']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Dot},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\./)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['.']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Dot},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Dot},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Dot},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Dot},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Dot},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::DoubleQuote
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"DoubleQuote"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [DoubleQuote]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{DoubleQuote},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'"'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['"']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{DoubleQuote},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{DoubleQuote});
        %item = (__RULE__ => q{DoubleQuote});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['"']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{DoubleQuote},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\"/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['"']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{DoubleQuote},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{DoubleQuote},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{DoubleQuote},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{DoubleQuote},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{DoubleQuote},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::DoubleQuotedString
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"DoubleQuotedString"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [DoubleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{DoubleQuotedString},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{DoubleQuote});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [DoubleQuote /(\\\\"|\\n|[^"])*/ DoubleQuote]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{DoubleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{DoubleQuotedString});
        %item = (__RULE__ => q{DoubleQuotedString});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [DoubleQuote]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{DoubleQuotedString},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::DoubleQuote($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [DoubleQuote]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{DoubleQuotedString},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [DoubleQuote]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{DoubleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{DoubleQuote}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying terminal: [/(\\\\"|\\n|[^"])*/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{DoubleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/(\\\\"|\\n|[^"])*/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:(\\"|\n|[^"])*)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [DoubleQuote]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{DoubleQuotedString},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{DoubleQuote})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::DoubleQuote($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [DoubleQuote]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{DoubleQuotedString},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [DoubleQuote]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{DoubleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{DoubleQuote}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{DoubleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = $item[2];
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [DoubleQuote /(\\\\"|\\n|[^"])*/ DoubleQuote]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{DoubleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{DoubleQuotedString},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{DoubleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{DoubleQuotedString},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{DoubleQuotedString},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::EOF
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"EOF"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [EOF]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{EOF},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/^\\Z/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/^\\Z/]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{EOF},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{EOF});
        %item = (__RULE__ => q{EOF});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/^\\Z/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{EOF},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^\Z)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/^\\Z/]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EOF},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{EOF},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{EOF},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{EOF},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{EOF},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::EndPoint
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"EndPoint"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [EndPoint]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{EndPoint},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Identifier});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Identifier Colon OpenBrace EndPointPart CloseBrace]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{EndPoint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{EndPoint});
        %item = (__RULE__ => q{EndPoint});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Identifier]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EndPoint},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Identifier($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Identifier]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EndPoint},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Identifier]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPoint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Identifier}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EndPoint},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Colon})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::Colon, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EndPoint},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Colon]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPoint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [OpenBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EndPoint},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{OpenBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::OpenBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [OpenBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EndPoint},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [OpenBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPoint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{OpenBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [EndPointPart]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EndPoint},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{EndPointPart})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::EndPointPart, 0, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [EndPointPart]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EndPoint},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [EndPointPart]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPoint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{EndPointPart(s?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EndPoint},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::CloseBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [CloseBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EndPoint},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [CloseBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPoint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CloseBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPoint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    my $endpoint = {};

    foreach my $epp (@{$item[4]})
    {
        foreach my $k (keys %$epp)
        {
            $endpoint->{$k} = $epp->{$k};
        }
    }

    $return = { $item[1] => $endpoint };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Identifier Colon OpenBrace EndPointPart CloseBrace]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPoint},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{EndPoint},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{EndPoint},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{EndPoint},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{EndPoint},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::EndPointPart
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"EndPointPart"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [EndPointPart]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{EndPointPart},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Description, or Security, or Parameters, or Operations});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Description]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{EndPointPart});
        %item = (__RULE__ => q{EndPointPart});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Description]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EndPointPart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Description($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Description]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EndPointPart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Description]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Description}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Description]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Security]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{EndPointPart});
        %item = (__RULE__ => q{EndPointPart});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Security]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EndPointPart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Security($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Security]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EndPointPart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Security]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Security}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Security]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Parameters]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{EndPointPart});
        %item = (__RULE__ => q{EndPointPart});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Parameters]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EndPointPart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Parameters($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Parameters]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EndPointPart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Parameters]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Parameters}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Parameters]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Operations]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{EndPointPart});
        %item = (__RULE__ => q{EndPointPart});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Operations]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EndPointPart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Operations($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Operations]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EndPointPart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Operations]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Operations}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = $item[1];
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Operations]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{EndPointPart},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{EndPointPart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{EndPointPart},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{EndPointPart},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Equals
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Equals"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Equals]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Equals},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'='});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['=']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Equals},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Equals});
        %item = (__RULE__ => q{Equals});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['=']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Equals},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\=/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['=']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Equals},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Equals},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Equals},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Equals},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Equals},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Filename
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Filename"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Filename]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Filename},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/[^<>:;,?"*|]+/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/[^<>:;,?"*|]+/]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Filename},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Filename});
        %item = (__RULE__ => q{Filename});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[^<>:;,?"*|]+/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Filename},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[^<>:;,?"*|]+)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/[^<>:;,?"*|]+/]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Filename},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Filename},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Filename},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Filename},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Filename},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::FinalArrayItem
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"FinalArrayItem"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [FinalArrayItem]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{FinalArrayItem},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{ArrayKeyValuePair, or Hash, or Array, or ArrayString});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [ArrayKeyValuePair]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{FinalArrayItem});
        %item = (__RULE__ => q{FinalArrayItem});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [ArrayKeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{FinalArrayItem},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::ArrayKeyValuePair($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [ArrayKeyValuePair]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{FinalArrayItem},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [ArrayKeyValuePair]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ArrayKeyValuePair}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [ArrayKeyValuePair]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Hash]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{FinalArrayItem});
        %item = (__RULE__ => q{FinalArrayItem});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Hash]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{FinalArrayItem},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Hash($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Hash]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{FinalArrayItem},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Hash]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Hash}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Hash]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Array]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{FinalArrayItem});
        %item = (__RULE__ => q{FinalArrayItem});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{FinalArrayItem},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Array]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{FinalArrayItem},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Array]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Array}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Array]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [ArrayString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{FinalArrayItem});
        %item = (__RULE__ => q{FinalArrayItem});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [ArrayString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{FinalArrayItem},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::ArrayString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [ArrayString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{FinalArrayItem},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [ArrayString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ArrayString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [ArrayString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{FinalArrayItem},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{FinalArrayItem},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{FinalArrayItem},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Hash
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Hash"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Hash]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Hash},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{OpenBrace});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [OpenBrace KeyValuePair CloseBrace]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Hash});
        %item = (__RULE__ => q{Hash});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [OpenBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Hash},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::OpenBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [OpenBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Hash},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [OpenBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{OpenBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Hash},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{KeyValuePair})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::KeyValuePair, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [KeyValuePair]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Hash},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [KeyValuePair]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{KeyValuePair(s)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Hash},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::CloseBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [CloseBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Hash},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [CloseBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CloseBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    my $res = {};

    foreach my $kv (@{$item[2]})
    {
        foreach my $k (keys %$kv)
        {
            $res->{$k} = $kv->{$k};
        }
    }

    $return = $res;
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [OpenBrace KeyValuePair CloseBrace]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Hash},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Hash},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Hash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Hash},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Hash},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::HeaderParameters
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"HeaderParameters"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [HeaderParameters]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{HeaderParameters},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/header:?/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/header:?/i Array]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{HeaderParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{HeaderParameters});
        %item = (__RULE__ => q{HeaderParameters});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/header:?/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{HeaderParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:header:?)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{HeaderParameters},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Array})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Array]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{HeaderParameters},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Array]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{HeaderParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Array}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{HeaderParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = { header => $item[2] };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/header:?/i Array]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{HeaderParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{HeaderParameters},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{HeaderParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{HeaderParameters},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{HeaderParameters},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Identifier
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Identifier"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Identifier]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Identifier},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/[\\/\{a-z][a-z0-9_\\/\{\}?!]*/i, or SingleQuotedString, or DoubleQuotedString});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/[\\/\{a-z][a-z0-9_\\/\{\}?!]*/i]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Identifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Identifier});
        %item = (__RULE__ => q{Identifier});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[\\/\{a-z][a-z0-9_\\/\{\}?!]*/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Identifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[\/{a-z][a-z0-9_\/{}?!]*)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/[\\/\{a-z][a-z0-9_\\/\{\}?!]*/i]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Identifier},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [SingleQuotedString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Identifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{Identifier});
        %item = (__RULE__ => q{Identifier});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [SingleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Identifier},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::SingleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [SingleQuotedString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Identifier},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [SingleQuotedString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Identifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{SingleQuotedString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [SingleQuotedString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Identifier},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [DoubleQuotedString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Identifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{Identifier});
        %item = (__RULE__ => q{Identifier});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [DoubleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Identifier},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::DoubleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [DoubleQuotedString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Identifier},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [DoubleQuotedString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Identifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{DoubleQuotedString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [DoubleQuotedString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Identifier},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Identifier},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Identifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Identifier},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Identifier},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Include
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Include"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Include]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Include},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'@include'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['@include' /[<"]/ Filename /[>"]/]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Include},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Include});
        %item = (__RULE__ => q{Include});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['@include']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Include},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\@include/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[<"]/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Include},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/[<"]/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[<"])/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Filename]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Include},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Filename})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Filename($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Filename]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Include},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Filename]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Include},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Filename}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[>"]/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Include},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/[>"]/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[>"])/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Include},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    print STDERR "include found <$item[3]>\n" if $::debug > 1;

    $text = read_file($item[3]) . $text
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['@include' /[<"]/ Filename /[>"]/]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Include},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Include},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Include},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Include},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Include},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Integer
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Integer"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Integer]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Integer},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/[-+]?(\\d+|Infinite)/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/[-+]?(\\d+|Infinite)/ <reject: $item[1] eq ''>]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Integer},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Integer});
        %item = (__RULE__ => q{Integer});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[-+]?(\\d+|Infinite)/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Integer},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[-+]?(\d+|Infinite))/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        

        KissApi::ParserRuntime::_trace(q{Trying directive: [<reject: $item[1] eq ''>]},
                    KissApi::ParserRuntime::_tracefirst($text),
                      q{Integer},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { ( $item[1] eq '') ? undef : 1 };
        if (defined($_tok))
        {
            KissApi::ParserRuntime::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match directive>>},
                        KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Integer},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = $item[1];
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/[-+]?(\\d+|Infinite)/ <reject: $item[1] eq ''>]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Integer},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Integer},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Integer},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Integer},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Integer},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Key
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Key"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Key]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Key},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Identifier, or SingleQuotedString, or DoubleQuotedString});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Identifier]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Key});
        %item = (__RULE__ => q{Key});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Identifier]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Key},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Identifier($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Identifier]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Key},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Identifier]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Identifier}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Identifier]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Key},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [SingleQuotedString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{Key});
        %item = (__RULE__ => q{Key});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [SingleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Key},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::SingleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [SingleQuotedString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Key},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [SingleQuotedString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{SingleQuotedString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [SingleQuotedString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Key},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [DoubleQuotedString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{Key});
        %item = (__RULE__ => q{Key});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [DoubleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Key},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::DoubleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [DoubleQuotedString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Key},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [DoubleQuotedString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{DoubleQuotedString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [DoubleQuotedString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Key},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Key},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Key},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Key},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::KeyValuePair
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"KeyValuePair"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Key});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Key Value Comma]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{KeyValuePair});
        %item = (__RULE__ => q{KeyValuePair});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Key]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Key($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Key]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Key]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Key}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Value]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Value})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Value($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Value]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Value]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Value}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Comma]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Comma})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::Comma, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Comma]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Comma]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Comma(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    if (ref($item[2]) eq 'HASH')
    {
        my ($pid, $popt) = $item[1] =~ /^([^!?]+)([!?])?$/;

        if ($popt)
        {
            $item[1] = $pid;
            $item[2]->{required} = $popt eq '!' ?
                                   'true' :
                                   $popt eq '?' ?
                                   'false' :
                                   undef;
        }
    }

    $return = { $item[1] => $item[2] };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Key Value Comma]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{KeyValuePair},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{KeyValuePair},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{KeyValuePair},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Minus
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Minus"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Minus]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Minus},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'-'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['-']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Minus},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Minus});
        %item = (__RULE__ => q{Minus});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['-']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Minus},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\-/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['-']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Minus},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Minus},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Minus},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Minus},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Minus},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::MultiLineComment
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"MultiLineComment"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [MultiLineComment]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{MultiLineComment},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'/*'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['/*' m\{((?! \\*/ | /\\* ).)*\}sx '*/']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{MultiLineComment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{MultiLineComment});
        %item = (__RULE__ => q{MultiLineComment});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['/*']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{MultiLineComment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\/\*/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying terminal: [m\{((?! \\*/ | /\\* ).)*\}sx]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{MultiLineComment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{m\{((?! \\*/ | /\\* ).)*\}sx})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m{\A(?:((?! \*/ | /\* ).)*)}sx)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying terminal: ['*/']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{MultiLineComment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{'*/'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\*\//)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['/*' m\{((?! \\*/ | /\\* ).)*\}sx '*/']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{MultiLineComment},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{MultiLineComment},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{MultiLineComment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{MultiLineComment},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{MultiLineComment},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::NewLine
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"NewLine"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [NewLine]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{NewLine},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'\\n'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['\\n']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{NewLine},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{NewLine});
        %item = (__RULE__ => q{NewLine});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['\\n']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{NewLine},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "\n"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['\\n']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{NewLine},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{NewLine},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{NewLine},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{NewLine},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{NewLine},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Number
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Number"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Number]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Number},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/[+-]?((\\d*(.\\d+)?)|Infinite)/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/[+-]?((\\d*(.\\d+)?)|Infinite)/ <reject: $item[1] eq ''>]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Number},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Number});
        %item = (__RULE__ => q{Number});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[+-]?((\\d*(.\\d+)?)|Infinite)/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Number},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[+-]?((\d*(.\d+)?)|Infinite))/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        

        KissApi::ParserRuntime::_trace(q{Trying directive: [<reject: $item[1] eq ''>]},
                    KissApi::ParserRuntime::_tracefirst($text),
                      q{Number},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { ( $item[1] eq '') ? undef : 1 };
        if (defined($_tok))
        {
            KissApi::ParserRuntime::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match directive>>},
                        KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Number},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = $item[1];
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/[+-]?((\\d*(.\\d+)?)|Infinite)/ <reject: $item[1] eq ''>]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Number},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Number},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Number},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Number},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Number},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::OpenBrace
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"OpenBrace"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [OpenBrace]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{OpenBrace},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'\{'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['\{']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{OpenBrace},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{OpenBrace});
        %item = (__RULE__ => q{OpenBrace});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['\{']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{OpenBrace},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\{/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['\{']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{OpenBrace},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{OpenBrace},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{OpenBrace},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{OpenBrace},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{OpenBrace},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::OpenBracket
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"OpenBracket"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [OpenBracket]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{OpenBracket},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'['});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['[']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{OpenBracket},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{OpenBracket});
        %item = (__RULE__ => q{OpenBracket});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['[']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{OpenBracket},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\[/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['[']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{OpenBracket},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{OpenBracket},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{OpenBracket},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{OpenBracket},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{OpenBracket},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Operations
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Operations"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Operations]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Operations},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/operations:?/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/operations:?/i Array]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Operations},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Operations});
        %item = (__RULE__ => q{Operations});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/operations:?/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Operations},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:operations:?)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Operations},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Array})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Array]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Operations},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Array]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Operations},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Array}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Operations},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    my $ops = {};

    foreach my $op (@{$item[2]})
    {
        if (ref($op))
        {
            my ($key, $value) = %$op;

            $ops->{$key} = $value;
        }
        else
        {
            my ($rop, $opattr) = $op =~ /([^\(\)]+)(?:\(([PSOU]*)\))?/i;
            my @opattrs = split(//, $opattr);

            if ($#opattrs >= 0)
            {
                foreach my $opattr (@opattrs)
                {
                    $ops->{$rop}->{pagination} = 1 if uc($opattr) eq 'P';
                    $ops->{$rop}->{search}     = 1 if uc($opattr) eq 'S';
                    $ops->{$rop}->{order}      = 1 if uc($opattr) eq 'O';
                    $ops->{$rop}->{unique}     = 1 if uc($opattr) eq 'U';
                }
            }
            else
            {
                $ops->{$op} = 1;
            }
        }
    }

    $return = { operations => $ops };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/operations:?/i Array]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Operations},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Operations},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Operations},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Operations},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Operations},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::ParameterDefinition
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ParameterDefinition"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [ParameterDefinition]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{ParameterDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/(header|query|cookie):?/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/(header|query|cookie):?/i Array]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ParameterDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ParameterDefinition});
        %item = (__RULE__ => q{ParameterDefinition});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/(header|query|cookie):?/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{ParameterDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:(header|query|cookie):?)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ParameterDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Array})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Array]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ParameterDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Array]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParameterDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Array}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParameterDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $item[1] =~ s/:$//;

    my $pdef = {};

    foreach my $p (@{$item[2]})
    {
        my ($pname, $opt);

        if (ref($p))
        {
            my $pkey = (keys %$p)[0];

            ($pname, $opt) = $pkey =~ /([^?!]+)([?!])?/;

            $pdef->{$pname} = $p->{$pkey};
        }
        else
        {
            ($pname, $opt) = $p =~ /([^?!]+)([?!])?/;

            $pdef->{$pname} = 
            { 
                type => 'Str', 
                name => $pname, 
            };
        }

        $pdef->{$pname}->{required} = $opt eq '!' ? 
                                      'true' : 
                                      $opt eq '?' ?
                                      'false' :
                                      undef,
    }

    $return = { $item[1] => $pdef };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/(header|query|cookie):?/i Array]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParameterDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{ParameterDefinition},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{ParameterDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{ParameterDefinition},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{ParameterDefinition},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::ParameterDefinitions
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ParameterDefinitions"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [ParameterDefinitions]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{ParameterDefinitions},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/parameters:?/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/parameters:?/i OpenBrace ParameterDefinition CloseBrace]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ParameterDefinitions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ParameterDefinitions});
        %item = (__RULE__ => q{ParameterDefinitions});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/parameters:?/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{ParameterDefinitions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:parameters:?)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [OpenBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ParameterDefinitions},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{OpenBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::OpenBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [OpenBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ParameterDefinitions},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [OpenBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParameterDefinitions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{OpenBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [ParameterDefinition]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ParameterDefinitions},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{ParameterDefinition})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::ParameterDefinition, 0, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [ParameterDefinition]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ParameterDefinitions},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [ParameterDefinition]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParameterDefinitions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ParameterDefinition(s?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ParameterDefinitions},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::CloseBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [CloseBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ParameterDefinitions},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [CloseBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParameterDefinitions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CloseBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParameterDefinitions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = { ParameterDefinitions => $item[3] };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/parameters:?/i OpenBrace ParameterDefinition CloseBrace]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParameterDefinitions},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{ParameterDefinitions},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{ParameterDefinitions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{ParameterDefinitions},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{ParameterDefinitions},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Parameters
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Parameters"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Parameters]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Parameters},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/parameters:?/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/parameters:?/i OpenBrace ParametersArray CloseBrace]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Parameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Parameters});
        %item = (__RULE__ => q{Parameters});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/parameters:?/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Parameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:parameters:?)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [OpenBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Parameters},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{OpenBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::OpenBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [OpenBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Parameters},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [OpenBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Parameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{OpenBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [ParametersArray]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Parameters},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{ParametersArray})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::ParametersArray, 0, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [ParametersArray]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Parameters},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [ParametersArray]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Parameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ParametersArray(s?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Parameters},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::CloseBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [CloseBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Parameters},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [CloseBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Parameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CloseBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Parameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    my $parameters = {};

    foreach my $h (@{$item[3]})
    {
        foreach my $k (keys %$h)
        {
            $parameters->{$k} = $h->{$k};
        }
    }

    $return = { parameters => $parameters };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/parameters:?/i OpenBrace ParametersArray CloseBrace]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Parameters},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Parameters},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Parameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Parameters},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Parameters},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::ParametersArray
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ParametersArray"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [ParametersArray]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{ParametersArray},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/(header|path|query|cookie)\\s*:?/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/(header|path|query|cookie)\\s*:?/i Array]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ParametersArray},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ParametersArray});
        %item = (__RULE__ => q{ParametersArray});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/(header|path|query|cookie)\\s*:?/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{ParametersArray},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:(header|path|query|cookie)\s*:?)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ParametersArray},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Array})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Array]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ParametersArray},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Array]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParametersArray},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Array}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParametersArray},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $item[1] =~ s/\s*:\s*$//;

    $return = { $item[1] => $item[2] };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/(header|path|query|cookie)\\s*:?/i Array]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParametersArray},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{ParametersArray},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{ParametersArray},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{ParametersArray},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{ParametersArray},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Plus
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Plus"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Plus]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Plus},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'+'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['+']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Plus},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Plus});
        %item = (__RULE__ => q{Plus});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['+']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Plus},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\+/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['+']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Plus},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Plus},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Plus},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Plus},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Plus},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Prolog
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Prolog"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Prolog]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Prolog},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/prolog:?/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/prolog:?/i OpenBrace KeyValuePair CloseBrace]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Prolog},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Prolog});
        %item = (__RULE__ => q{Prolog});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/prolog:?/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Prolog},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:prolog:?)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [OpenBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Prolog},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{OpenBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::OpenBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [OpenBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Prolog},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [OpenBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Prolog},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{OpenBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Prolog},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{KeyValuePair})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::KeyValuePair, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [KeyValuePair]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Prolog},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [KeyValuePair]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Prolog},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{KeyValuePair(s)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Prolog},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::CloseBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [CloseBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Prolog},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [CloseBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Prolog},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CloseBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Prolog},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    my $res = {};

    foreach my $kv (@{$item[3]})
    {
        foreach my $k (keys %$kv)
        {
            $res->{$k} = $kv->{$k};
        }
    }

    $return = { Prolog => $res };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/prolog:?/i OpenBrace KeyValuePair CloseBrace]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Prolog},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Prolog},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Prolog},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Prolog},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Prolog},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::QueryParameters
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"QueryParameters"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [QueryParameters]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{QueryParameters},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/query:?/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/query:?/i Array]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{QueryParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{QueryParameters});
        %item = (__RULE__ => q{QueryParameters});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/query:?/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{QueryParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:query:?)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{QueryParameters},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Array})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Array]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{QueryParameters},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Array]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{QueryParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Array}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{QueryParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = { query => $item[2] };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/query:?/i Array]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{QueryParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{QueryParameters},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{QueryParameters},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{QueryParameters},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{QueryParameters},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Security
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Security"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Security]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Security},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/(security|securities):?/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/(security|securities):?/i Array]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Security},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Security});
        %item = (__RULE__ => q{Security});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/(security|securities):?/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Security},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:(security|securities):?)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Security},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Array})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Array]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Security},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Array]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Security},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Array}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Security},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = { security => $item[2] };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/(security|securities):?/i Array]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Security},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Security},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Security},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Security},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Security},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Service
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Service"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Service]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Service},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Identifier});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Identifier Colon OpenBrace Description, or Parameters, or Security, or EndPoint CloseBrace]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Service});
        %item = (__RULE__ => q{Service});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Identifier]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Service},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Identifier($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Identifier]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Service},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Identifier]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Identifier}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Service},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Colon})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::Colon, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Service},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Colon]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [OpenBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Service},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{OpenBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::OpenBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [OpenBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Service},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [OpenBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{OpenBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Description, or Parameters, or Security, or EndPoint]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Service},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Description, or Parameters, or Security, or EndPoint})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_1_of_rule_Service, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Description, or Parameters, or Security, or EndPoint]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Service},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [_alternation_1_of_production_1_of_rule_Service]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_Service(s)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Service},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::CloseBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [CloseBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Service},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [CloseBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CloseBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    my $service = {};

    foreach my $ep (@{$item[4]})
    {
        foreach my $k (keys %$ep)
        {
            $service->{$k} = $ep->{$k};
        }
    }

    $return = { $item[1] => $service };
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Identifier Colon OpenBrace Description, or Parameters, or Security, or EndPoint CloseBrace]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Service},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Service},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Service},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Service},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::SingleLineComment
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"SingleLineComment"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [SingleLineComment]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{SingleLineComment},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/[#]|\\/\\//});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/[#]|\\/\\// /[^\\n]*/]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{SingleLineComment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{SingleLineComment});
        %item = (__RULE__ => q{SingleLineComment});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[#]|\\/\\//]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{SingleLineComment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[#]|\/\/)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[^\\n]*/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{SingleLineComment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/[^\\n]*/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[^\n]*)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/[#]|\\/\\// /[^\\n]*/]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{SingleLineComment},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{SingleLineComment},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{SingleLineComment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{SingleLineComment},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{SingleLineComment},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::SingleQuote
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"SingleQuote"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [SingleQuote]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{SingleQuote},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/'/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/'/]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{SingleQuote},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{SingleQuote});
        %item = (__RULE__ => q{SingleQuote});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/'/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{SingleQuote},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:')/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/'/]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{SingleQuote},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{SingleQuote},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{SingleQuote},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{SingleQuote},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{SingleQuote},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::SingleQuotedString
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"SingleQuotedString"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [SingleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{SingleQuotedString},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{SingleQuote});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [SingleQuote /(\\\\'|\\n|[^'])*/ SingleQuote]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{SingleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{SingleQuotedString});
        %item = (__RULE__ => q{SingleQuotedString});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [SingleQuote]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{SingleQuotedString},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::SingleQuote($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [SingleQuote]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{SingleQuotedString},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [SingleQuote]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{SingleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{SingleQuote}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying terminal: [/(\\\\'|\\n|[^'])*/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{SingleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/(\\\\'|\\n|[^'])*/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:(\\'|\n|[^'])*)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [SingleQuote]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{SingleQuotedString},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{SingleQuote})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::SingleQuote($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [SingleQuote]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{SingleQuotedString},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [SingleQuote]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{SingleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{SingleQuote}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{SingleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = $item[2];
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [SingleQuote /(\\\\'|\\n|[^'])*/ SingleQuote]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{SingleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{SingleQuotedString},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{SingleQuotedString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{SingleQuotedString},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{SingleQuotedString},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Slash
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Slash"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Slash]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Slash},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'/'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['/']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Slash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Slash});
        %item = (__RULE__ => q{Slash});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['/']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Slash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\//)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['/']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Slash},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Slash},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Slash},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Slash},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Slash},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::String
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"String"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [String]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{String},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        local $skip = defined($skip) ? $skip : $KissApi::ParserRuntime::skip;
        KissApi::ParserRuntime::_trace(q{Trying production: [<skip: '\s*'> /[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~ \\t]+/i]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{String},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{String});
        %item = (__RULE__ => q{String});
        my $repcount = 0;


        

        KissApi::ParserRuntime::_trace(q{Trying directive: [<skip: '\s*'>]},
                    KissApi::ParserRuntime::_tracefirst($text),
                      q{String},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { my $oldskip = $skip; $skip= '\s*'; $oldskip };
        if (defined($_tok))
        {
            KissApi::ParserRuntime::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match directive>>},
                        KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~ \\t]+/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{String},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~ \\t]+/i})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[-!#$%&()*+.\/0-9:;<=>?\@A-Z^_`\|~ \t]+)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{String},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $item[2] =~ s/[,\s]*$//;

    $return = $item[2];
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [<skip: '\s*'> /[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~ \\t]+/i]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{String},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{String},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{String},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{String},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{String},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::TypeInclude
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"TypeInclude"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [TypeInclude]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{TypeInclude},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'@types'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['@types' /[<"]/ Filename /[>"]/]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{TypeInclude},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{TypeInclude});
        %item = (__RULE__ => q{TypeInclude});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['@types']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeInclude},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\@types/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            KissApi::ParserRuntime::_trace(qq{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[<"]/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeInclude},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/[<"]/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[<"])/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Filename]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{TypeInclude},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Filename})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Filename($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Filename]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{TypeInclude},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Filename]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeInclude},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Filename}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[>"]/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeInclude},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/[>"]/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[>"])/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeInclude},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    print STDERR "type include found <$item[3]>\n" if $::debug > 1;

    $thisparser->{_creator}->parse_types($item[3]);
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['@types' /[<"]/ Filename /[>"]/]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeInclude},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{TypeInclude},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{TypeInclude},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{TypeInclude},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{TypeInclude},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::Value
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Value"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Value]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Colon});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Value});
        %item = (__RULE__ => q{Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_Value]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_1_of_rule_Value($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_Value]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_Value]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_Value}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{Value});
        %item = (__RULE__ => q{Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_2_of_rule_Value]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_2_of_rule_Value($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_2_of_rule_Value]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_2_of_rule_Value]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_2_of_rule_Value}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{Value});
        %item = (__RULE__ => q{Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_3_of_rule_Value]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_3_of_rule_Value($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_3_of_rule_Value]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_3_of_rule_Value]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_3_of_rule_Value}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = $item[2] || $item[1];
};
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{Value},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{Value},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Value},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_1_of_rule_ArrayString
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_ArrayString"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_ArrayString]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_ArrayString},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{SingleQuotedString, or DoubleQuotedString, or /[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~]+/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [SingleQuotedString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_ArrayString});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_ArrayString});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [SingleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_ArrayString},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::SingleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [SingleQuotedString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_ArrayString},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [SingleQuotedString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{SingleQuotedString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [SingleQuotedString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [DoubleQuotedString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_ArrayString});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_ArrayString});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [DoubleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_ArrayString},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::DoubleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [DoubleQuotedString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_ArrayString},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [DoubleQuotedString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{DoubleQuotedString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [DoubleQuotedString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~]+/i]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_ArrayString});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_ArrayString});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~]+/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[-!#$%&()*+.\/0-9:;<=>?\@A-Z^_`\|~]+)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~]+/i]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_ArrayString},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_ArrayString},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_1_of_rule_ArrayValue
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_ArrayValue"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_ArrayValue]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Colon});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon Hash]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_ArrayValue});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_ArrayValue});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::Colon, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_ArrayValue},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Colon]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Hash]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Hash})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Hash($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Hash]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_ArrayValue},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Hash]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Hash}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon Hash]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_ArrayValue},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_ArrayValue},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_ArrayValue},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_1_of_rule_Service
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_Service"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_Service]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_Service},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Description, or Parameters, or Security, or EndPoint});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Description]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_Service});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_Service});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Description]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_Service},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Description($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Description]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_Service},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Description]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Description}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Description]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Parameters]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_Service});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_Service});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Parameters]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_Service},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Parameters($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Parameters]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_Service},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Parameters]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Parameters}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Parameters]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Security]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_Service});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_Service});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Security]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_Service},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Security($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Security]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_Service},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Security]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Security}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Security]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [EndPoint]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_Service});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_Service});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [EndPoint]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_Service},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::EndPoint($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [EndPoint]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_Service},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [EndPoint]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{EndPoint}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [EndPoint]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_Service},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_Service},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_1_of_rule_Value
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_Value"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_Value]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_Value},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Colon});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon Hash]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_Value});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::Colon, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Colon]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Hash]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Hash})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Hash($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Hash]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Hash]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Hash}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon Hash]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_Value},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_Value},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_Value},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_1_of_rule_startrule
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_startrule"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_startrule]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{TypeInclude, or Include, or API});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [TypeInclude]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_startrule});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_startrule});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [TypeInclude]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::TypeInclude($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [TypeInclude]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_startrule},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [TypeInclude]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{TypeInclude}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [TypeInclude]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Include]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_startrule});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_startrule});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Include]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Include($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Include]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_startrule},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Include]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Include}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Include]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [API]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_startrule});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_startrule});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [API]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::API($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [API]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_startrule},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [API]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{API}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [API]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_startrule},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_2_of_rule_ArrayValue
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_2_of_rule_ArrayValue"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_2_of_rule_ArrayValue]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_2_of_rule_ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Colon});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon Array]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_2_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_2_of_rule_ArrayValue});
        %item = (__RULE__ => q{_alternation_1_of_production_2_of_rule_ArrayValue});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_2_of_rule_ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::Colon, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_2_of_rule_ArrayValue},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Colon]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_2_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_2_of_rule_ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Array})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Array]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_2_of_rule_ArrayValue},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Array]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_2_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Array}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon Array]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_2_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{_alternation_1_of_production_2_of_rule_ArrayValue},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_2_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_2_of_rule_ArrayValue},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_2_of_rule_ArrayValue},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_2_of_rule_Value
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_2_of_rule_Value"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_2_of_rule_Value]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_2_of_rule_Value},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Colon});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon Array]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_2_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_2_of_rule_Value});
        %item = (__RULE__ => q{_alternation_1_of_production_2_of_rule_Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_2_of_rule_Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::Colon, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_2_of_rule_Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Colon]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_2_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_2_of_rule_Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Array})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Array]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_2_of_rule_Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Array]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_2_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Array}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon Array]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_2_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{_alternation_1_of_production_2_of_rule_Value},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_2_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_2_of_rule_Value},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_2_of_rule_Value},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_3_of_rule_ArrayValue
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_3_of_rule_ArrayValue"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_3_of_rule_ArrayValue]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_3_of_rule_ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Colon});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon ArrayString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_3_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_3_of_rule_ArrayValue});
        %item = (__RULE__ => q{_alternation_1_of_production_3_of_rule_ArrayValue});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_3_of_rule_ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Colon($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_3_of_rule_ArrayValue},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Colon]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_3_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying subrule: [ArrayString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_3_of_rule_ArrayValue},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{ArrayString})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::ArrayString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [ArrayString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_3_of_rule_ArrayValue},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [ArrayString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_3_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ArrayString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon ArrayString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_3_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{_alternation_1_of_production_3_of_rule_ArrayValue},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_3_of_rule_ArrayValue},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_3_of_rule_ArrayValue},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_3_of_rule_ArrayValue},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_3_of_rule_Value
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_3_of_rule_Value"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_3_of_rule_Value]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_3_of_rule_Value},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Colon});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon AnyString]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_3_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_3_of_rule_Value});
        %item = (__RULE__ => q{_alternation_1_of_production_3_of_rule_Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_3_of_rule_Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::Colon($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_3_of_rule_Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Colon]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_3_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying subrule: [AnyString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_3_of_rule_Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{AnyString})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::ApiParser::AnyString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [AnyString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_3_of_rule_Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [AnyString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_3_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{AnyString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon AnyString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_3_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{_alternation_1_of_production_3_of_rule_Value},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_3_of_rule_Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_3_of_rule_Value},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_3_of_rule_Value},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::ApiParser::startrule
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"startrule"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [startrule]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new KissApi::ParserRuntime::Expectation(q{});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        local $skip = defined($skip) ? $skip : $KissApi::ParserRuntime::skip;
        KissApi::ParserRuntime::_trace(q{Trying production: [<skip: qr{(?xs:
          (?: \s+                       # Whitespace
          |   /[*] (?:(?![*]/).)* [*]/  # Inline comment
          |   // [^\n]* \n?             # End of line comment
          )
       )*}> TypeInclude, or Include, or API /\\Z/]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{startrule});
        %item = (__RULE__ => q{startrule});
        my $repcount = 0;


        

        KissApi::ParserRuntime::_trace(q{Trying directive: [<skip: qr{(?xs:
          (?: \s+                       # Whitespace
          |   /[*] (?:(?![*]/).)* [*]/  # Inline comment
          |   // [^\n]* \n?             # End of line comment
          )
       )*}>]},
                    KissApi::ParserRuntime::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { my $oldskip = $skip; $skip= qr{(?xs:
          (?: \s+                       # Whitespace
          |   /[*] (?:(?![*]/).)* [*]/  # Inline comment
          |   // [^\n]* \n?             # End of line comment
          )
       )*}; $oldskip };
        if (defined($_tok))
        {
            KissApi::ParserRuntime::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match directive>>},
                        KissApi::ParserRuntime::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [TypeInclude, or Include, or API]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{TypeInclude, or Include, or API})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::ApiParser::_alternation_1_of_production_1_of_rule_startrule, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [TypeInclude, or Include, or API]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{startrule},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [_alternation_1_of_production_1_of_rule_startrule]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_startrule(s)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/\\Z/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/\\Z/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\Z)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            KissApi::ParserRuntime::_trace(q{<<Didn't match terminal>>},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        KissApi::ParserRuntime::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          KissApi::ParserRuntime::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $item[2] };
        unless (defined $_tok)
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      KissApi::ParserRuntime::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [<skip: qr{(?xs:
          (?: \s+                       # Whitespace
          |   /[*] (?:(?![*]/).)* [*]/  # Inline comment
          |   // [^\n]* \n?             # End of line comment
          )
       )*}> TypeInclude, or Include, or API /\\Z/]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        KissApi::ParserRuntime::_trace(q{<<Didn't match rule>>},
                     KissApi::ParserRuntime::_tracefirst($_[1]),
                     q{startrule},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        KissApi::ParserRuntime::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{startrule},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{startrule},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}
}
package KissApi::ApiParser; sub new { my $self = bless( {
                 '_AUTOACTION' => undef,
                 '_AUTOTREE' => undef,
                 '_check' => {
                               'itempos' => '',
                               'prevcolumn' => '',
                               'prevline' => '',
                               'prevoffset' => '',
                               'thiscolumn' => '',
                               'thisoffset' => ''
                             },
                 'localvars' => '',
                 'namespace' => 'KissApi::ParserRuntime::KissApi::ApiParser',
                 'rules' => {
                              'API' => bless( {
                                                'calls' => [
                                                             'ApiName',
                                                             'OpenBrace',
                                                             'ApiPart',
                                                             'CloseBrace'
                                                           ],
                                                'changed' => 0,
                                                'impcount' => 0,
                                                'line' => 39,
                                                'name' => 'API',
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'actcount' => 1,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'description' => '/api:?/i',
                                                                                            'hashname' => '__PATTERN1__',
                                                                                            'ldelim' => '/',
                                                                                            'line' => 39,
                                                                                            'lookahead' => 0,
                                                                                            'mod' => 'i',
                                                                                            'pattern' => 'api:?',
                                                                                            'rdelim' => '/'
                                                                                          }, 'KissApi::ParserRuntime::Token' ),
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'line' => 39,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'ApiName'
                                                                                          }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'line' => 39,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'OpenBrace'
                                                                                          }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'expected' => undef,
                                                                                            'line' => 39,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'max' => 100000000,
                                                                                            'min' => 1,
                                                                                            'repspec' => 's',
                                                                                            'subrule' => 'ApiPart'
                                                                                          }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'line' => 39,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'CloseBrace'
                                                                                          }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                   bless( {
                                                                                            'code' => '{
    my $api = {};

    $api->{ApiName} = $item{ApiName};

    foreach my $apipart (@{$item{\'ApiPart(s)\'}})
    {
        my $key = (keys %$apipart)[0];

        if ($key =~ /^(Prolog|Security)$/i)
        {
            $api->{ucfirst $key} = $apipart->{$key};
        }
        elsif ($key eq \'ParameterDefinitions\')
        {
            foreach my $pd (@{$apipart->{$key}})
            {
                my $pdkey = (keys %$pd)[0];

                $api->{ParameterDefinitions}->{$pdkey} = $pd->{$pdkey};
            }
        }
        else
        {
            $api->{Services}->{$key} = $apipart->{$key};
        }
    }

    if ($::debug > 1)
    {
        print "=" x 80, "\\n";
        print "parsed API\\n";
        print "=" x 80, "\\n";

        print Dumper $api;
        print "=" x 80, "\\n\\n\\n";

    }

    $thisparser->{_creator}->api($api);
}',
                                                                                            'hashname' => '__ACTION1__',
                                                                                            'line' => 40,
                                                                                            'lookahead' => 0
                                                                                          }, 'KissApi::ParserRuntime::Action' )
                                                                                 ],
                                                                      'line' => undef,
                                                                      'number' => 0,
                                                                      'patcount' => 1,
                                                                      'strcount' => 0,
                                                                      'uncommit' => undef
                                                                    }, 'KissApi::ParserRuntime::Production' )
                                                           ],
                                                'vars' => ''
                                              }, 'KissApi::ParserRuntime::Rule' ),
                              'AnyString' => bless( {
                                                      'calls' => [
                                                                   'SingleQuotedString',
                                                                   'DoubleQuotedString',
                                                                   'String'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 335,
                                                      'name' => 'AnyString',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 335,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'SingleQuotedString'
                                                                                                }, 'KissApi::ParserRuntime::Subrule' )
                                                                                       ],
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'KissApi::ParserRuntime::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 335,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'DoubleQuotedString'
                                                                                                }, 'KissApi::ParserRuntime::Subrule' )
                                                                                       ],
                                                                            'line' => 335,
                                                                            'number' => 1,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'KissApi::ParserRuntime::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 335,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'String'
                                                                                                }, 'KissApi::ParserRuntime::Subrule' )
                                                                                       ],
                                                                            'line' => 335,
                                                                            'number' => 2,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'KissApi::ParserRuntime::Production' )
                                                                 ],
                                                      'vars' => ''
                                                    }, 'KissApi::ParserRuntime::Rule' ),
                              'ApiName' => bless( {
                                                    'calls' => [
                                                                 'Identifier'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 84,
                                                    'name' => 'ApiName',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 84,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'Identifier'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'KissApi::ParserRuntime::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'KissApi::ParserRuntime::Rule' ),
                              'ApiPart' => bless( {
                                                    'calls' => [
                                                                 'Prolog',
                                                                 'ParameterDefinitions',
                                                                 'Service',
                                                                 'Security'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 82,
                                                    'name' => 'ApiPart',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 82,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'Prolog'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'KissApi::ParserRuntime::Production' ),
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 82,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'ParameterDefinitions'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' )
                                                                                     ],
                                                                          'line' => 82,
                                                                          'number' => 1,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'KissApi::ParserRuntime::Production' ),
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 82,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'Service'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' )
                                                                                     ],
                                                                          'line' => 82,
                                                                          'number' => 2,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'KissApi::ParserRuntime::Production' ),
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 82,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'Security'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' )
                                                                                     ],
                                                                          'line' => 82,
                                                                          'number' => 3,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'KissApi::ParserRuntime::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'KissApi::ParserRuntime::Rule' ),
                              'Array' => bless( {
                                                  'calls' => [
                                                               'OpenBracket',
                                                               'ArrayItem',
                                                               'CloseBracket'
                                                             ],
                                                  'changed' => 0,
                                                  'impcount' => 0,
                                                  'line' => 311,
                                                  'name' => 'Array',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 1,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'implicit' => undef,
                                                                                              'line' => 311,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'OpenBracket'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'expected' => undef,
                                                                                              'line' => 311,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'max' => 100000000,
                                                                                              'min' => 0,
                                                                                              'repspec' => 's?',
                                                                                              'subrule' => 'ArrayItem'
                                                                                            }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'implicit' => undef,
                                                                                              'line' => 311,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'CloseBracket'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                     bless( {
                                                                                              'code' => '{
    push @{$item[2]}, $item[3] unless $item[3] eq \']\';
    $return = $item[2];
}',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'line' => 312,
                                                                                              'lookahead' => 0
                                                                                            }, 'KissApi::ParserRuntime::Action' )
                                                                                   ],
                                                                        'line' => undef,
                                                                        'number' => 0,
                                                                        'patcount' => 0,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'KissApi::ParserRuntime::Production' )
                                                             ],
                                                  'vars' => ''
                                                }, 'KissApi::ParserRuntime::Rule' ),
                              'ArrayItem' => bless( {
                                                      'calls' => [
                                                                   'FinalArrayItem',
                                                                   'Comma'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 317,
                                                      'name' => 'ArrayItem',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 1,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 317,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'FinalArrayItem'
                                                                                                }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'expected' => undef,
                                                                                                  'line' => 317,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'max' => 1,
                                                                                                  'min' => 0,
                                                                                                  'repspec' => '?',
                                                                                                  'subrule' => 'Comma'
                                                                                                }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                         bless( {
                                                                                                  'code' => '{
    $return = $item[1];
}',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'line' => 318,
                                                                                                  'lookahead' => 0
                                                                                                }, 'KissApi::ParserRuntime::Action' )
                                                                                       ],
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'KissApi::ParserRuntime::Production' )
                                                                 ],
                                                      'vars' => ''
                                                    }, 'KissApi::ParserRuntime::Rule' ),
                              'ArrayKeyValuePair' => bless( {
                                                              'calls' => [
                                                                           'Key',
                                                                           'ArrayValue'
                                                                         ],
                                                              'changed' => 0,
                                                              'impcount' => 0,
                                                              'line' => 286,
                                                              'name' => 'ArrayKeyValuePair',
                                                              'opcount' => 0,
                                                              'prods' => [
                                                                           bless( {
                                                                                    'actcount' => 1,
                                                                                    'dircount' => 0,
                                                                                    'error' => undef,
                                                                                    'items' => [
                                                                                                 bless( {
                                                                                                          'argcode' => undef,
                                                                                                          'implicit' => undef,
                                                                                                          'line' => 286,
                                                                                                          'lookahead' => 0,
                                                                                                          'matchrule' => 0,
                                                                                                          'subrule' => 'Key'
                                                                                                        }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                 bless( {
                                                                                                          'argcode' => undef,
                                                                                                          'implicit' => undef,
                                                                                                          'line' => 286,
                                                                                                          'lookahead' => 0,
                                                                                                          'matchrule' => 0,
                                                                                                          'subrule' => 'ArrayValue'
                                                                                                        }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                 bless( {
                                                                                                          'code' => '{
    $return = { $item[1] => $item[2] };
}',
                                                                                                          'hashname' => '__ACTION1__',
                                                                                                          'line' => 287,
                                                                                                          'lookahead' => 0
                                                                                                        }, 'KissApi::ParserRuntime::Action' )
                                                                                               ],
                                                                                    'line' => undef,
                                                                                    'number' => 0,
                                                                                    'patcount' => 0,
                                                                                    'strcount' => 0,
                                                                                    'uncommit' => undef
                                                                                  }, 'KissApi::ParserRuntime::Production' )
                                                                         ],
                                                              'vars' => ''
                                                            }, 'KissApi::ParserRuntime::Rule' ),
                              'ArrayString' => bless( {
                                                        'calls' => [
                                                                     '_alternation_1_of_production_1_of_rule_ArrayString'
                                                                   ],
                                                        'changed' => 0,
                                                        'impcount' => 1,
                                                        'line' => 324,
                                                        'name' => 'ArrayString',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 1,
                                                                              'dircount' => 1,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'code' => 'my $oldskip = $skip; $skip= \'\\s*\'; $oldskip',
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'line' => 324,
                                                                                                    'lookahead' => 0,
                                                                                                    'name' => '<skip: \'\\s*\'>'
                                                                                                  }, 'KissApi::ParserRuntime::Directive' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => 'SingleQuotedString, or DoubleQuotedString, or /[-!#$%&()*+.\\\\/0-9:;<=>?\\\\@A-Z^_`\\\\|~]+/i',
                                                                                                    'line' => 324,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => '_alternation_1_of_production_1_of_rule_ArrayString'
                                                                                                  }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                           bless( {
                                                                                                    'code' => '{
    $return = $item[2];
}',
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'line' => 325,
                                                                                                    'lookahead' => 0
                                                                                                  }, 'KissApi::ParserRuntime::Action' )
                                                                                         ],
                                                                              'line' => undef,
                                                                              'number' => 0,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'KissApi::ParserRuntime::Production' )
                                                                   ],
                                                        'vars' => ''
                                                      }, 'KissApi::ParserRuntime::Rule' ),
                              'ArrayValue' => bless( {
                                                       'calls' => [
                                                                    '_alternation_1_of_production_1_of_rule_ArrayValue',
                                                                    '_alternation_1_of_production_2_of_rule_ArrayValue',
                                                                    '_alternation_1_of_production_3_of_rule_ArrayValue'
                                                                  ],
                                                       'changed' => 0,
                                                       'impcount' => 1,
                                                       'line' => 291,
                                                       'name' => 'ArrayValue',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'implicit' => 'Colon',
                                                                                                   'line' => 291,
                                                                                                   'lookahead' => 0,
                                                                                                   'matchrule' => 0,
                                                                                                   'subrule' => '_alternation_1_of_production_1_of_rule_ArrayValue'
                                                                                                 }, 'KissApi::ParserRuntime::Subrule' )
                                                                                        ],
                                                                             'line' => undef,
                                                                             'number' => 0,
                                                                             'patcount' => 0,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'KissApi::ParserRuntime::Production' ),
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'implicit' => 'Colon',
                                                                                                   'line' => 291,
                                                                                                   'lookahead' => 0,
                                                                                                   'matchrule' => 0,
                                                                                                   'subrule' => '_alternation_1_of_production_2_of_rule_ArrayValue'
                                                                                                 }, 'KissApi::ParserRuntime::Subrule' )
                                                                                        ],
                                                                             'line' => 291,
                                                                             'number' => 1,
                                                                             'patcount' => 0,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'KissApi::ParserRuntime::Production' ),
                                                                    bless( {
                                                                             'actcount' => 1,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'implicit' => 'Colon',
                                                                                                   'line' => 291,
                                                                                                   'lookahead' => 0,
                                                                                                   'matchrule' => 0,
                                                                                                   'subrule' => '_alternation_1_of_production_3_of_rule_ArrayValue'
                                                                                                 }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                          bless( {
                                                                                                   'code' => '{
    $return = $item[2] || $item[1];
}',
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'line' => 292,
                                                                                                   'lookahead' => 0
                                                                                                 }, 'KissApi::ParserRuntime::Action' )
                                                                                        ],
                                                                             'line' => 291,
                                                                             'number' => 2,
                                                                             'patcount' => 0,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'KissApi::ParserRuntime::Production' )
                                                                  ],
                                                       'vars' => ''
                                                     }, 'KissApi::ParserRuntime::Rule' ),
                              'At' => bless( {
                                               'calls' => [],
                                               'changed' => 0,
                                               'impcount' => 0,
                                               'line' => 370,
                                               'name' => 'At',
                                               'opcount' => 0,
                                               'prods' => [
                                                            bless( {
                                                                     'actcount' => 0,
                                                                     'dircount' => 0,
                                                                     'error' => undef,
                                                                     'items' => [
                                                                                  bless( {
                                                                                           'description' => '\'@\'',
                                                                                           'hashname' => '__STRING1__',
                                                                                           'line' => 370,
                                                                                           'lookahead' => 0,
                                                                                           'pattern' => '@'
                                                                                         }, 'KissApi::ParserRuntime::Literal' )
                                                                                ],
                                                                     'line' => undef,
                                                                     'number' => 0,
                                                                     'patcount' => 0,
                                                                     'strcount' => 1,
                                                                     'uncommit' => undef
                                                                   }, 'KissApi::ParserRuntime::Production' )
                                                          ],
                                               'vars' => ''
                                             }, 'KissApi::ParserRuntime::Rule' ),
                              'CloseBrace' => bless( {
                                                       'calls' => [],
                                                       'changed' => 0,
                                                       'impcount' => 0,
                                                       'line' => 388,
                                                       'name' => 'CloseBrace',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'description' => '\'\\}\'',
                                                                                                   'hashname' => '__STRING1__',
                                                                                                   'line' => 388,
                                                                                                   'lookahead' => 0,
                                                                                                   'pattern' => '}'
                                                                                                 }, 'KissApi::ParserRuntime::Literal' )
                                                                                        ],
                                                                             'line' => undef,
                                                                             'number' => 0,
                                                                             'patcount' => 0,
                                                                             'strcount' => 1,
                                                                             'uncommit' => undef
                                                                           }, 'KissApi::ParserRuntime::Production' )
                                                                  ],
                                                       'vars' => ''
                                                     }, 'KissApi::ParserRuntime::Rule' ),
                              'CloseBracket' => bless( {
                                                         'calls' => [],
                                                         'changed' => 0,
                                                         'impcount' => 0,
                                                         'line' => 384,
                                                         'name' => 'CloseBracket',
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'actcount' => 0,
                                                                               'dircount' => 0,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'description' => '\']\'',
                                                                                                     'hashname' => '__STRING1__',
                                                                                                     'line' => 384,
                                                                                                     'lookahead' => 0,
                                                                                                     'pattern' => ']'
                                                                                                   }, 'KissApi::ParserRuntime::Literal' )
                                                                                          ],
                                                                               'line' => undef,
                                                                               'number' => 0,
                                                                               'patcount' => 0,
                                                                               'strcount' => 1,
                                                                               'uncommit' => undef
                                                                             }, 'KissApi::ParserRuntime::Production' )
                                                                    ],
                                                         'vars' => ''
                                                       }, 'KissApi::ParserRuntime::Rule' ),
                              'Colon' => bless( {
                                                  'calls' => [],
                                                  'changed' => 0,
                                                  'impcount' => 0,
                                                  'line' => 374,
                                                  'name' => 'Colon',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'description' => '\':\'',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'line' => 374,
                                                                                              'lookahead' => 0,
                                                                                              'pattern' => ':'
                                                                                            }, 'KissApi::ParserRuntime::Literal' )
                                                                                   ],
                                                                        'line' => undef,
                                                                        'number' => 0,
                                                                        'patcount' => 0,
                                                                        'strcount' => 1,
                                                                        'uncommit' => undef
                                                                      }, 'KissApi::ParserRuntime::Production' )
                                                             ],
                                                  'vars' => ''
                                                }, 'KissApi::ParserRuntime::Rule' ),
                              'Comma' => bless( {
                                                  'calls' => [],
                                                  'changed' => 0,
                                                  'impcount' => 0,
                                                  'line' => 376,
                                                  'name' => 'Comma',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'description' => '\',\'',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'line' => 376,
                                                                                              'lookahead' => 0,
                                                                                              'pattern' => ','
                                                                                            }, 'KissApi::ParserRuntime::Literal' )
                                                                                   ],
                                                                        'line' => undef,
                                                                        'number' => 0,
                                                                        'patcount' => 0,
                                                                        'strcount' => 1,
                                                                        'uncommit' => undef
                                                                      }, 'KissApi::ParserRuntime::Production' )
                                                             ],
                                                  'vars' => ''
                                                }, 'KissApi::ParserRuntime::Rule' ),
                              'Comment' => bless( {
                                                    'calls' => [
                                                                 'SingleLineComment',
                                                                 'MultiLineComment'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 23,
                                                    'name' => 'Comment',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'expected' => undef,
                                                                                                'line' => 23,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'max' => 100000000,
                                                                                                'min' => 1,
                                                                                                'repspec' => 's',
                                                                                                'subrule' => 'SingleLineComment'
                                                                                              }, 'KissApi::ParserRuntime::Repetition' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'KissApi::ParserRuntime::Production' ),
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 23,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'MultiLineComment'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' )
                                                                                     ],
                                                                          'line' => 23,
                                                                          'number' => 1,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'KissApi::ParserRuntime::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'KissApi::ParserRuntime::Rule' ),
                              'Description' => bless( {
                                                        'calls' => [
                                                                     'AnyString'
                                                                   ],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 180,
                                                        'name' => 'Description',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 1,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'description' => '/description:?/i',
                                                                                                    'hashname' => '__PATTERN1__',
                                                                                                    'ldelim' => '/',
                                                                                                    'line' => 180,
                                                                                                    'lookahead' => 0,
                                                                                                    'mod' => 'i',
                                                                                                    'pattern' => 'description:?',
                                                                                                    'rdelim' => '/'
                                                                                                  }, 'KissApi::ParserRuntime::Token' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 180,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'AnyString'
                                                                                                  }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                           bless( {
                                                                                                    'code' => '{
    $return = { description => $item[2] };
}',
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'line' => 181,
                                                                                                    'lookahead' => 0
                                                                                                  }, 'KissApi::ParserRuntime::Action' )
                                                                                         ],
                                                                              'line' => undef,
                                                                              'number' => 0,
                                                                              'patcount' => 1,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'KissApi::ParserRuntime::Production' )
                                                                   ],
                                                        'vars' => ''
                                                      }, 'KissApi::ParserRuntime::Rule' ),
                              'Dot' => bless( {
                                                'calls' => [],
                                                'changed' => 0,
                                                'impcount' => 0,
                                                'line' => 372,
                                                'name' => 'Dot',
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'actcount' => 0,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'description' => '\'.\'',
                                                                                            'hashname' => '__STRING1__',
                                                                                            'line' => 372,
                                                                                            'lookahead' => 0,
                                                                                            'pattern' => '.'
                                                                                          }, 'KissApi::ParserRuntime::Literal' )
                                                                                 ],
                                                                      'line' => undef,
                                                                      'number' => 0,
                                                                      'patcount' => 0,
                                                                      'strcount' => 1,
                                                                      'uncommit' => undef
                                                                    }, 'KissApi::ParserRuntime::Production' )
                                                           ],
                                                'vars' => ''
                                              }, 'KissApi::ParserRuntime::Rule' ),
                              'DoubleQuote' => bless( {
                                                        'calls' => [],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 378,
                                                        'name' => 'DoubleQuote',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'description' => '\'"\'',
                                                                                                    'hashname' => '__STRING1__',
                                                                                                    'line' => 378,
                                                                                                    'lookahead' => 0,
                                                                                                    'pattern' => '"'
                                                                                                  }, 'KissApi::ParserRuntime::Literal' )
                                                                                         ],
                                                                              'line' => undef,
                                                                              'number' => 0,
                                                                              'patcount' => 0,
                                                                              'strcount' => 1,
                                                                              'uncommit' => undef
                                                                            }, 'KissApi::ParserRuntime::Production' )
                                                                   ],
                                                        'vars' => ''
                                                      }, 'KissApi::ParserRuntime::Rule' ),
                              'DoubleQuotedString' => bless( {
                                                               'calls' => [
                                                                            'DoubleQuote'
                                                                          ],
                                                               'changed' => 0,
                                                               'impcount' => 0,
                                                               'line' => 349,
                                                               'name' => 'DoubleQuotedString',
                                                               'opcount' => 0,
                                                               'prods' => [
                                                                            bless( {
                                                                                     'actcount' => 1,
                                                                                     'dircount' => 0,
                                                                                     'error' => undef,
                                                                                     'items' => [
                                                                                                  bless( {
                                                                                                           'argcode' => undef,
                                                                                                           'implicit' => undef,
                                                                                                           'line' => 349,
                                                                                                           'lookahead' => 0,
                                                                                                           'matchrule' => 0,
                                                                                                           'subrule' => 'DoubleQuote'
                                                                                                         }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                  bless( {
                                                                                                           'description' => '/(\\\\\\\\"|\\\\n|[^"])*/',
                                                                                                           'hashname' => '__PATTERN1__',
                                                                                                           'ldelim' => '/',
                                                                                                           'line' => 349,
                                                                                                           'lookahead' => 0,
                                                                                                           'mod' => '',
                                                                                                           'pattern' => '(\\\\"|\\n|[^"])*',
                                                                                                           'rdelim' => '/'
                                                                                                         }, 'KissApi::ParserRuntime::Token' ),
                                                                                                  bless( {
                                                                                                           'argcode' => undef,
                                                                                                           'implicit' => undef,
                                                                                                           'line' => 349,
                                                                                                           'lookahead' => 0,
                                                                                                           'matchrule' => 0,
                                                                                                           'subrule' => 'DoubleQuote'
                                                                                                         }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                  bless( {
                                                                                                           'code' => '{
    $return = $item[2];
}',
                                                                                                           'hashname' => '__ACTION1__',
                                                                                                           'line' => 350,
                                                                                                           'lookahead' => 0
                                                                                                         }, 'KissApi::ParserRuntime::Action' )
                                                                                                ],
                                                                                     'line' => undef,
                                                                                     'number' => 0,
                                                                                     'patcount' => 1,
                                                                                     'strcount' => 0,
                                                                                     'uncommit' => undef
                                                                                   }, 'KissApi::ParserRuntime::Production' )
                                                                          ],
                                                               'vars' => ''
                                                             }, 'KissApi::ParserRuntime::Rule' ),
                              'EOF' => bless( {
                                                'calls' => [],
                                                'changed' => 0,
                                                'impcount' => 0,
                                                'line' => 396,
                                                'name' => 'EOF',
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'actcount' => 0,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'description' => '/^\\\\Z/',
                                                                                            'hashname' => '__PATTERN1__',
                                                                                            'ldelim' => '/',
                                                                                            'line' => 396,
                                                                                            'lookahead' => 0,
                                                                                            'mod' => '',
                                                                                            'pattern' => '^\\Z',
                                                                                            'rdelim' => '/'
                                                                                          }, 'KissApi::ParserRuntime::Token' )
                                                                                 ],
                                                                      'line' => undef,
                                                                      'number' => 0,
                                                                      'patcount' => 1,
                                                                      'strcount' => 0,
                                                                      'uncommit' => undef
                                                                    }, 'KissApi::ParserRuntime::Production' )
                                                           ],
                                                'vars' => ''
                                              }, 'KissApi::ParserRuntime::Rule' ),
                              'EndPoint' => bless( {
                                                     'calls' => [
                                                                  'Identifier',
                                                                  'Colon',
                                                                  'OpenBrace',
                                                                  'EndPointPart',
                                                                  'CloseBrace'
                                                                ],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 160,
                                                     'name' => 'EndPoint',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 1,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 160,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'Identifier'
                                                                                               }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'expected' => undef,
                                                                                                 'line' => 160,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'max' => 1,
                                                                                                 'min' => 0,
                                                                                                 'repspec' => '?',
                                                                                                 'subrule' => 'Colon'
                                                                                               }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 160,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'OpenBrace'
                                                                                               }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'expected' => undef,
                                                                                                 'line' => 160,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'max' => 100000000,
                                                                                                 'min' => 0,
                                                                                                 'repspec' => 's?',
                                                                                                 'subrule' => 'EndPointPart'
                                                                                               }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 160,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'CloseBrace'
                                                                                               }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                        bless( {
                                                                                                 'code' => '{
    my $endpoint = {};

    foreach my $epp (@{$item[4]})
    {
        foreach my $k (keys %$epp)
        {
            $endpoint->{$k} = $epp->{$k};
        }
    }

    $return = { $item[1] => $endpoint };
}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'line' => 161,
                                                                                                 'lookahead' => 0
                                                                                               }, 'KissApi::ParserRuntime::Action' )
                                                                                      ],
                                                                           'line' => undef,
                                                                           'number' => 0,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'KissApi::ParserRuntime::Production' )
                                                                ],
                                                     'vars' => ''
                                                   }, 'KissApi::ParserRuntime::Rule' ),
                              'EndPointPart' => bless( {
                                                         'calls' => [
                                                                      'Description',
                                                                      'Security',
                                                                      'Parameters',
                                                                      'Operations'
                                                                    ],
                                                         'changed' => 0,
                                                         'impcount' => 0,
                                                         'line' => 175,
                                                         'name' => 'EndPointPart',
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'actcount' => 0,
                                                                               'dircount' => 0,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'line' => 175,
                                                                                                     'lookahead' => 0,
                                                                                                     'matchrule' => 0,
                                                                                                     'subrule' => 'Description'
                                                                                                   }, 'KissApi::ParserRuntime::Subrule' )
                                                                                          ],
                                                                               'line' => undef,
                                                                               'number' => 0,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'uncommit' => undef
                                                                             }, 'KissApi::ParserRuntime::Production' ),
                                                                      bless( {
                                                                               'actcount' => 0,
                                                                               'dircount' => 0,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'line' => 175,
                                                                                                     'lookahead' => 0,
                                                                                                     'matchrule' => 0,
                                                                                                     'subrule' => 'Security'
                                                                                                   }, 'KissApi::ParserRuntime::Subrule' )
                                                                                          ],
                                                                               'line' => 175,
                                                                               'number' => 1,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'uncommit' => undef
                                                                             }, 'KissApi::ParserRuntime::Production' ),
                                                                      bless( {
                                                                               'actcount' => 0,
                                                                               'dircount' => 0,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'line' => 175,
                                                                                                     'lookahead' => 0,
                                                                                                     'matchrule' => 0,
                                                                                                     'subrule' => 'Parameters'
                                                                                                   }, 'KissApi::ParserRuntime::Subrule' )
                                                                                          ],
                                                                               'line' => 175,
                                                                               'number' => 2,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'uncommit' => undef
                                                                             }, 'KissApi::ParserRuntime::Production' ),
                                                                      bless( {
                                                                               'actcount' => 1,
                                                                               'dircount' => 0,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'line' => 175,
                                                                                                     'lookahead' => 0,
                                                                                                     'matchrule' => 0,
                                                                                                     'subrule' => 'Operations'
                                                                                                   }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                            bless( {
                                                                                                     'code' => '{
    $return = $item[1];
}',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'line' => 176,
                                                                                                     'lookahead' => 0
                                                                                                   }, 'KissApi::ParserRuntime::Action' )
                                                                                          ],
                                                                               'line' => 175,
                                                                               'number' => 3,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'uncommit' => undef
                                                                             }, 'KissApi::ParserRuntime::Production' )
                                                                    ],
                                                         'vars' => ''
                                                       }, 'KissApi::ParserRuntime::Rule' ),
                              'Equals' => bless( {
                                                   'calls' => [],
                                                   'changed' => 0,
                                                   'impcount' => 0,
                                                   'line' => 394,
                                                   'name' => 'Equals',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 0,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'description' => '\'=\'',
                                                                                               'hashname' => '__STRING1__',
                                                                                               'line' => 394,
                                                                                               'lookahead' => 0,
                                                                                               'pattern' => '='
                                                                                             }, 'KissApi::ParserRuntime::Literal' )
                                                                                    ],
                                                                         'line' => undef,
                                                                         'number' => 0,
                                                                         'patcount' => 0,
                                                                         'strcount' => 1,
                                                                         'uncommit' => undef
                                                                       }, 'KissApi::ParserRuntime::Production' )
                                                              ],
                                                   'vars' => ''
                                                 }, 'KissApi::ParserRuntime::Rule' ),
                              'Filename' => bless( {
                                                     'calls' => [],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 329,
                                                     'name' => 'Filename',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'description' => '/[^<>:;,?"*|]+/',
                                                                                                 'hashname' => '__PATTERN1__',
                                                                                                 'ldelim' => '/',
                                                                                                 'line' => 329,
                                                                                                 'lookahead' => 0,
                                                                                                 'mod' => '',
                                                                                                 'pattern' => '[^<>:;,?"*|]+',
                                                                                                 'rdelim' => '/'
                                                                                               }, 'KissApi::ParserRuntime::Token' )
                                                                                      ],
                                                                           'line' => undef,
                                                                           'number' => 0,
                                                                           'patcount' => 1,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'KissApi::ParserRuntime::Production' )
                                                                ],
                                                     'vars' => ''
                                                   }, 'KissApi::ParserRuntime::Rule' ),
                              'FinalArrayItem' => bless( {
                                                           'calls' => [
                                                                        'ArrayKeyValuePair',
                                                                        'Hash',
                                                                        'Array',
                                                                        'ArrayString'
                                                                      ],
                                                           'changed' => 0,
                                                           'impcount' => 0,
                                                           'line' => 322,
                                                           'name' => 'FinalArrayItem',
                                                           'opcount' => 0,
                                                           'prods' => [
                                                                        bless( {
                                                                                 'actcount' => 0,
                                                                                 'dircount' => 0,
                                                                                 'error' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 322,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'ArrayKeyValuePair'
                                                                                                     }, 'KissApi::ParserRuntime::Subrule' )
                                                                                            ],
                                                                                 'line' => undef,
                                                                                 'number' => 0,
                                                                                 'patcount' => 0,
                                                                                 'strcount' => 0,
                                                                                 'uncommit' => undef
                                                                               }, 'KissApi::ParserRuntime::Production' ),
                                                                        bless( {
                                                                                 'actcount' => 0,
                                                                                 'dircount' => 0,
                                                                                 'error' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 322,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'Hash'
                                                                                                     }, 'KissApi::ParserRuntime::Subrule' )
                                                                                            ],
                                                                                 'line' => 322,
                                                                                 'number' => 1,
                                                                                 'patcount' => 0,
                                                                                 'strcount' => 0,
                                                                                 'uncommit' => undef
                                                                               }, 'KissApi::ParserRuntime::Production' ),
                                                                        bless( {
                                                                                 'actcount' => 0,
                                                                                 'dircount' => 0,
                                                                                 'error' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 322,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'Array'
                                                                                                     }, 'KissApi::ParserRuntime::Subrule' )
                                                                                            ],
                                                                                 'line' => 322,
                                                                                 'number' => 2,
                                                                                 'patcount' => 0,
                                                                                 'strcount' => 0,
                                                                                 'uncommit' => undef
                                                                               }, 'KissApi::ParserRuntime::Production' ),
                                                                        bless( {
                                                                                 'actcount' => 0,
                                                                                 'dircount' => 0,
                                                                                 'error' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 322,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'ArrayString'
                                                                                                     }, 'KissApi::ParserRuntime::Subrule' )
                                                                                            ],
                                                                                 'line' => 322,
                                                                                 'number' => 3,
                                                                                 'patcount' => 0,
                                                                                 'strcount' => 0,
                                                                                 'uncommit' => undef
                                                                               }, 'KissApi::ParserRuntime::Production' )
                                                                      ],
                                                           'vars' => ''
                                                         }, 'KissApi::ParserRuntime::Rule' ),
                              'Hash' => bless( {
                                                 'calls' => [
                                                              'OpenBrace',
                                                              'KeyValuePair',
                                                              'CloseBrace'
                                                            ],
                                                 'changed' => 0,
                                                 'impcount' => 0,
                                                 'line' => 296,
                                                 'name' => 'Hash',
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'implicit' => undef,
                                                                                             'line' => 296,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'subrule' => 'OpenBrace'
                                                                                           }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'expected' => undef,
                                                                                             'line' => 296,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'max' => 100000000,
                                                                                             'min' => 1,
                                                                                             'repspec' => 's',
                                                                                             'subrule' => 'KeyValuePair'
                                                                                           }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'implicit' => undef,
                                                                                             'line' => 296,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'subrule' => 'CloseBrace'
                                                                                           }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                    bless( {
                                                                                             'code' => '{
    my $res = {};

    foreach my $kv (@{$item[2]})
    {
        foreach my $k (keys %$kv)
        {
            $res->{$k} = $kv->{$k};
        }
    }

    $return = $res;
}',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'line' => 297,
                                                                                             'lookahead' => 0
                                                                                           }, 'KissApi::ParserRuntime::Action' )
                                                                                  ],
                                                                       'line' => undef,
                                                                       'number' => 0,
                                                                       'patcount' => 0,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'KissApi::ParserRuntime::Production' )
                                                            ],
                                                 'vars' => ''
                                               }, 'KissApi::ParserRuntime::Rule' ),
                              'HeaderParameters' => bless( {
                                                             'calls' => [
                                                                          'Array'
                                                                        ],
                                                             'changed' => 0,
                                                             'impcount' => 0,
                                                             'line' => 212,
                                                             'name' => 'HeaderParameters',
                                                             'opcount' => 0,
                                                             'prods' => [
                                                                          bless( {
                                                                                   'actcount' => 1,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'description' => '/header:?/i',
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'ldelim' => '/',
                                                                                                         'line' => 212,
                                                                                                         'lookahead' => 0,
                                                                                                         'mod' => 'i',
                                                                                                         'pattern' => 'header:?',
                                                                                                         'rdelim' => '/'
                                                                                                       }, 'KissApi::ParserRuntime::Token' ),
                                                                                                bless( {
                                                                                                         'argcode' => undef,
                                                                                                         'implicit' => undef,
                                                                                                         'line' => 212,
                                                                                                         'lookahead' => 0,
                                                                                                         'matchrule' => 0,
                                                                                                         'subrule' => 'Array'
                                                                                                       }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                bless( {
                                                                                                         'code' => '{
    $return = { header => $item[2] };
}',
                                                                                                         'hashname' => '__ACTION1__',
                                                                                                         'line' => 213,
                                                                                                         'lookahead' => 0
                                                                                                       }, 'KissApi::ParserRuntime::Action' )
                                                                                              ],
                                                                                   'line' => undef,
                                                                                   'number' => 0,
                                                                                   'patcount' => 1,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'KissApi::ParserRuntime::Production' )
                                                                        ],
                                                             'vars' => ''
                                                           }, 'KissApi::ParserRuntime::Rule' ),
                              'Identifier' => bless( {
                                                       'calls' => [
                                                                    'SingleQuotedString',
                                                                    'DoubleQuotedString'
                                                                  ],
                                                       'changed' => 0,
                                                       'impcount' => 0,
                                                       'line' => 354,
                                                       'name' => 'Identifier',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'description' => '/[\\\\/\\{a-z][a-z0-9_\\\\/\\{\\}?!]*/i',
                                                                                                   'hashname' => '__PATTERN1__',
                                                                                                   'ldelim' => '/',
                                                                                                   'line' => 354,
                                                                                                   'lookahead' => 0,
                                                                                                   'mod' => 'i',
                                                                                                   'pattern' => '[\\/{a-z][a-z0-9_\\/{}?!]*',
                                                                                                   'rdelim' => '/'
                                                                                                 }, 'KissApi::ParserRuntime::Token' )
                                                                                        ],
                                                                             'line' => undef,
                                                                             'number' => 0,
                                                                             'patcount' => 1,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'KissApi::ParserRuntime::Production' ),
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'implicit' => undef,
                                                                                                   'line' => 354,
                                                                                                   'lookahead' => 0,
                                                                                                   'matchrule' => 0,
                                                                                                   'subrule' => 'SingleQuotedString'
                                                                                                 }, 'KissApi::ParserRuntime::Subrule' )
                                                                                        ],
                                                                             'line' => 354,
                                                                             'number' => 1,
                                                                             'patcount' => 0,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'KissApi::ParserRuntime::Production' ),
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'implicit' => undef,
                                                                                                   'line' => 354,
                                                                                                   'lookahead' => 0,
                                                                                                   'matchrule' => 0,
                                                                                                   'subrule' => 'DoubleQuotedString'
                                                                                                 }, 'KissApi::ParserRuntime::Subrule' )
                                                                                        ],
                                                                             'line' => 354,
                                                                             'number' => 2,
                                                                             'patcount' => 0,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'KissApi::ParserRuntime::Production' )
                                                                  ],
                                                       'vars' => ''
                                                     }, 'KissApi::ParserRuntime::Rule' ),
                              'Include' => bless( {
                                                    'calls' => [
                                                                 'Filename'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 32,
                                                    'name' => 'Include',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 1,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'description' => '\'@include\'',
                                                                                                'hashname' => '__STRING1__',
                                                                                                'line' => 32,
                                                                                                'lookahead' => 0,
                                                                                                'pattern' => '@include'
                                                                                              }, 'KissApi::ParserRuntime::Literal' ),
                                                                                       bless( {
                                                                                                'description' => '/[<"]/',
                                                                                                'hashname' => '__PATTERN1__',
                                                                                                'ldelim' => '/',
                                                                                                'line' => 32,
                                                                                                'lookahead' => 0,
                                                                                                'mod' => '',
                                                                                                'pattern' => '[<"]',
                                                                                                'rdelim' => '/'
                                                                                              }, 'KissApi::ParserRuntime::Token' ),
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 32,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'Filename'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                       bless( {
                                                                                                'description' => '/[>"]/',
                                                                                                'hashname' => '__PATTERN2__',
                                                                                                'ldelim' => '/',
                                                                                                'line' => 32,
                                                                                                'lookahead' => 0,
                                                                                                'mod' => '',
                                                                                                'pattern' => '[>"]',
                                                                                                'rdelim' => '/'
                                                                                              }, 'KissApi::ParserRuntime::Token' ),
                                                                                       bless( {
                                                                                                'code' => '{
    print STDERR "include found <$item[3]>\\n" if $::debug > 1;

    $text = read_file($item[3]) . $text
}',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'line' => 33,
                                                                                                'lookahead' => 0
                                                                                              }, 'KissApi::ParserRuntime::Action' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 2,
                                                                          'strcount' => 1,
                                                                          'uncommit' => undef
                                                                        }, 'KissApi::ParserRuntime::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'KissApi::ParserRuntime::Rule' ),
                              'Integer' => bless( {
                                                    'calls' => [],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 356,
                                                    'name' => 'Integer',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 1,
                                                                          'dircount' => 1,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'description' => '/[-+]?(\\\\d+|Infinite)/',
                                                                                                'hashname' => '__PATTERN1__',
                                                                                                'ldelim' => '/',
                                                                                                'line' => 356,
                                                                                                'lookahead' => 0,
                                                                                                'mod' => '',
                                                                                                'pattern' => '[-+]?(\\d+|Infinite)',
                                                                                                'rdelim' => '/'
                                                                                              }, 'KissApi::ParserRuntime::Token' ),
                                                                                       bless( {
                                                                                                'code' => '( $item[1] eq \'\') ? undef : 1',
                                                                                                'hashname' => '__DIRECTIVE1__',
                                                                                                'line' => 356,
                                                                                                'lookahead' => 0,
                                                                                                'name' => '<reject: $item[1] eq \'\'>'
                                                                                              }, 'KissApi::ParserRuntime::Directive' ),
                                                                                       bless( {
                                                                                                'code' => '{
    $return = $item[1];
}',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'line' => 357,
                                                                                                'lookahead' => 0
                                                                                              }, 'KissApi::ParserRuntime::Action' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 1,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'KissApi::ParserRuntime::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'KissApi::ParserRuntime::Rule' ),
                              'Key' => bless( {
                                                'calls' => [
                                                             'Identifier',
                                                             'SingleQuotedString',
                                                             'DoubleQuotedString'
                                                           ],
                                                'changed' => 0,
                                                'impcount' => 0,
                                                'line' => 279,
                                                'name' => 'Key',
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'actcount' => 0,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'line' => 279,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'Identifier'
                                                                                          }, 'KissApi::ParserRuntime::Subrule' )
                                                                                 ],
                                                                      'line' => undef,
                                                                      'number' => 0,
                                                                      'patcount' => 0,
                                                                      'strcount' => 0,
                                                                      'uncommit' => undef
                                                                    }, 'KissApi::ParserRuntime::Production' ),
                                                             bless( {
                                                                      'actcount' => 0,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'line' => 279,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'SingleQuotedString'
                                                                                          }, 'KissApi::ParserRuntime::Subrule' )
                                                                                 ],
                                                                      'line' => 279,
                                                                      'number' => 1,
                                                                      'patcount' => 0,
                                                                      'strcount' => 0,
                                                                      'uncommit' => undef
                                                                    }, 'KissApi::ParserRuntime::Production' ),
                                                             bless( {
                                                                      'actcount' => 0,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'line' => 279,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'DoubleQuotedString'
                                                                                          }, 'KissApi::ParserRuntime::Subrule' )
                                                                                 ],
                                                                      'line' => 279,
                                                                      'number' => 2,
                                                                      'patcount' => 0,
                                                                      'strcount' => 0,
                                                                      'uncommit' => undef
                                                                    }, 'KissApi::ParserRuntime::Production' )
                                                           ],
                                                'vars' => ''
                                              }, 'KissApi::ParserRuntime::Rule' ),
                              'KeyValuePair' => bless( {
                                                         'calls' => [
                                                                      'Key',
                                                                      'Value',
                                                                      'Comma'
                                                                    ],
                                                         'changed' => 0,
                                                         'impcount' => 0,
                                                         'line' => 259,
                                                         'name' => 'KeyValuePair',
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'actcount' => 1,
                                                                               'dircount' => 0,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'line' => 259,
                                                                                                     'lookahead' => 0,
                                                                                                     'matchrule' => 0,
                                                                                                     'subrule' => 'Key'
                                                                                                   }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'line' => 259,
                                                                                                     'lookahead' => 0,
                                                                                                     'matchrule' => 0,
                                                                                                     'subrule' => 'Value'
                                                                                                   }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'expected' => undef,
                                                                                                     'line' => 259,
                                                                                                     'lookahead' => 0,
                                                                                                     'matchrule' => 0,
                                                                                                     'max' => 1,
                                                                                                     'min' => 0,
                                                                                                     'repspec' => '?',
                                                                                                     'subrule' => 'Comma'
                                                                                                   }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                            bless( {
                                                                                                     'code' => '{
    if (ref($item[2]) eq \'HASH\')
    {
        my ($pid, $popt) = $item[1] =~ /^([^!?]+)([!?])?$/;

        if ($popt)
        {
            $item[1] = $pid;
            $item[2]->{required} = $popt eq \'!\' ?
                                   \'true\' :
                                   $popt eq \'?\' ?
                                   \'false\' :
                                   undef;
        }
    }

    $return = { $item[1] => $item[2] };
}',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'line' => 260,
                                                                                                     'lookahead' => 0
                                                                                                   }, 'KissApi::ParserRuntime::Action' )
                                                                                          ],
                                                                               'line' => undef,
                                                                               'number' => 0,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'uncommit' => undef
                                                                             }, 'KissApi::ParserRuntime::Production' )
                                                                    ],
                                                         'vars' => ''
                                                       }, 'KissApi::ParserRuntime::Rule' ),
                              'Minus' => bless( {
                                                  'calls' => [],
                                                  'changed' => 0,
                                                  'impcount' => 0,
                                                  'line' => 390,
                                                  'name' => 'Minus',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'description' => '\'-\'',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'line' => 390,
                                                                                              'lookahead' => 0,
                                                                                              'pattern' => '-'
                                                                                            }, 'KissApi::ParserRuntime::Literal' )
                                                                                   ],
                                                                        'line' => undef,
                                                                        'number' => 0,
                                                                        'patcount' => 0,
                                                                        'strcount' => 1,
                                                                        'uncommit' => undef
                                                                      }, 'KissApi::ParserRuntime::Production' )
                                                             ],
                                                  'vars' => ''
                                                }, 'KissApi::ParserRuntime::Rule' ),
                              'MultiLineComment' => bless( {
                                                             'calls' => [],
                                                             'changed' => 0,
                                                             'impcount' => 0,
                                                             'line' => 333,
                                                             'name' => 'MultiLineComment',
                                                             'opcount' => 0,
                                                             'prods' => [
                                                                          bless( {
                                                                                   'actcount' => 0,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'description' => '\'/*\'',
                                                                                                         'hashname' => '__STRING1__',
                                                                                                         'line' => 333,
                                                                                                         'lookahead' => 0,
                                                                                                         'pattern' => '/*'
                                                                                                       }, 'KissApi::ParserRuntime::Literal' ),
                                                                                                bless( {
                                                                                                         'description' => 'm\\{((?! \\\\*/ | /\\\\* ).)*\\}sx',
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'ldelim' => '{',
                                                                                                         'line' => 333,
                                                                                                         'lookahead' => 0,
                                                                                                         'mod' => 'sx',
                                                                                                         'pattern' => '((?! \\*/ | /\\* ).)*',
                                                                                                         'rdelim' => '}'
                                                                                                       }, 'KissApi::ParserRuntime::Token' ),
                                                                                                bless( {
                                                                                                         'description' => '\'*/\'',
                                                                                                         'hashname' => '__STRING2__',
                                                                                                         'line' => 333,
                                                                                                         'lookahead' => 0,
                                                                                                         'pattern' => '*/'
                                                                                                       }, 'KissApi::ParserRuntime::Literal' )
                                                                                              ],
                                                                                   'line' => undef,
                                                                                   'number' => 0,
                                                                                   'patcount' => 1,
                                                                                   'strcount' => 2,
                                                                                   'uncommit' => undef
                                                                                 }, 'KissApi::ParserRuntime::Production' )
                                                                        ],
                                                             'vars' => ''
                                                           }, 'KissApi::ParserRuntime::Rule' ),
                              'NewLine' => bless( {
                                                    'calls' => [],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 366,
                                                    'name' => 'NewLine',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'description' => '\'\\\\n\'',
                                                                                                'hashname' => '__STRING1__',
                                                                                                'line' => 366,
                                                                                                'lookahead' => 0,
                                                                                                'pattern' => '\\n'
                                                                                              }, 'KissApi::ParserRuntime::InterpLit' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 1,
                                                                          'uncommit' => undef
                                                                        }, 'KissApi::ParserRuntime::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'KissApi::ParserRuntime::Rule' ),
                              'Number' => bless( {
                                                   'calls' => [],
                                                   'changed' => 0,
                                                   'impcount' => 0,
                                                   'line' => 361,
                                                   'name' => 'Number',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 1,
                                                                         'dircount' => 1,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'description' => '/[+-]?((\\\\d*(.\\\\d+)?)|Infinite)/',
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'ldelim' => '/',
                                                                                               'line' => 361,
                                                                                               'lookahead' => 0,
                                                                                               'mod' => '',
                                                                                               'pattern' => '[+-]?((\\d*(.\\d+)?)|Infinite)',
                                                                                               'rdelim' => '/'
                                                                                             }, 'KissApi::ParserRuntime::Token' ),
                                                                                      bless( {
                                                                                               'code' => '( $item[1] eq \'\') ? undef : 1',
                                                                                               'hashname' => '__DIRECTIVE1__',
                                                                                               'line' => 361,
                                                                                               'lookahead' => 0,
                                                                                               'name' => '<reject: $item[1] eq \'\'>'
                                                                                             }, 'KissApi::ParserRuntime::Directive' ),
                                                                                      bless( {
                                                                                               'code' => '{
    $return = $item[1];
}',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'line' => 362,
                                                                                               'lookahead' => 0
                                                                                             }, 'KissApi::ParserRuntime::Action' )
                                                                                    ],
                                                                         'line' => undef,
                                                                         'number' => 0,
                                                                         'patcount' => 1,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'KissApi::ParserRuntime::Production' )
                                                              ],
                                                   'vars' => ''
                                                 }, 'KissApi::ParserRuntime::Rule' ),
                              'OpenBrace' => bless( {
                                                      'calls' => [],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 386,
                                                      'name' => 'OpenBrace',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'description' => '\'\\{\'',
                                                                                                  'hashname' => '__STRING1__',
                                                                                                  'line' => 386,
                                                                                                  'lookahead' => 0,
                                                                                                  'pattern' => '{'
                                                                                                }, 'KissApi::ParserRuntime::Literal' )
                                                                                       ],
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'patcount' => 0,
                                                                            'strcount' => 1,
                                                                            'uncommit' => undef
                                                                          }, 'KissApi::ParserRuntime::Production' )
                                                                 ],
                                                      'vars' => ''
                                                    }, 'KissApi::ParserRuntime::Rule' ),
                              'OpenBracket' => bless( {
                                                        'calls' => [],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 382,
                                                        'name' => 'OpenBracket',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'description' => '\'[\'',
                                                                                                    'hashname' => '__STRING1__',
                                                                                                    'line' => 382,
                                                                                                    'lookahead' => 0,
                                                                                                    'pattern' => '['
                                                                                                  }, 'KissApi::ParserRuntime::Literal' )
                                                                                         ],
                                                                              'line' => undef,
                                                                              'number' => 0,
                                                                              'patcount' => 0,
                                                                              'strcount' => 1,
                                                                              'uncommit' => undef
                                                                            }, 'KissApi::ParserRuntime::Production' )
                                                                   ],
                                                        'vars' => ''
                                                      }, 'KissApi::ParserRuntime::Rule' ),
                              'Operations' => bless( {
                                                       'calls' => [
                                                                    'Array'
                                                                  ],
                                                       'changed' => 0,
                                                       'impcount' => 0,
                                                       'line' => 222,
                                                       'name' => 'Operations',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 1,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'description' => '/operations:?/i',
                                                                                                   'hashname' => '__PATTERN1__',
                                                                                                   'ldelim' => '/',
                                                                                                   'line' => 222,
                                                                                                   'lookahead' => 0,
                                                                                                   'mod' => 'i',
                                                                                                   'pattern' => 'operations:?',
                                                                                                   'rdelim' => '/'
                                                                                                 }, 'KissApi::ParserRuntime::Token' ),
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'implicit' => undef,
                                                                                                   'line' => 222,
                                                                                                   'lookahead' => 0,
                                                                                                   'matchrule' => 0,
                                                                                                   'subrule' => 'Array'
                                                                                                 }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                          bless( {
                                                                                                   'code' => '{
    my $ops = {};

    foreach my $op (@{$item[2]})
    {
        if (ref($op))
        {
            my ($key, $value) = %$op;

            $ops->{$key} = $value;
        }
        else
        {
            my ($rop, $opattr) = $op =~ /([^\\(\\)]+)(?:\\(([PSOU]*)\\))?/i;
            my @opattrs = split(//, $opattr);

            if ($#opattrs >= 0)
            {
                foreach my $opattr (@opattrs)
                {
                    $ops->{$rop}->{pagination} = 1 if uc($opattr) eq \'P\';
                    $ops->{$rop}->{search}     = 1 if uc($opattr) eq \'S\';
                    $ops->{$rop}->{order}      = 1 if uc($opattr) eq \'O\';
                    $ops->{$rop}->{unique}     = 1 if uc($opattr) eq \'U\';
                }
            }
            else
            {
                $ops->{$op} = 1;
            }
        }
    }

    $return = { operations => $ops };
}',
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'line' => 223,
                                                                                                   'lookahead' => 0
                                                                                                 }, 'KissApi::ParserRuntime::Action' )
                                                                                        ],
                                                                             'line' => undef,
                                                                             'number' => 0,
                                                                             'patcount' => 1,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'KissApi::ParserRuntime::Production' )
                                                                  ],
                                                       'vars' => ''
                                                     }, 'KissApi::ParserRuntime::Rule' ),
                              'ParameterDefinition' => bless( {
                                                                'calls' => [
                                                                             'Array'
                                                                           ],
                                                                'changed' => 0,
                                                                'impcount' => 0,
                                                                'line' => 106,
                                                                'name' => 'ParameterDefinition',
                                                                'opcount' => 0,
                                                                'prods' => [
                                                                             bless( {
                                                                                      'actcount' => 1,
                                                                                      'dircount' => 0,
                                                                                      'error' => undef,
                                                                                      'items' => [
                                                                                                   bless( {
                                                                                                            'description' => '/(header|query|cookie):?/i',
                                                                                                            'hashname' => '__PATTERN1__',
                                                                                                            'ldelim' => '/',
                                                                                                            'line' => 106,
                                                                                                            'lookahead' => 0,
                                                                                                            'mod' => 'i',
                                                                                                            'pattern' => '(header|query|cookie):?',
                                                                                                            'rdelim' => '/'
                                                                                                          }, 'KissApi::ParserRuntime::Token' ),
                                                                                                   bless( {
                                                                                                            'argcode' => undef,
                                                                                                            'implicit' => undef,
                                                                                                            'line' => 106,
                                                                                                            'lookahead' => 0,
                                                                                                            'matchrule' => 0,
                                                                                                            'subrule' => 'Array'
                                                                                                          }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                   bless( {
                                                                                                            'code' => '{
    $item[1] =~ s/:$//;

    my $pdef = {};

    foreach my $p (@{$item[2]})
    {
        my ($pname, $opt);

        if (ref($p))
        {
            my $pkey = (keys %$p)[0];

            ($pname, $opt) = $pkey =~ /([^?!]+)([?!])?/;

            $pdef->{$pname} = $p->{$pkey};
        }
        else
        {
            ($pname, $opt) = $p =~ /([^?!]+)([?!])?/;

            $pdef->{$pname} = 
            { 
                type => \'Str\', 
                name => $pname, 
            };
        }

        $pdef->{$pname}->{required} = $opt eq \'!\' ? 
                                      \'true\' : 
                                      $opt eq \'?\' ?
                                      \'false\' :
                                      undef,
    }

    $return = { $item[1] => $pdef };
}',
                                                                                                            'hashname' => '__ACTION1__',
                                                                                                            'line' => 107,
                                                                                                            'lookahead' => 0
                                                                                                          }, 'KissApi::ParserRuntime::Action' )
                                                                                                 ],
                                                                                      'line' => undef,
                                                                                      'number' => 0,
                                                                                      'patcount' => 1,
                                                                                      'strcount' => 0,
                                                                                      'uncommit' => undef
                                                                                    }, 'KissApi::ParserRuntime::Production' )
                                                                           ],
                                                                'vars' => ''
                                                              }, 'KissApi::ParserRuntime::Rule' ),
                              'ParameterDefinitions' => bless( {
                                                                 'calls' => [
                                                                              'OpenBrace',
                                                                              'ParameterDefinition',
                                                                              'CloseBrace'
                                                                            ],
                                                                 'changed' => 0,
                                                                 'impcount' => 0,
                                                                 'line' => 101,
                                                                 'name' => 'ParameterDefinitions',
                                                                 'opcount' => 0,
                                                                 'prods' => [
                                                                              bless( {
                                                                                       'actcount' => 1,
                                                                                       'dircount' => 0,
                                                                                       'error' => undef,
                                                                                       'items' => [
                                                                                                    bless( {
                                                                                                             'description' => '/parameters:?/i',
                                                                                                             'hashname' => '__PATTERN1__',
                                                                                                             'ldelim' => '/',
                                                                                                             'line' => 101,
                                                                                                             'lookahead' => 0,
                                                                                                             'mod' => 'i',
                                                                                                             'pattern' => 'parameters:?',
                                                                                                             'rdelim' => '/'
                                                                                                           }, 'KissApi::ParserRuntime::Token' ),
                                                                                                    bless( {
                                                                                                             'argcode' => undef,
                                                                                                             'implicit' => undef,
                                                                                                             'line' => 101,
                                                                                                             'lookahead' => 0,
                                                                                                             'matchrule' => 0,
                                                                                                             'subrule' => 'OpenBrace'
                                                                                                           }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                    bless( {
                                                                                                             'argcode' => undef,
                                                                                                             'expected' => undef,
                                                                                                             'line' => 101,
                                                                                                             'lookahead' => 0,
                                                                                                             'matchrule' => 0,
                                                                                                             'max' => 100000000,
                                                                                                             'min' => 0,
                                                                                                             'repspec' => 's?',
                                                                                                             'subrule' => 'ParameterDefinition'
                                                                                                           }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                                    bless( {
                                                                                                             'argcode' => undef,
                                                                                                             'implicit' => undef,
                                                                                                             'line' => 101,
                                                                                                             'lookahead' => 0,
                                                                                                             'matchrule' => 0,
                                                                                                             'subrule' => 'CloseBrace'
                                                                                                           }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                    bless( {
                                                                                                             'code' => '{
    $return = { ParameterDefinitions => $item[3] };
}',
                                                                                                             'hashname' => '__ACTION1__',
                                                                                                             'line' => 102,
                                                                                                             'lookahead' => 0
                                                                                                           }, 'KissApi::ParserRuntime::Action' )
                                                                                                  ],
                                                                                       'line' => undef,
                                                                                       'number' => 0,
                                                                                       'patcount' => 1,
                                                                                       'strcount' => 0,
                                                                                       'uncommit' => undef
                                                                                     }, 'KissApi::ParserRuntime::Production' )
                                                                            ],
                                                                 'vars' => ''
                                                               }, 'KissApi::ParserRuntime::Rule' ),
                              'Parameters' => bless( {
                                                       'calls' => [
                                                                    'OpenBrace',
                                                                    'ParametersArray',
                                                                    'CloseBrace'
                                                                  ],
                                                       'changed' => 0,
                                                       'impcount' => 0,
                                                       'line' => 190,
                                                       'name' => 'Parameters',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 1,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'description' => '/parameters:?/i',
                                                                                                   'hashname' => '__PATTERN1__',
                                                                                                   'ldelim' => '/',
                                                                                                   'line' => 190,
                                                                                                   'lookahead' => 0,
                                                                                                   'mod' => 'i',
                                                                                                   'pattern' => 'parameters:?',
                                                                                                   'rdelim' => '/'
                                                                                                 }, 'KissApi::ParserRuntime::Token' ),
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'implicit' => undef,
                                                                                                   'line' => 190,
                                                                                                   'lookahead' => 0,
                                                                                                   'matchrule' => 0,
                                                                                                   'subrule' => 'OpenBrace'
                                                                                                 }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'expected' => undef,
                                                                                                   'line' => 190,
                                                                                                   'lookahead' => 0,
                                                                                                   'matchrule' => 0,
                                                                                                   'max' => 100000000,
                                                                                                   'min' => 0,
                                                                                                   'repspec' => 's?',
                                                                                                   'subrule' => 'ParametersArray'
                                                                                                 }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                          bless( {
                                                                                                   'argcode' => undef,
                                                                                                   'implicit' => undef,
                                                                                                   'line' => 190,
                                                                                                   'lookahead' => 0,
                                                                                                   'matchrule' => 0,
                                                                                                   'subrule' => 'CloseBrace'
                                                                                                 }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                          bless( {
                                                                                                   'code' => '{
    my $parameters = {};

    foreach my $h (@{$item[3]})
    {
        foreach my $k (keys %$h)
        {
            $parameters->{$k} = $h->{$k};
        }
    }

    $return = { parameters => $parameters };
}',
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'line' => 191,
                                                                                                   'lookahead' => 0
                                                                                                 }, 'KissApi::ParserRuntime::Action' )
                                                                                        ],
                                                                             'line' => undef,
                                                                             'number' => 0,
                                                                             'patcount' => 1,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'KissApi::ParserRuntime::Production' )
                                                                  ],
                                                       'vars' => ''
                                                     }, 'KissApi::ParserRuntime::Rule' ),
                              'ParametersArray' => bless( {
                                                            'calls' => [
                                                                         'Array'
                                                                       ],
                                                            'changed' => 0,
                                                            'impcount' => 0,
                                                            'line' => 205,
                                                            'name' => 'ParametersArray',
                                                            'opcount' => 0,
                                                            'prods' => [
                                                                         bless( {
                                                                                  'actcount' => 1,
                                                                                  'dircount' => 0,
                                                                                  'error' => undef,
                                                                                  'items' => [
                                                                                               bless( {
                                                                                                        'description' => '/(header|path|query|cookie)\\\\s*:?/i',
                                                                                                        'hashname' => '__PATTERN1__',
                                                                                                        'ldelim' => '/',
                                                                                                        'line' => 205,
                                                                                                        'lookahead' => 0,
                                                                                                        'mod' => 'i',
                                                                                                        'pattern' => '(header|path|query|cookie)\\s*:?',
                                                                                                        'rdelim' => '/'
                                                                                                      }, 'KissApi::ParserRuntime::Token' ),
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'implicit' => undef,
                                                                                                        'line' => 205,
                                                                                                        'lookahead' => 0,
                                                                                                        'matchrule' => 0,
                                                                                                        'subrule' => 'Array'
                                                                                                      }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                               bless( {
                                                                                                        'code' => '{
    $item[1] =~ s/\\s*:\\s*$//;

    $return = { $item[1] => $item[2] };
}',
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'line' => 206,
                                                                                                        'lookahead' => 0
                                                                                                      }, 'KissApi::ParserRuntime::Action' )
                                                                                             ],
                                                                                  'line' => undef,
                                                                                  'number' => 0,
                                                                                  'patcount' => 1,
                                                                                  'strcount' => 0,
                                                                                  'uncommit' => undef
                                                                                }, 'KissApi::ParserRuntime::Production' )
                                                                       ],
                                                            'vars' => ''
                                                          }, 'KissApi::ParserRuntime::Rule' ),
                              'Plus' => bless( {
                                                 'calls' => [],
                                                 'changed' => 0,
                                                 'impcount' => 0,
                                                 'line' => 392,
                                                 'name' => 'Plus',
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'actcount' => 0,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'description' => '\'+\'',
                                                                                             'hashname' => '__STRING1__',
                                                                                             'line' => 392,
                                                                                             'lookahead' => 0,
                                                                                             'pattern' => '+'
                                                                                           }, 'KissApi::ParserRuntime::Literal' )
                                                                                  ],
                                                                       'line' => undef,
                                                                       'number' => 0,
                                                                       'patcount' => 0,
                                                                       'strcount' => 1,
                                                                       'uncommit' => undef
                                                                     }, 'KissApi::ParserRuntime::Production' )
                                                            ],
                                                 'vars' => ''
                                               }, 'KissApi::ParserRuntime::Rule' ),
                              'Prolog' => bless( {
                                                   'calls' => [
                                                                'OpenBrace',
                                                                'KeyValuePair',
                                                                'CloseBrace'
                                                              ],
                                                   'changed' => 0,
                                                   'impcount' => 0,
                                                   'line' => 86,
                                                   'name' => 'Prolog',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 1,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'description' => '/prolog:?/i',
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'ldelim' => '/',
                                                                                               'line' => 86,
                                                                                               'lookahead' => 0,
                                                                                               'mod' => 'i',
                                                                                               'pattern' => 'prolog:?',
                                                                                               'rdelim' => '/'
                                                                                             }, 'KissApi::ParserRuntime::Token' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'line' => 86,
                                                                                               'lookahead' => 0,
                                                                                               'matchrule' => 0,
                                                                                               'subrule' => 'OpenBrace'
                                                                                             }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'expected' => undef,
                                                                                               'line' => 86,
                                                                                               'lookahead' => 0,
                                                                                               'matchrule' => 0,
                                                                                               'max' => 100000000,
                                                                                               'min' => 1,
                                                                                               'repspec' => 's',
                                                                                               'subrule' => 'KeyValuePair'
                                                                                             }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'line' => 86,
                                                                                               'lookahead' => 0,
                                                                                               'matchrule' => 0,
                                                                                               'subrule' => 'CloseBrace'
                                                                                             }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                      bless( {
                                                                                               'code' => '{
    my $res = {};

    foreach my $kv (@{$item[3]})
    {
        foreach my $k (keys %$kv)
        {
            $res->{$k} = $kv->{$k};
        }
    }

    $return = { Prolog => $res };
}',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'line' => 87,
                                                                                               'lookahead' => 0
                                                                                             }, 'KissApi::ParserRuntime::Action' )
                                                                                    ],
                                                                         'line' => undef,
                                                                         'number' => 0,
                                                                         'patcount' => 1,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'KissApi::ParserRuntime::Production' )
                                                              ],
                                                   'vars' => ''
                                                 }, 'KissApi::ParserRuntime::Rule' ),
                              'QueryParameters' => bless( {
                                                            'calls' => [
                                                                         'Array'
                                                                       ],
                                                            'changed' => 0,
                                                            'impcount' => 0,
                                                            'line' => 217,
                                                            'name' => 'QueryParameters',
                                                            'opcount' => 0,
                                                            'prods' => [
                                                                         bless( {
                                                                                  'actcount' => 1,
                                                                                  'dircount' => 0,
                                                                                  'error' => undef,
                                                                                  'items' => [
                                                                                               bless( {
                                                                                                        'description' => '/query:?/i',
                                                                                                        'hashname' => '__PATTERN1__',
                                                                                                        'ldelim' => '/',
                                                                                                        'line' => 217,
                                                                                                        'lookahead' => 0,
                                                                                                        'mod' => 'i',
                                                                                                        'pattern' => 'query:?',
                                                                                                        'rdelim' => '/'
                                                                                                      }, 'KissApi::ParserRuntime::Token' ),
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'implicit' => undef,
                                                                                                        'line' => 217,
                                                                                                        'lookahead' => 0,
                                                                                                        'matchrule' => 0,
                                                                                                        'subrule' => 'Array'
                                                                                                      }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                               bless( {
                                                                                                        'code' => '{
    $return = { query => $item[2] };
}',
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'line' => 218,
                                                                                                        'lookahead' => 0
                                                                                                      }, 'KissApi::ParserRuntime::Action' )
                                                                                             ],
                                                                                  'line' => undef,
                                                                                  'number' => 0,
                                                                                  'patcount' => 1,
                                                                                  'strcount' => 0,
                                                                                  'uncommit' => undef
                                                                                }, 'KissApi::ParserRuntime::Production' )
                                                                       ],
                                                            'vars' => ''
                                                          }, 'KissApi::ParserRuntime::Rule' ),
                              'Security' => bless( {
                                                     'calls' => [
                                                                  'Array'
                                                                ],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 185,
                                                     'name' => 'Security',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 1,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'description' => '/(security|securities):?/i',
                                                                                                 'hashname' => '__PATTERN1__',
                                                                                                 'ldelim' => '/',
                                                                                                 'line' => 185,
                                                                                                 'lookahead' => 0,
                                                                                                 'mod' => 'i',
                                                                                                 'pattern' => '(security|securities):?',
                                                                                                 'rdelim' => '/'
                                                                                               }, 'KissApi::ParserRuntime::Token' ),
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 185,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'Array'
                                                                                               }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                        bless( {
                                                                                                 'code' => '{
    $return = { security => $item[2] };
}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'line' => 186,
                                                                                                 'lookahead' => 0
                                                                                               }, 'KissApi::ParserRuntime::Action' )
                                                                                      ],
                                                                           'line' => undef,
                                                                           'number' => 0,
                                                                           'patcount' => 1,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'KissApi::ParserRuntime::Production' )
                                                                ],
                                                     'vars' => ''
                                                   }, 'KissApi::ParserRuntime::Rule' ),
                              'Service' => bless( {
                                                    'calls' => [
                                                                 'Identifier',
                                                                 'Colon',
                                                                 'OpenBrace',
                                                                 '_alternation_1_of_production_1_of_rule_Service',
                                                                 'CloseBrace'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 1,
                                                    'line' => 145,
                                                    'name' => 'Service',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 1,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 145,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'Identifier'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'expected' => undef,
                                                                                                'line' => 145,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'max' => 1,
                                                                                                'min' => 0,
                                                                                                'repspec' => '?',
                                                                                                'subrule' => 'Colon'
                                                                                              }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 145,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'OpenBrace'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'expected' => 'Description, or Parameters, or Security, or EndPoint',
                                                                                                'line' => 145,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'max' => 100000000,
                                                                                                'min' => 1,
                                                                                                'repspec' => 's',
                                                                                                'subrule' => '_alternation_1_of_production_1_of_rule_Service'
                                                                                              }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 145,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'CloseBrace'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                       bless( {
                                                                                                'code' => '{
    my $service = {};

    foreach my $ep (@{$item[4]})
    {
        foreach my $k (keys %$ep)
        {
            $service->{$k} = $ep->{$k};
        }
    }

    $return = { $item[1] => $service };
}',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'line' => 146,
                                                                                                'lookahead' => 0
                                                                                              }, 'KissApi::ParserRuntime::Action' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'KissApi::ParserRuntime::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'KissApi::ParserRuntime::Rule' ),
                              'SingleLineComment' => bless( {
                                                              'calls' => [],
                                                              'changed' => 0,
                                                              'impcount' => 0,
                                                              'line' => 331,
                                                              'name' => 'SingleLineComment',
                                                              'opcount' => 0,
                                                              'prods' => [
                                                                           bless( {
                                                                                    'actcount' => 0,
                                                                                    'dircount' => 0,
                                                                                    'error' => undef,
                                                                                    'items' => [
                                                                                                 bless( {
                                                                                                          'description' => '/[#]|\\\\/\\\\//',
                                                                                                          'hashname' => '__PATTERN1__',
                                                                                                          'ldelim' => '/',
                                                                                                          'line' => 331,
                                                                                                          'lookahead' => 0,
                                                                                                          'mod' => '',
                                                                                                          'pattern' => '[#]|\\/\\/',
                                                                                                          'rdelim' => '/'
                                                                                                        }, 'KissApi::ParserRuntime::Token' ),
                                                                                                 bless( {
                                                                                                          'description' => '/[^\\\\n]*/',
                                                                                                          'hashname' => '__PATTERN2__',
                                                                                                          'ldelim' => '/',
                                                                                                          'line' => 331,
                                                                                                          'lookahead' => 0,
                                                                                                          'mod' => '',
                                                                                                          'pattern' => '[^\\n]*',
                                                                                                          'rdelim' => '/'
                                                                                                        }, 'KissApi::ParserRuntime::Token' )
                                                                                               ],
                                                                                    'line' => undef,
                                                                                    'number' => 0,
                                                                                    'patcount' => 2,
                                                                                    'strcount' => 0,
                                                                                    'uncommit' => undef
                                                                                  }, 'KissApi::ParserRuntime::Production' )
                                                                         ],
                                                              'vars' => ''
                                                            }, 'KissApi::ParserRuntime::Rule' ),
                              'SingleQuote' => bless( {
                                                        'calls' => [],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 380,
                                                        'name' => 'SingleQuote',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'description' => '/\'/',
                                                                                                    'hashname' => '__PATTERN1__',
                                                                                                    'ldelim' => '/',
                                                                                                    'line' => 380,
                                                                                                    'lookahead' => 0,
                                                                                                    'mod' => '',
                                                                                                    'pattern' => '\'',
                                                                                                    'rdelim' => '/'
                                                                                                  }, 'KissApi::ParserRuntime::Token' )
                                                                                         ],
                                                                              'line' => undef,
                                                                              'number' => 0,
                                                                              'patcount' => 1,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'KissApi::ParserRuntime::Production' )
                                                                   ],
                                                        'vars' => ''
                                                      }, 'KissApi::ParserRuntime::Rule' ),
                              'SingleQuotedString' => bless( {
                                                               'calls' => [
                                                                            'SingleQuote'
                                                                          ],
                                                               'changed' => 0,
                                                               'impcount' => 0,
                                                               'line' => 344,
                                                               'name' => 'SingleQuotedString',
                                                               'opcount' => 0,
                                                               'prods' => [
                                                                            bless( {
                                                                                     'actcount' => 1,
                                                                                     'dircount' => 0,
                                                                                     'error' => undef,
                                                                                     'items' => [
                                                                                                  bless( {
                                                                                                           'argcode' => undef,
                                                                                                           'implicit' => undef,
                                                                                                           'line' => 344,
                                                                                                           'lookahead' => 0,
                                                                                                           'matchrule' => 0,
                                                                                                           'subrule' => 'SingleQuote'
                                                                                                         }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                  bless( {
                                                                                                           'description' => '/(\\\\\\\\\'|\\\\n|[^\'])*/',
                                                                                                           'hashname' => '__PATTERN1__',
                                                                                                           'ldelim' => '/',
                                                                                                           'line' => 344,
                                                                                                           'lookahead' => 0,
                                                                                                           'mod' => '',
                                                                                                           'pattern' => '(\\\\\'|\\n|[^\'])*',
                                                                                                           'rdelim' => '/'
                                                                                                         }, 'KissApi::ParserRuntime::Token' ),
                                                                                                  bless( {
                                                                                                           'argcode' => undef,
                                                                                                           'implicit' => undef,
                                                                                                           'line' => 344,
                                                                                                           'lookahead' => 0,
                                                                                                           'matchrule' => 0,
                                                                                                           'subrule' => 'SingleQuote'
                                                                                                         }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                  bless( {
                                                                                                           'code' => '{
    $return = $item[2];
}',
                                                                                                           'hashname' => '__ACTION1__',
                                                                                                           'line' => 345,
                                                                                                           'lookahead' => 0
                                                                                                         }, 'KissApi::ParserRuntime::Action' )
                                                                                                ],
                                                                                     'line' => undef,
                                                                                     'number' => 0,
                                                                                     'patcount' => 1,
                                                                                     'strcount' => 0,
                                                                                     'uncommit' => undef
                                                                                   }, 'KissApi::ParserRuntime::Production' )
                                                                          ],
                                                               'vars' => ''
                                                             }, 'KissApi::ParserRuntime::Rule' ),
                              'Slash' => bless( {
                                                  'calls' => [],
                                                  'changed' => 0,
                                                  'impcount' => 0,
                                                  'line' => 368,
                                                  'name' => 'Slash',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'description' => '\'/\'',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'line' => 368,
                                                                                              'lookahead' => 0,
                                                                                              'pattern' => '/'
                                                                                            }, 'KissApi::ParserRuntime::Literal' )
                                                                                   ],
                                                                        'line' => undef,
                                                                        'number' => 0,
                                                                        'patcount' => 0,
                                                                        'strcount' => 1,
                                                                        'uncommit' => undef
                                                                      }, 'KissApi::ParserRuntime::Production' )
                                                             ],
                                                  'vars' => ''
                                                }, 'KissApi::ParserRuntime::Rule' ),
                              'String' => bless( {
                                                   'calls' => [],
                                                   'changed' => 0,
                                                   'impcount' => 0,
                                                   'line' => 337,
                                                   'name' => 'String',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 1,
                                                                         'dircount' => 1,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'code' => 'my $oldskip = $skip; $skip= \'\\s*\'; $oldskip',
                                                                                               'hashname' => '__DIRECTIVE1__',
                                                                                               'line' => 337,
                                                                                               'lookahead' => 0,
                                                                                               'name' => '<skip: \'\\s*\'>'
                                                                                             }, 'KissApi::ParserRuntime::Directive' ),
                                                                                      bless( {
                                                                                               'description' => '/[-!#$%&()*+.\\\\/0-9:;<=>?\\\\@A-Z^_`\\\\|~ \\\\t]+/i',
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'ldelim' => '/',
                                                                                               'line' => 337,
                                                                                               'lookahead' => 0,
                                                                                               'mod' => 'i',
                                                                                               'pattern' => '[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~ \\t]+',
                                                                                               'rdelim' => '/'
                                                                                             }, 'KissApi::ParserRuntime::Token' ),
                                                                                      bless( {
                                                                                               'code' => '{
    $item[2] =~ s/[,\\s]*$//;

    $return = $item[2];
}',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'line' => 338,
                                                                                               'lookahead' => 0
                                                                                             }, 'KissApi::ParserRuntime::Action' )
                                                                                    ],
                                                                         'line' => undef,
                                                                         'number' => 0,
                                                                         'patcount' => 1,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'KissApi::ParserRuntime::Production' )
                                                              ],
                                                   'vars' => ''
                                                 }, 'KissApi::ParserRuntime::Rule' ),
                              'TypeInclude' => bless( {
                                                        'calls' => [
                                                                     'Filename'
                                                                   ],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 25,
                                                        'name' => 'TypeInclude',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 1,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'description' => '\'@types\'',
                                                                                                    'hashname' => '__STRING1__',
                                                                                                    'line' => 25,
                                                                                                    'lookahead' => 0,
                                                                                                    'pattern' => '@types'
                                                                                                  }, 'KissApi::ParserRuntime::Literal' ),
                                                                                           bless( {
                                                                                                    'description' => '/[<"]/',
                                                                                                    'hashname' => '__PATTERN1__',
                                                                                                    'ldelim' => '/',
                                                                                                    'line' => 25,
                                                                                                    'lookahead' => 0,
                                                                                                    'mod' => '',
                                                                                                    'pattern' => '[<"]',
                                                                                                    'rdelim' => '/'
                                                                                                  }, 'KissApi::ParserRuntime::Token' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 25,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'Filename'
                                                                                                  }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                           bless( {
                                                                                                    'description' => '/[>"]/',
                                                                                                    'hashname' => '__PATTERN2__',
                                                                                                    'ldelim' => '/',
                                                                                                    'line' => 25,
                                                                                                    'lookahead' => 0,
                                                                                                    'mod' => '',
                                                                                                    'pattern' => '[>"]',
                                                                                                    'rdelim' => '/'
                                                                                                  }, 'KissApi::ParserRuntime::Token' ),
                                                                                           bless( {
                                                                                                    'code' => '{
    print STDERR "type include found <$item[3]>\\n" if $::debug > 1;

    $thisparser->{_creator}->parse_types($item[3]);
}',
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'line' => 26,
                                                                                                    'lookahead' => 0
                                                                                                  }, 'KissApi::ParserRuntime::Action' )
                                                                                         ],
                                                                              'line' => undef,
                                                                              'number' => 0,
                                                                              'patcount' => 2,
                                                                              'strcount' => 1,
                                                                              'uncommit' => undef
                                                                            }, 'KissApi::ParserRuntime::Production' )
                                                                   ],
                                                        'vars' => ''
                                                      }, 'KissApi::ParserRuntime::Rule' ),
                              'Value' => bless( {
                                                  'calls' => [
                                                               '_alternation_1_of_production_1_of_rule_Value',
                                                               '_alternation_1_of_production_2_of_rule_Value',
                                                               '_alternation_1_of_production_3_of_rule_Value'
                                                             ],
                                                  'changed' => 0,
                                                  'impcount' => 1,
                                                  'line' => 281,
                                                  'name' => 'Value',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'implicit' => 'Colon',
                                                                                              'line' => 281,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => '_alternation_1_of_production_1_of_rule_Value'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' )
                                                                                   ],
                                                                        'line' => undef,
                                                                        'number' => 0,
                                                                        'patcount' => 0,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'KissApi::ParserRuntime::Production' ),
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'implicit' => 'Colon',
                                                                                              'line' => 281,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => '_alternation_1_of_production_2_of_rule_Value'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' )
                                                                                   ],
                                                                        'line' => 281,
                                                                        'number' => 1,
                                                                        'patcount' => 0,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'KissApi::ParserRuntime::Production' ),
                                                               bless( {
                                                                        'actcount' => 1,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'implicit' => 'Colon',
                                                                                              'line' => 281,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => '_alternation_1_of_production_3_of_rule_Value'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                     bless( {
                                                                                              'code' => '{
    $return = $item[2] || $item[1];
}',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'line' => 282,
                                                                                              'lookahead' => 0
                                                                                            }, 'KissApi::ParserRuntime::Action' )
                                                                                   ],
                                                                        'line' => 281,
                                                                        'number' => 2,
                                                                        'patcount' => 0,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'KissApi::ParserRuntime::Production' )
                                                             ],
                                                  'vars' => ''
                                                }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_1_of_rule_ArrayString' => bless( {
                                                                                               'calls' => [
                                                                                                            'SingleQuotedString',
                                                                                                            'DoubleQuotedString'
                                                                                                          ],
                                                                                               'changed' => 0,
                                                                                               'impcount' => 0,
                                                                                               'line' => 397,
                                                                                               'name' => '_alternation_1_of_production_1_of_rule_ArrayString',
                                                                                               'opcount' => 0,
                                                                                               'prods' => [
                                                                                                            bless( {
                                                                                                                     'actcount' => 0,
                                                                                                                     'dircount' => 0,
                                                                                                                     'error' => undef,
                                                                                                                     'items' => [
                                                                                                                                  bless( {
                                                                                                                                           'argcode' => undef,
                                                                                                                                           'implicit' => undef,
                                                                                                                                           'line' => 397,
                                                                                                                                           'lookahead' => 0,
                                                                                                                                           'matchrule' => 0,
                                                                                                                                           'subrule' => 'SingleQuotedString'
                                                                                                                                         }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                                ],
                                                                                                                     'line' => undef,
                                                                                                                     'number' => 0,
                                                                                                                     'patcount' => 0,
                                                                                                                     'strcount' => 0,
                                                                                                                     'uncommit' => undef
                                                                                                                   }, 'KissApi::ParserRuntime::Production' ),
                                                                                                            bless( {
                                                                                                                     'actcount' => 0,
                                                                                                                     'dircount' => 0,
                                                                                                                     'error' => undef,
                                                                                                                     'items' => [
                                                                                                                                  bless( {
                                                                                                                                           'argcode' => undef,
                                                                                                                                           'implicit' => undef,
                                                                                                                                           'line' => 397,
                                                                                                                                           'lookahead' => 0,
                                                                                                                                           'matchrule' => 0,
                                                                                                                                           'subrule' => 'DoubleQuotedString'
                                                                                                                                         }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                                ],
                                                                                                                     'line' => 397,
                                                                                                                     'number' => 1,
                                                                                                                     'patcount' => 0,
                                                                                                                     'strcount' => 0,
                                                                                                                     'uncommit' => undef
                                                                                                                   }, 'KissApi::ParserRuntime::Production' ),
                                                                                                            bless( {
                                                                                                                     'actcount' => 0,
                                                                                                                     'dircount' => 0,
                                                                                                                     'error' => undef,
                                                                                                                     'items' => [
                                                                                                                                  bless( {
                                                                                                                                           'description' => '/[-!#$%&()*+.\\\\/0-9:;<=>?\\\\@A-Z^_`\\\\|~]+/i',
                                                                                                                                           'hashname' => '__PATTERN1__',
                                                                                                                                           'ldelim' => '/',
                                                                                                                                           'line' => 397,
                                                                                                                                           'lookahead' => 0,
                                                                                                                                           'mod' => 'i',
                                                                                                                                           'pattern' => '[-!#$%&()*+.\\/0-9:;<=>?\\@A-Z^_`\\|~]+',
                                                                                                                                           'rdelim' => '/'
                                                                                                                                         }, 'KissApi::ParserRuntime::Token' )
                                                                                                                                ],
                                                                                                                     'line' => 397,
                                                                                                                     'number' => 2,
                                                                                                                     'patcount' => 1,
                                                                                                                     'strcount' => 0,
                                                                                                                     'uncommit' => undef
                                                                                                                   }, 'KissApi::ParserRuntime::Production' )
                                                                                                          ],
                                                                                               'vars' => ''
                                                                                             }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_1_of_rule_ArrayValue' => bless( {
                                                                                              'calls' => [
                                                                                                           'Colon',
                                                                                                           'Hash'
                                                                                                         ],
                                                                                              'changed' => 0,
                                                                                              'impcount' => 0,
                                                                                              'line' => 397,
                                                                                              'name' => '_alternation_1_of_production_1_of_rule_ArrayValue',
                                                                                              'opcount' => 0,
                                                                                              'prods' => [
                                                                                                           bless( {
                                                                                                                    'actcount' => 0,
                                                                                                                    'dircount' => 0,
                                                                                                                    'error' => undef,
                                                                                                                    'items' => [
                                                                                                                                 bless( {
                                                                                                                                          'argcode' => undef,
                                                                                                                                          'expected' => undef,
                                                                                                                                          'line' => 397,
                                                                                                                                          'lookahead' => 0,
                                                                                                                                          'matchrule' => 0,
                                                                                                                                          'max' => 1,
                                                                                                                                          'min' => 0,
                                                                                                                                          'repspec' => '?',
                                                                                                                                          'subrule' => 'Colon'
                                                                                                                                        }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                                                                 bless( {
                                                                                                                                          'argcode' => undef,
                                                                                                                                          'implicit' => undef,
                                                                                                                                          'line' => 397,
                                                                                                                                          'lookahead' => 0,
                                                                                                                                          'matchrule' => 0,
                                                                                                                                          'subrule' => 'Hash'
                                                                                                                                        }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                               ],
                                                                                                                    'line' => undef,
                                                                                                                    'number' => 0,
                                                                                                                    'patcount' => 0,
                                                                                                                    'strcount' => 0,
                                                                                                                    'uncommit' => undef
                                                                                                                  }, 'KissApi::ParserRuntime::Production' )
                                                                                                         ],
                                                                                              'vars' => ''
                                                                                            }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_1_of_rule_Service' => bless( {
                                                                                           'calls' => [
                                                                                                        'Description',
                                                                                                        'Parameters',
                                                                                                        'Security',
                                                                                                        'EndPoint'
                                                                                                      ],
                                                                                           'changed' => 0,
                                                                                           'impcount' => 0,
                                                                                           'line' => 397,
                                                                                           'name' => '_alternation_1_of_production_1_of_rule_Service',
                                                                                           'opcount' => 0,
                                                                                           'prods' => [
                                                                                                        bless( {
                                                                                                                 'actcount' => 0,
                                                                                                                 'dircount' => 0,
                                                                                                                 'error' => undef,
                                                                                                                 'items' => [
                                                                                                                              bless( {
                                                                                                                                       'argcode' => undef,
                                                                                                                                       'implicit' => undef,
                                                                                                                                       'line' => 397,
                                                                                                                                       'lookahead' => 0,
                                                                                                                                       'matchrule' => 0,
                                                                                                                                       'subrule' => 'Description'
                                                                                                                                     }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                            ],
                                                                                                                 'line' => undef,
                                                                                                                 'number' => 0,
                                                                                                                 'patcount' => 0,
                                                                                                                 'strcount' => 0,
                                                                                                                 'uncommit' => undef
                                                                                                               }, 'KissApi::ParserRuntime::Production' ),
                                                                                                        bless( {
                                                                                                                 'actcount' => 0,
                                                                                                                 'dircount' => 0,
                                                                                                                 'error' => undef,
                                                                                                                 'items' => [
                                                                                                                              bless( {
                                                                                                                                       'argcode' => undef,
                                                                                                                                       'implicit' => undef,
                                                                                                                                       'line' => 397,
                                                                                                                                       'lookahead' => 0,
                                                                                                                                       'matchrule' => 0,
                                                                                                                                       'subrule' => 'Parameters'
                                                                                                                                     }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                            ],
                                                                                                                 'line' => 397,
                                                                                                                 'number' => 1,
                                                                                                                 'patcount' => 0,
                                                                                                                 'strcount' => 0,
                                                                                                                 'uncommit' => undef
                                                                                                               }, 'KissApi::ParserRuntime::Production' ),
                                                                                                        bless( {
                                                                                                                 'actcount' => 0,
                                                                                                                 'dircount' => 0,
                                                                                                                 'error' => undef,
                                                                                                                 'items' => [
                                                                                                                              bless( {
                                                                                                                                       'argcode' => undef,
                                                                                                                                       'implicit' => undef,
                                                                                                                                       'line' => 397,
                                                                                                                                       'lookahead' => 0,
                                                                                                                                       'matchrule' => 0,
                                                                                                                                       'subrule' => 'Security'
                                                                                                                                     }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                            ],
                                                                                                                 'line' => 397,
                                                                                                                 'number' => 2,
                                                                                                                 'patcount' => 0,
                                                                                                                 'strcount' => 0,
                                                                                                                 'uncommit' => undef
                                                                                                               }, 'KissApi::ParserRuntime::Production' ),
                                                                                                        bless( {
                                                                                                                 'actcount' => 0,
                                                                                                                 'dircount' => 0,
                                                                                                                 'error' => undef,
                                                                                                                 'items' => [
                                                                                                                              bless( {
                                                                                                                                       'argcode' => undef,
                                                                                                                                       'implicit' => undef,
                                                                                                                                       'line' => 397,
                                                                                                                                       'lookahead' => 0,
                                                                                                                                       'matchrule' => 0,
                                                                                                                                       'subrule' => 'EndPoint'
                                                                                                                                     }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                            ],
                                                                                                                 'line' => 397,
                                                                                                                 'number' => 3,
                                                                                                                 'patcount' => 0,
                                                                                                                 'strcount' => 0,
                                                                                                                 'uncommit' => undef
                                                                                                               }, 'KissApi::ParserRuntime::Production' )
                                                                                                      ],
                                                                                           'vars' => ''
                                                                                         }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_1_of_rule_Value' => bless( {
                                                                                         'calls' => [
                                                                                                      'Colon',
                                                                                                      'Hash'
                                                                                                    ],
                                                                                         'changed' => 0,
                                                                                         'impcount' => 0,
                                                                                         'line' => 397,
                                                                                         'name' => '_alternation_1_of_production_1_of_rule_Value',
                                                                                         'opcount' => 0,
                                                                                         'prods' => [
                                                                                                      bless( {
                                                                                                               'actcount' => 0,
                                                                                                               'dircount' => 0,
                                                                                                               'error' => undef,
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'expected' => undef,
                                                                                                                                     'line' => 397,
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'max' => 1,
                                                                                                                                     'min' => 0,
                                                                                                                                     'repspec' => '?',
                                                                                                                                     'subrule' => 'Colon'
                                                                                                                                   }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                                                            bless( {
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'line' => 397,
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'subrule' => 'Hash'
                                                                                                                                   }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                          ],
                                                                                                               'line' => undef,
                                                                                                               'number' => 0,
                                                                                                               'patcount' => 0,
                                                                                                               'strcount' => 0,
                                                                                                               'uncommit' => undef
                                                                                                             }, 'KissApi::ParserRuntime::Production' )
                                                                                                    ],
                                                                                         'vars' => ''
                                                                                       }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_1_of_rule_startrule' => bless( {
                                                                                             'calls' => [
                                                                                                          'TypeInclude',
                                                                                                          'Include',
                                                                                                          'API'
                                                                                                        ],
                                                                                             'changed' => 0,
                                                                                             'impcount' => 0,
                                                                                             'line' => 397,
                                                                                             'name' => '_alternation_1_of_production_1_of_rule_startrule',
                                                                                             'opcount' => 0,
                                                                                             'prods' => [
                                                                                                          bless( {
                                                                                                                   'actcount' => 0,
                                                                                                                   'dircount' => 0,
                                                                                                                   'error' => undef,
                                                                                                                   'items' => [
                                                                                                                                bless( {
                                                                                                                                         'argcode' => undef,
                                                                                                                                         'implicit' => undef,
                                                                                                                                         'line' => 397,
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'subrule' => 'TypeInclude'
                                                                                                                                       }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                              ],
                                                                                                                   'line' => undef,
                                                                                                                   'number' => 0,
                                                                                                                   'patcount' => 0,
                                                                                                                   'strcount' => 0,
                                                                                                                   'uncommit' => undef
                                                                                                                 }, 'KissApi::ParserRuntime::Production' ),
                                                                                                          bless( {
                                                                                                                   'actcount' => 0,
                                                                                                                   'dircount' => 0,
                                                                                                                   'error' => undef,
                                                                                                                   'items' => [
                                                                                                                                bless( {
                                                                                                                                         'argcode' => undef,
                                                                                                                                         'implicit' => undef,
                                                                                                                                         'line' => 397,
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'subrule' => 'Include'
                                                                                                                                       }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                              ],
                                                                                                                   'line' => 397,
                                                                                                                   'number' => 1,
                                                                                                                   'patcount' => 0,
                                                                                                                   'strcount' => 0,
                                                                                                                   'uncommit' => undef
                                                                                                                 }, 'KissApi::ParserRuntime::Production' ),
                                                                                                          bless( {
                                                                                                                   'actcount' => 0,
                                                                                                                   'dircount' => 0,
                                                                                                                   'error' => undef,
                                                                                                                   'items' => [
                                                                                                                                bless( {
                                                                                                                                         'argcode' => undef,
                                                                                                                                         'implicit' => undef,
                                                                                                                                         'line' => 397,
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'subrule' => 'API'
                                                                                                                                       }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                              ],
                                                                                                                   'line' => 397,
                                                                                                                   'number' => 2,
                                                                                                                   'patcount' => 0,
                                                                                                                   'strcount' => 0,
                                                                                                                   'uncommit' => undef
                                                                                                                 }, 'KissApi::ParserRuntime::Production' )
                                                                                                        ],
                                                                                             'vars' => ''
                                                                                           }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_2_of_rule_ArrayValue' => bless( {
                                                                                              'calls' => [
                                                                                                           'Colon',
                                                                                                           'Array'
                                                                                                         ],
                                                                                              'changed' => 0,
                                                                                              'impcount' => 0,
                                                                                              'line' => 397,
                                                                                              'name' => '_alternation_1_of_production_2_of_rule_ArrayValue',
                                                                                              'opcount' => 0,
                                                                                              'prods' => [
                                                                                                           bless( {
                                                                                                                    'actcount' => 0,
                                                                                                                    'dircount' => 0,
                                                                                                                    'error' => undef,
                                                                                                                    'items' => [
                                                                                                                                 bless( {
                                                                                                                                          'argcode' => undef,
                                                                                                                                          'expected' => undef,
                                                                                                                                          'line' => 397,
                                                                                                                                          'lookahead' => 0,
                                                                                                                                          'matchrule' => 0,
                                                                                                                                          'max' => 1,
                                                                                                                                          'min' => 0,
                                                                                                                                          'repspec' => '?',
                                                                                                                                          'subrule' => 'Colon'
                                                                                                                                        }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                                                                 bless( {
                                                                                                                                          'argcode' => undef,
                                                                                                                                          'implicit' => undef,
                                                                                                                                          'line' => 397,
                                                                                                                                          'lookahead' => 0,
                                                                                                                                          'matchrule' => 0,
                                                                                                                                          'subrule' => 'Array'
                                                                                                                                        }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                               ],
                                                                                                                    'line' => undef,
                                                                                                                    'number' => 0,
                                                                                                                    'patcount' => 0,
                                                                                                                    'strcount' => 0,
                                                                                                                    'uncommit' => undef
                                                                                                                  }, 'KissApi::ParserRuntime::Production' )
                                                                                                         ],
                                                                                              'vars' => ''
                                                                                            }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_2_of_rule_Value' => bless( {
                                                                                         'calls' => [
                                                                                                      'Colon',
                                                                                                      'Array'
                                                                                                    ],
                                                                                         'changed' => 0,
                                                                                         'impcount' => 0,
                                                                                         'line' => 397,
                                                                                         'name' => '_alternation_1_of_production_2_of_rule_Value',
                                                                                         'opcount' => 0,
                                                                                         'prods' => [
                                                                                                      bless( {
                                                                                                               'actcount' => 0,
                                                                                                               'dircount' => 0,
                                                                                                               'error' => undef,
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'expected' => undef,
                                                                                                                                     'line' => 397,
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'max' => 1,
                                                                                                                                     'min' => 0,
                                                                                                                                     'repspec' => '?',
                                                                                                                                     'subrule' => 'Colon'
                                                                                                                                   }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                                                            bless( {
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'line' => 397,
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'subrule' => 'Array'
                                                                                                                                   }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                          ],
                                                                                                               'line' => undef,
                                                                                                               'number' => 0,
                                                                                                               'patcount' => 0,
                                                                                                               'strcount' => 0,
                                                                                                               'uncommit' => undef
                                                                                                             }, 'KissApi::ParserRuntime::Production' )
                                                                                                    ],
                                                                                         'vars' => ''
                                                                                       }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_3_of_rule_ArrayValue' => bless( {
                                                                                              'calls' => [
                                                                                                           'Colon',
                                                                                                           'ArrayString'
                                                                                                         ],
                                                                                              'changed' => 0,
                                                                                              'impcount' => 0,
                                                                                              'line' => 397,
                                                                                              'name' => '_alternation_1_of_production_3_of_rule_ArrayValue',
                                                                                              'opcount' => 0,
                                                                                              'prods' => [
                                                                                                           bless( {
                                                                                                                    'actcount' => 0,
                                                                                                                    'dircount' => 0,
                                                                                                                    'error' => undef,
                                                                                                                    'items' => [
                                                                                                                                 bless( {
                                                                                                                                          'argcode' => undef,
                                                                                                                                          'implicit' => undef,
                                                                                                                                          'line' => 397,
                                                                                                                                          'lookahead' => 0,
                                                                                                                                          'matchrule' => 0,
                                                                                                                                          'subrule' => 'Colon'
                                                                                                                                        }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                                                 bless( {
                                                                                                                                          'argcode' => undef,
                                                                                                                                          'implicit' => undef,
                                                                                                                                          'line' => 397,
                                                                                                                                          'lookahead' => 0,
                                                                                                                                          'matchrule' => 0,
                                                                                                                                          'subrule' => 'ArrayString'
                                                                                                                                        }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                               ],
                                                                                                                    'line' => undef,
                                                                                                                    'number' => 0,
                                                                                                                    'patcount' => 0,
                                                                                                                    'strcount' => 0,
                                                                                                                    'uncommit' => undef
                                                                                                                  }, 'KissApi::ParserRuntime::Production' )
                                                                                                         ],
                                                                                              'vars' => ''
                                                                                            }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_3_of_rule_Value' => bless( {
                                                                                         'calls' => [
                                                                                                      'Colon',
                                                                                                      'AnyString'
                                                                                                    ],
                                                                                         'changed' => 0,
                                                                                         'impcount' => 0,
                                                                                         'line' => 397,
                                                                                         'name' => '_alternation_1_of_production_3_of_rule_Value',
                                                                                         'opcount' => 0,
                                                                                         'prods' => [
                                                                                                      bless( {
                                                                                                               'actcount' => 0,
                                                                                                               'dircount' => 0,
                                                                                                               'error' => undef,
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'line' => 397,
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'subrule' => 'Colon'
                                                                                                                                   }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                                            bless( {
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'line' => 397,
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'subrule' => 'AnyString'
                                                                                                                                   }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                          ],
                                                                                                               'line' => undef,
                                                                                                               'number' => 0,
                                                                                                               'patcount' => 0,
                                                                                                               'strcount' => 0,
                                                                                                               'uncommit' => undef
                                                                                                             }, 'KissApi::ParserRuntime::Production' )
                                                                                                    ],
                                                                                         'vars' => ''
                                                                                       }, 'KissApi::ParserRuntime::Rule' ),
                              'startrule' => bless( {
                                                      'calls' => [
                                                                   '_alternation_1_of_production_1_of_rule_startrule'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 1,
                                                      'line' => 12,
                                                      'name' => 'startrule',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 1,
                                                                            'dircount' => 1,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'code' => 'my $oldskip = $skip; $skip= qr{(?xs:
          (?: \\s+                       # Whitespace
          |   /[*] (?:(?![*]/).)* [*]/  # Inline comment
          |   // [^\\n]* \\n?             # End of line comment
          )
       )*}; $oldskip',
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'line' => 13,
                                                                                                  'lookahead' => 0,
                                                                                                  'name' => '<skip: qr{(?xs:
          (?: \\s+                       # Whitespace
          |   /[*] (?:(?![*]/).)* [*]/  # Inline comment
          |   // [^\\n]* \\n?             # End of line comment
          )
       )*}>'
                                                                                                }, 'KissApi::ParserRuntime::Directive' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'expected' => 'TypeInclude, or Include, or API',
                                                                                                  'line' => 19,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'max' => 100000000,
                                                                                                  'min' => 1,
                                                                                                  'repspec' => 's',
                                                                                                  'subrule' => '_alternation_1_of_production_1_of_rule_startrule'
                                                                                                }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                         bless( {
                                                                                                  'description' => '/\\\\Z/',
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'ldelim' => '/',
                                                                                                  'line' => 20,
                                                                                                  'lookahead' => 0,
                                                                                                  'mod' => '',
                                                                                                  'pattern' => '\\Z',
                                                                                                  'rdelim' => '/'
                                                                                                }, 'KissApi::ParserRuntime::Token' ),
                                                                                         bless( {
                                                                                                  'code' => '{ $item[2] }',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'line' => 21,
                                                                                                  'lookahead' => 0
                                                                                                }, 'KissApi::ParserRuntime::Action' )
                                                                                       ],
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'patcount' => 1,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'KissApi::ParserRuntime::Production' )
                                                                 ],
                                                      'vars' => ''
                                                    }, 'KissApi::ParserRuntime::Rule' )
                            },
                 'startcode' => ''
               }, 'KissApi::ParserRuntime' );
}