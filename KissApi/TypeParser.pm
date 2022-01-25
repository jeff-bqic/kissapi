#
# This parser was generated with
# Parse::RecDescent version 1.967015
#

package KissApi::TypeParser;
use KissApi::ParserRuntime;
{ my $ERRORS;


package KissApi::ParserRuntime::KissApi::TypeParser;
use strict;
use vars qw($skip $AUTOLOAD  );
@KissApi::ParserRuntime::KissApi::TypeParser::ISA = ();
$skip = '\\s*';


    use Data::Dumper::Concise;
    use File::Slurp;
    use KissApi::Globals;

    $::RD_ERRORS = 1;
    $::RD_WARN = 3;
    $::RD_HINT = 1;

    $::RD_AUTOACTION = q { $return = $#item == 1 ? { $item[0] => $item[1] } : { %item } };
;


{
local $SIG{__WARN__} = sub {0};
# PRETEND TO BE IN KissApi::ParserRuntime NAMESPACE
*KissApi::ParserRuntime::KissApi::TypeParser::AUTOLOAD   = sub
{
    no strict 'refs';

    ${"AUTOLOAD"} =~ s/^KissApi::ParserRuntime::KissApi::TypeParser/KissApi::ParserRuntime/;
    goto &{${"AUTOLOAD"}};
}
}

push @KissApi::ParserRuntime::KissApi::TypeParser::ISA, 'KissApi::ParserRuntime';
# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::AnyString
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::SingleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::DoubleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::String($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Array
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
        
        KissApi::ParserRuntime::_trace(q{Trying production: [OpenBracket ArrayItem FinalArrayItem CloseBracket]},
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::OpenBracket($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::ArrayItem, 0, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
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
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [FinalArrayItem]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Array},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{FinalArrayItem})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::FinalArrayItem($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [FinalArrayItem]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Array},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [FinalArrayItem]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Array},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{FinalArrayItem}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBracket]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Array},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBracket})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::CloseBracket($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
    print "/" x 80, "\nArray:\n\@item:\n", Dumper(\@item), "%item:\n", Dumper(\%item), "/" x 80, "\n" if $::debug > 2;

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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [OpenBracket ArrayItem FinalArrayItem CloseBracket]<<},
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
sub KissApi::ParserRuntime::KissApi::TypeParser::ArrayItem
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::FinalArrayItem($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Comma]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ArrayItem},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Comma})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Comma($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Comma]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ArrayItem},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Comma]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Comma}} = $_tok;
        push @item, $_tok;
        
        }

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
sub KissApi::ParserRuntime::KissApi::TypeParser::At
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
sub KissApi::ParserRuntime::KissApi::TypeParser::AttributeDefinition
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"AttributeDefinition"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [AttributeDefinition]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{AttributeDefinition},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{AttributeName});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [AttributeName Colon Value Comma]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{AttributeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{AttributeDefinition});
        %item = (__RULE__ => q{AttributeDefinition});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [AttributeName]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{AttributeDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::AttributeName($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [AttributeName]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{AttributeDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [AttributeName]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AttributeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{AttributeName}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{AttributeDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Colon})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Colon($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{AttributeDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Colon]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AttributeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Value]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{AttributeDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Value})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Value($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Value]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{AttributeDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Value]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AttributeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Value}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Comma]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{AttributeDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Comma})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::Comma, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Comma]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{AttributeDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Comma]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AttributeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Comma(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AttributeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = { $item{AttributeName} => $item{Value} };
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [AttributeName Colon Value Comma]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AttributeDefinition},
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
                     q{AttributeDefinition},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{AttributeDefinition},
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
                      q{AttributeDefinition},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{AttributeDefinition},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::AttributeName
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"AttributeName"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [AttributeName]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{AttributeName},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/[a-z]\\w*\\??/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/[a-z]\\w*\\??/i]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{AttributeName},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{AttributeName});
        %item = (__RULE__ => q{AttributeName});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[a-z]\\w*\\??/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{AttributeName},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[a-z]\w*\??)/i)
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/[a-z]\\w*\\??/i]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{AttributeName},
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
                     q{AttributeName},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{AttributeName},
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
                      q{AttributeName},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{AttributeName},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::CloseBrace
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
sub KissApi::ParserRuntime::KissApi::TypeParser::CloseBracket
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Colon
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Comma
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Comment
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
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::SingleLineComment, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::MultiLineComment($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Dot
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
sub KissApi::ParserRuntime::KissApi::TypeParser::DoubleQuote
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
sub KissApi::ParserRuntime::KissApi::TypeParser::DoubleQuotedString
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::DoubleQuote($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::DoubleQuote($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
sub KissApi::ParserRuntime::KissApi::TypeParser::EOF
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
sub KissApi::ParserRuntime::KissApi::TypeParser::EnumList
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"EnumList"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [EnumList]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{EnumList},
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
        
        KissApi::ParserRuntime::_trace(q{Trying production: [OpenBracket ListEntry CloseBracket]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{EnumList},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{EnumList});
        %item = (__RULE__ => q{EnumList});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [OpenBracket]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EnumList},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::OpenBracket($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [OpenBracket]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EnumList},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [OpenBracket]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EnumList},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{OpenBracket}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [ListEntry]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EnumList},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{ListEntry})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::ListEntry, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [ListEntry]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EnumList},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [ListEntry]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EnumList},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ListEntry(s)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBracket]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{EnumList},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBracket})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::CloseBracket($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [CloseBracket]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{EnumList},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [CloseBracket]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EnumList},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CloseBracket}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EnumList},
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [OpenBracket ListEntry CloseBracket]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{EnumList},
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
                     q{EnumList},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{EnumList},
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
                      q{EnumList},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{EnumList},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::Equals
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Filename
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
sub KissApi::ParserRuntime::KissApi::TypeParser::FinalArrayItem
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{KeyValuePair, or Hash, or Array, or AnyString});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [KeyValuePair]},
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


        KissApi::ParserRuntime::_trace(q{Trying subrule: [KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{FinalArrayItem},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::KeyValuePair($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [KeyValuePair]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{FinalArrayItem},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [KeyValuePair]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{KeyValuePair}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [KeyValuePair]<<},
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Hash($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
        
        KissApi::ParserRuntime::_trace(q{Trying production: [AnyString]},
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


        KissApi::ParserRuntime::_trace(q{Trying subrule: [AnyString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{FinalArrayItem},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::AnyString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [AnyString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{FinalArrayItem},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [AnyString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{FinalArrayItem},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{AnyString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [AnyString]<<},
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
sub KissApi::ParserRuntime::KissApi::TypeParser::GreaterThan
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"GreaterThan"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [GreaterThan]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{GreaterThan},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'>'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['>']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{GreaterThan},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{GreaterThan});
        %item = (__RULE__ => q{GreaterThan});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['>']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{GreaterThan},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\>/)
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['>']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{GreaterThan},
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
                     q{GreaterThan},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{GreaterThan},
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
                      q{GreaterThan},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{GreaterThan},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::Hash
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::OpenBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::KeyValuePair, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::CloseBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
    print "/" x 80, "\nHash:\n\@item:\n", Dumper(\@item), "%item:\n", Dumper(\%item), "/" x 80, "\n" if $::debug > 2;

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
sub KissApi::ParserRuntime::KissApi::TypeParser::IModifier
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"IModifier"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [IModifier]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{IModifier},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'i'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['i']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{IModifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{IModifier});
        %item = (__RULE__ => q{IModifier});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['i']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{IModifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\Ai/)
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['i']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{IModifier},
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
                     q{IModifier},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{IModifier},
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
                      q{IModifier},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{IModifier},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::Identifier
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/[a-z][a-z0-9_]*/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/[a-z][a-z0-9_]*/i]},
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


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[a-z][a-z0-9_]*/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Identifier},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[a-z][a-z0-9_]*)/i)
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/[a-z][a-z0-9_]*/i]<<},
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Include
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Filename($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Inheritance
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Inheritance"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Inheritance]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Inheritance},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{ParentTypeName});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [ParentTypeName Range]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Inheritance},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Inheritance});
        %item = (__RULE__ => q{Inheritance});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [ParentTypeName]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Inheritance},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::ParentTypeName($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [ParentTypeName]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Inheritance},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [ParentTypeName]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Inheritance},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ParentTypeName}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Range]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Inheritance},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Range})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::Range, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Range]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Inheritance},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Range]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Inheritance},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Range(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Inheritance},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = { parent => $item{ParentTypeName}, range => $item{'Range(?)'}[0] };
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [ParentTypeName Range]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Inheritance},
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
                     q{Inheritance},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Inheritance},
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
                      q{Inheritance},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Inheritance},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::Integer
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Key
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Identifier($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::SingleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::DoubleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
sub KissApi::ParserRuntime::KissApi::TypeParser::KeyValuePair
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
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Key Colon]},
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Key($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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

        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Colon})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_1_of_rule_KeyValuePair($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_KeyValuePair]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_KeyValuePair]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_KeyValuePair}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = { $item[1] => $item[3] };
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Key Colon]<<},
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
sub KissApi::ParserRuntime::KissApi::TypeParser::ListEntry
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ListEntry"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [ListEntry]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{ListEntry},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Number, or Identifier});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Number, or Identifier Comma]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ListEntry},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ListEntry});
        %item = (__RULE__ => q{ListEntry});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_ListEntry]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ListEntry},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_1_of_rule_ListEntry($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_ListEntry]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ListEntry},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_ListEntry]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ListEntry},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_ListEntry}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Comma]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{ListEntry},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Comma})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::Comma, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Comma]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{ListEntry},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Comma]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ListEntry},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Comma(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ListEntry},
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Number, or Identifier Comma]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ListEntry},
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
                     q{ListEntry},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{ListEntry},
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
                      q{ListEntry},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{ListEntry},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::LowerThan
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"LowerThan"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [LowerThan]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{LowerThan},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{'<'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: ['<']},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{LowerThan},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{LowerThan});
        %item = (__RULE__ => q{LowerThan});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: ['<']},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{LowerThan},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\</)
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: ['<']<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{LowerThan},
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
                     q{LowerThan},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{LowerThan},
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
                      q{LowerThan},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{LowerThan},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::Max
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Max"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Max]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Max},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Integer});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Integer]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Max},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Max});
        %item = (__RULE__ => q{Max});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Integer]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Max},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Integer($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Integer]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Max},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Integer]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Max},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Integer}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Integer]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Max},
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
                     q{Max},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Max},
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
                      q{Max},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Max},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::Min
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Min"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Min]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Min},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Integer});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Integer Dot Dot]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Min},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Min});
        %item = (__RULE__ => q{Min});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Integer]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Min},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::Integer, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Integer]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Min},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Integer]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Min},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Integer(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Dot]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Min},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Dot})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Dot($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Dot]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Min},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Dot]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Min},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Dot}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Dot]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Min},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Dot})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Dot($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Dot]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Min},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Dot]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Min},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Dot}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Min},
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Integer Dot Dot]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Min},
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
                     q{Min},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Min},
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
                      q{Min},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Min},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::Minus
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
sub KissApi::ParserRuntime::KissApi::TypeParser::MultiLineComment
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
sub KissApi::ParserRuntime::KissApi::TypeParser::NewLine
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Number
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
sub KissApi::ParserRuntime::KissApi::TypeParser::OpenBrace
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
sub KissApi::ParserRuntime::KissApi::TypeParser::OpenBracket
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
sub KissApi::ParserRuntime::KissApi::TypeParser::ParentTypeName
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ParentTypeName"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [ParentTypeName]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{ParentTypeName},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/[a-z]\\w*/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/[a-z]\\w*/i]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{ParentTypeName},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ParentTypeName});
        %item = (__RULE__ => q{ParentTypeName});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[a-z]\\w*/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{ParentTypeName},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[a-z]\w*)/i)
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/[a-z]\\w*/i]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{ParentTypeName},
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
                     q{ParentTypeName},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{ParentTypeName},
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
                      q{ParentTypeName},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{ParentTypeName},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::Pattern
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Pattern"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Pattern]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Pattern},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Slash});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Slash /(\\\\\\/|[^\\/])+/ Slash IModifier]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Pattern},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Pattern});
        %item = (__RULE__ => q{Pattern});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Slash]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Pattern},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Slash($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Slash]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Pattern},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Slash]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Pattern},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Slash}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying terminal: [/(\\\\\\/|[^\\/])+/]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{Pattern},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/(\\\\\\/|[^\\/])+/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:(\\\/|[^\/])+)/)
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
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Slash]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Pattern},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Slash})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Slash($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Slash]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Pattern},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Slash]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Pattern},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Slash}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [IModifier]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Pattern},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{IModifier})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::IModifier, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [IModifier]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Pattern},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [IModifier]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Pattern},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{IModifier(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Pattern},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $return = join "", @item[1..$#item - 1], $item[$#item][0];
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Slash /(\\\\\\/|[^\\/])+/ Slash IModifier]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Pattern},
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
                     q{Pattern},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Pattern},
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
                      q{Pattern},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Pattern},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::Plus
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Property
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Property"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Property]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Property},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{TypeDefinition, or AttributeDefinition});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [TypeDefinition]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Property},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Property});
        %item = (__RULE__ => q{Property});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [TypeDefinition]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Property},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::TypeDefinition($thisparser,$text,$repeating,$_noactions,sub { return [is_recursive => 1] },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [TypeDefinition]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Property},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [TypeDefinition]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Property},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{TypeDefinition}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [TypeDefinition]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Property},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [AttributeDefinition]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Property},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{Property});
        %item = (__RULE__ => q{Property});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [AttributeDefinition]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Property},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::AttributeDefinition($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [AttributeDefinition]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Property},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [AttributeDefinition]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Property},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{AttributeDefinition}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [AttributeDefinition]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Property},
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
                     q{Property},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Property},
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
                      q{Property},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Property},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::Range
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"Range"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [Range]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{Range},
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
        
        KissApi::ParserRuntime::_trace(q{Trying production: [OpenBracket Integer Dot Integer CloseBracket]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Range},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{Range});
        %item = (__RULE__ => q{Range});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [OpenBracket]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Range},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::OpenBracket($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [OpenBracket]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Range},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [OpenBracket]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Range},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{OpenBracket}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Integer]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Range},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Integer})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::Integer, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Integer]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Range},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Integer]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Range},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Integer(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Dot]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Range},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Dot})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_1_of_rule_Range, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Dot]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Range},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [_alternation_1_of_production_1_of_rule_Range]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Range},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_Range(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Integer]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Range},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Integer})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::Integer, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Integer]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Range},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Integer]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Range},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Integer(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBracket]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Range},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBracket})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::CloseBracket($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [CloseBracket]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Range},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [CloseBracket]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Range},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CloseBracket}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Range},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    my ($min, $max) = ($item[2][0], $item[4][0]);

    if ($item[3][0])
    {
        $min //= '-Infinite';
        $max //= 'Infinite';
    }
    else
    {
        $max = $min;
    }

    $return = { min => $min, max => $max };
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [OpenBracket Integer Dot Integer CloseBracket]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Range},
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
                     q{Range},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{Range},
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
                      q{Range},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{Range},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::SingleLineComment
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
sub KissApi::ParserRuntime::KissApi::TypeParser::SingleQuote
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
sub KissApi::ParserRuntime::KissApi::TypeParser::SingleQuotedString
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::SingleQuote($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::SingleQuote($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
sub KissApi::ParserRuntime::KissApi::TypeParser::Slash
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
sub KissApi::ParserRuntime::KissApi::TypeParser::String
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
sub KissApi::ParserRuntime::KissApi::TypeParser::TypeDefinition
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"TypeDefinition"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [TypeDefinition]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{TypeDefinition},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{TypeName});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [TypeName Colon Inheritance TypeDescription OpenBrace Property CloseBrace]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{TypeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{TypeDefinition});
        %item = (__RULE__ => q{TypeDefinition});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [TypeName]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{TypeDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::TypeName($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [TypeName]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{TypeDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [TypeName]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{TypeName}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{TypeDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Colon})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::Colon, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{TypeDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Colon]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Inheritance]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{TypeDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Inheritance})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::Inheritance, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Inheritance]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{TypeDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Inheritance]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Inheritance(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [TypeDescription]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{TypeDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{TypeDescription})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::TypeDescription, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [TypeDescription]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{TypeDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [TypeDescription]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{TypeDescription(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [OpenBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{TypeDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{OpenBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::OpenBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [OpenBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{TypeDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [OpenBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{OpenBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Property]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{TypeDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Property})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::Property, 0, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Property]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{TypeDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Property]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Property(s?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [CloseBrace]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{TypeDefinition},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{CloseBrace})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::CloseBrace($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [CloseBrace]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{TypeDefinition},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [CloseBrace]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{CloseBrace}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDefinition},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    delete $item{CloseBrace};
    delete $item{OpenBrace};
    delete $item{'Colon(?)'};

    $item{Parent} = $item{'Inheritance(?)'}[0]->{parent} || 'Class';
    $item{Range} = $item{'Inheritance(?)'}[0]->{range};
    delete $item{'Inheritance(?)'};

    # delete magic KissApi::ParserRuntime keys /__[A-Z0-9]+__/
    delete $item{$_} foreach grep { /^__[A-Z0-9]+__$/ } keys %item;

    $item{Properties} = {};
    @{$item{AttributesOrder}} = () if $item{Parent} eq 'Class' || ! $BasicTypes->{$item{Parent}};

    print "+++TypeName: <$item{TypeName}>\n" if $::debug > 2;
    print "+++Parent: <$item{Parent}>\n" if $::debug > 2;
    print "+++Properties:\n", Dumper(@{$item{'Property(s?)'}}) if $::debug > 2;

    foreach my $prop (@{$item{'Property(s?)'}})
    {
        if ($prop->{TypeName})
        {
            if ($prop->{TypeName} =~ /^(.*)\?$/)
            {
                $prop->{TypeName} = $1;
                $prop->{Optional} = 1;
            }

            push @{$item{AttributesOrder}}, $prop->{TypeName} if $item{Parent} eq 'Class' || ! $BasicTypes->{$item{Parent}};

            $item{Properties}->{$prop->{TypeName}} = $prop;
            delete $item{Properties}->{$prop->{TypeName}}->{TypeName};
        }
        else
        {
            push @{$item{AttributesOrder}}, (keys %$prop)[0] if $item{Parent} eq 'Class' || ! $BasicTypes->{$item{Parent}};
            $item{Properties} = { %{$item{Properties}}, %$prop };
        }
    }
    delete $item{'Property(s?)'};

    $item{TypeDescription} = $item{'TypeDescription(?)'}[0]
        if defined($item{'TypeDescription(?)'}[0]);
    delete $item{'TypeDescription(?)'};

    unless ($arg{is_recursive})
    {
        print STDERR "type parsed <$item{TypeName}>:\n", Dumper(\%item) if $::debug > 2;

        $thisparser->{_type_library}->type(\%item);
    }

    $return = { %item };

    1;
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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [TypeName Colon Inheritance TypeDescription OpenBrace Property CloseBrace]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDefinition},
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
                     q{TypeDefinition},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{TypeDefinition},
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
                      q{TypeDefinition},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{TypeDefinition},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::TypeDescription
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"TypeDescription"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [TypeDescription]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{TypeDescription},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{LowerThan});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [LowerThan /(\\\\>|[-!#$%&()*+.\\/0-9:;<=?\\@A-Z^_`\\|~ \\t])+/i GreaterThan]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{TypeDescription},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{TypeDescription});
        %item = (__RULE__ => q{TypeDescription});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [LowerThan]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{TypeDescription},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::LowerThan($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [LowerThan]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{TypeDescription},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [LowerThan]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDescription},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{LowerThan}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying terminal: [/(\\\\>|[-!#$%&()*+.\\/0-9:;<=?\\@A-Z^_`\\|~ \\t])+/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDescription},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/(\\\\>|[-!#$%&()*+.\\/0-9:;<=?\\@A-Z^_`\\|~ \\t])+/i})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:(\\>|[-!#$%&()*+.\/0-9:;<=?\@A-Z^_`\|~ \t])+)/i)
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
        

        KissApi::ParserRuntime::_trace(q{Trying subrule: [GreaterThan]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{TypeDescription},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{GreaterThan})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::GreaterThan($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [GreaterThan]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{TypeDescription},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [GreaterThan]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDescription},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{GreaterThan}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying action},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDescription},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    $item[2] =~ s/\\>/>/g;

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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [LowerThan /(\\\\>|[-!#$%&()*+.\\/0-9:;<=?\\@A-Z^_`\\|~ \\t])+/i GreaterThan]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeDescription},
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
                     q{TypeDescription},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{TypeDescription},
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
                      q{TypeDescription},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{TypeDescription},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::TypeName
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"TypeName"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [TypeName]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{TypeName},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{/[a-z]\\w*\\??/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [/[a-z]\\w*\\??/i]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{TypeName},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{TypeName});
        %item = (__RULE__ => q{TypeName});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying terminal: [/[a-z]\\w*\\??/i]}, KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeName},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[a-z]\w*\??)/i)
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
                      q{TypeName},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
    print "+++TypeName: $item[1]\n" if $::debug > 3;

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
        

        KissApi::ParserRuntime::_trace(q{>>Matched production: [/[a-z]\\w*\\??/i]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{TypeName},
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
                     q{TypeName},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{TypeName},
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
                      q{TypeName},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{TypeName},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::Value
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Pattern, or SingleQuotedString, or DoubleQuotedString, or EnumList, or Integer, or Number, or Hash, or Array, or String});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Pattern]},
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


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Pattern]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Pattern($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Pattern]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Pattern]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Pattern}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Pattern]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [SingleQuotedString]},
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


        KissApi::ParserRuntime::_trace(q{Trying subrule: [SingleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::SingleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [SingleQuotedString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [SingleQuotedString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{SingleQuotedString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [SingleQuotedString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [DoubleQuotedString]},
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


        KissApi::ParserRuntime::_trace(q{Trying subrule: [DoubleQuotedString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::DoubleQuotedString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [DoubleQuotedString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [DoubleQuotedString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{DoubleQuotedString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [DoubleQuotedString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [EnumList]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{Value});
        %item = (__RULE__ => q{Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [EnumList]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::EnumList($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [EnumList]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [EnumList]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{EnumList}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [EnumList]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Integer]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[4];
        $text = $_[1];
        my $_savetext;
        @item = (q{Value});
        %item = (__RULE__ => q{Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Integer]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Integer($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Integer]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Integer]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Integer}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Integer]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Number]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[5];
        $text = $_[1];
        my $_savetext;
        @item = (q{Value});
        %item = (__RULE__ => q{Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Number]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Number($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Number]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Number]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Number}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Number]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Hash]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[6];
        $text = $_[1];
        my $_savetext;
        @item = (q{Value});
        %item = (__RULE__ => q{Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Hash]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Hash($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Hash]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Hash]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Hash}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Hash]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Array]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[7];
        $text = $_[1];
        my $_savetext;
        @item = (q{Value});
        %item = (__RULE__ => q{Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Array]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Array]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Array}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Array]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [String]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[8];
        $text = $_[1];
        my $_savetext;
        @item = (q{Value});
        %item = (__RULE__ => q{Value});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [String]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{Value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::String($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [String]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{Value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [String]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{Value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{String}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [String]<<},
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
sub KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_1_of_rule_KeyValuePair
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_KeyValuePair"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_KeyValuePair},
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
                      q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_KeyValuePair});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_KeyValuePair});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_KeyValuePair});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_KeyValuePair});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Colon]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_KeyValuePair});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_KeyValuePair});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_KeyValuePair},
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
                     q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_KeyValuePair},
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
                      q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_1_of_rule_ListEntry
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_ListEntry"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_ListEntry]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_ListEntry},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Number, or Identifier});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Number]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_ListEntry},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_ListEntry});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_ListEntry});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Number]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_ListEntry},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Number($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Number]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_ListEntry},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Number]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ListEntry},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Number}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Number]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ListEntry},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Identifier]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_ListEntry},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_ListEntry});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_ListEntry});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Identifier]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_ListEntry},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Identifier($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Identifier]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_ListEntry},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Identifier]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ListEntry},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Identifier}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Identifier]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_ListEntry},
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
                     q{_alternation_1_of_production_1_of_rule_ListEntry},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_ListEntry},
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
                      q{_alternation_1_of_production_1_of_rule_ListEntry},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_ListEntry},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_1_of_rule_Range
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_Range"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_Range]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_Range},
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Dot});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Dot Dot]},
                      KissApi::ParserRuntime::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_Range},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_Range});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_Range});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Dot]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_Range},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Dot($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Dot]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_Range},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Dot]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Range},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Dot}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying subrule: [Dot]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_Range},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Dot})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Dot($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Dot]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_Range},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Dot]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Range},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Dot}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Dot Dot]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_Range},
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
                     q{_alternation_1_of_production_1_of_rule_Range},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_Range},
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
                      q{_alternation_1_of_production_1_of_rule_Range},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_Range},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
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
                      q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::Colon, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Colon]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Hash]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Hash})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Hash($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Hash]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Hash]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Hash}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon Hash]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
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
                     q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
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
                      q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_1_of_rule_startrule
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
    my $expectation = new KissApi::ParserRuntime::Expectation(q{Include, or TypeDefinition});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{KissApi::ParserRuntime::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        KissApi::ParserRuntime::_trace(q{Trying production: [Include]},
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


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Include]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Include($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
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
        
        KissApi::ParserRuntime::_trace(q{Trying production: [TypeDefinition]},
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


        KissApi::ParserRuntime::_trace(q{Trying subrule: [TypeDefinition]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::TypeDefinition($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [TypeDefinition]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_startrule},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [TypeDefinition]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{TypeDefinition}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [TypeDefinition]<<},
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
sub KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
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
                      q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair});
        %item = (__RULE__ => q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::Colon, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched repeated subrule: [Colon]<< (}
                    . @$_tok . q{ times)},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon(?)}} = $_tok;
        push @item, $_tok;
        


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Array]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{Array})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Array($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Array]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Array]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Array}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon Array]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
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
                     q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
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
                      q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair"};

    KissApi::ParserRuntime::_trace(q{Trying rule: [_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair]},
                  KissApi::ParserRuntime::_tracefirst($_[1]),
                  q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
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
                      q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair});
        %item = (__RULE__ => q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair});
        my $repcount = 0;


        KissApi::ParserRuntime::_trace(q{Trying subrule: [Colon]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::Colon($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [Colon]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [Colon]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{Colon}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{Trying subrule: [AnyString]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{AnyString})->at($text);
        unless (defined ($_tok = KissApi::ParserRuntime::KissApi::TypeParser::AnyString($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            KissApi::ParserRuntime::_trace(q{<<Didn't match subrule: [AnyString]>>},
                          KissApi::ParserRuntime::_tracefirst($text),
                          q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        KissApi::ParserRuntime::_trace(q{>>Matched subrule: [AnyString]<< (return value: [}
                    . $_tok . q{]},

                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{AnyString}} = $_tok;
        push @item, $_tok;
        
        }

        KissApi::ParserRuntime::_trace(q{>>Matched production: [Colon AnyString]<<},
                      KissApi::ParserRuntime::_tracefirst($text),
                      q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
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
                     q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        KissApi::ParserRuntime::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
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
                      q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel);
        KissApi::ParserRuntime::_trace(q{(consumed: [} .
                      KissApi::ParserRuntime::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      KissApi::ParserRuntime::_tracefirst($text),
                      , q{_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub KissApi::ParserRuntime::KissApi::TypeParser::startrule
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
       )*}> Include, or TypeDefinition /\\Z/]},
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
        

        KissApi::ParserRuntime::_trace(q{Trying repeated subrule: [Include, or TypeDefinition]},
                  KissApi::ParserRuntime::_tracefirst($text),
                  q{startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{Include, or TypeDefinition})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&KissApi::ParserRuntime::KissApi::TypeParser::_alternation_1_of_production_1_of_rule_startrule, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            KissApi::ParserRuntime::_trace(q{<<Didn't match repeated subrule: [Include, or TypeDefinition]>>},
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
       )*}> Include, or TypeDefinition /\\Z/]<<},
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
package KissApi::TypeParser; sub new { my $self = bless( {
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
                 'namespace' => 'KissApi::ParserRuntime::KissApi::TypeParser',
                 'rules' => {
                              'AnyString' => bless( {
                                                      'calls' => [
                                                                   'SingleQuotedString',
                                                                   'DoubleQuotedString',
                                                                   'String'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 180,
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
                                                                                                  'line' => 180,
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
                                                                                                  'line' => 180,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'DoubleQuotedString'
                                                                                                }, 'KissApi::ParserRuntime::Subrule' )
                                                                                       ],
                                                                            'line' => 180,
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
                                                                                                  'line' => 180,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'String'
                                                                                                }, 'KissApi::ParserRuntime::Subrule' )
                                                                                       ],
                                                                            'line' => 180,
                                                                            'number' => 2,
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
                                                               'FinalArrayItem',
                                                               'CloseBracket'
                                                             ],
                                                  'changed' => 0,
                                                  'impcount' => 0,
                                                  'line' => 159,
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
                                                                                              'line' => 159,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'OpenBracket'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'expected' => undef,
                                                                                              'line' => 159,
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
                                                                                              'line' => 159,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'FinalArrayItem'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'implicit' => undef,
                                                                                              'line' => 159,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'CloseBracket'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                     bless( {
                                                                                              'code' => '{
    print "/" x 80, "\\nArray:\\n\\@item:\\n", Dumper(\\@item), "%item:\\n", Dumper(\\%item), "/" x 80, "\\n" if $::debug > 2;

    $return = $item[2];
}',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'line' => 160,
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
                                                      'line' => 166,
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
                                                                                                  'line' => 166,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'FinalArrayItem'
                                                                                                }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 166,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'Comma'
                                                                                                }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                         bless( {
                                                                                                  'code' => '{
    $return = $item[1];
}',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'line' => 167,
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
                              'At' => bless( {
                                               'calls' => [],
                                               'changed' => 0,
                                               'impcount' => 0,
                                               'line' => 232,
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
                                                                                           'line' => 232,
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
                              'AttributeDefinition' => bless( {
                                                                'calls' => [
                                                                             'AttributeName',
                                                                             'Colon',
                                                                             'Value',
                                                                             'Comma'
                                                                           ],
                                                                'changed' => 0,
                                                                'impcount' => 0,
                                                                'line' => 127,
                                                                'name' => 'AttributeDefinition',
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
                                                                                                            'line' => 127,
                                                                                                            'lookahead' => 0,
                                                                                                            'matchrule' => 0,
                                                                                                            'subrule' => 'AttributeName'
                                                                                                          }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                   bless( {
                                                                                                            'argcode' => undef,
                                                                                                            'implicit' => undef,
                                                                                                            'line' => 127,
                                                                                                            'lookahead' => 0,
                                                                                                            'matchrule' => 0,
                                                                                                            'subrule' => 'Colon'
                                                                                                          }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                   bless( {
                                                                                                            'argcode' => undef,
                                                                                                            'implicit' => undef,
                                                                                                            'line' => 127,
                                                                                                            'lookahead' => 0,
                                                                                                            'matchrule' => 0,
                                                                                                            'subrule' => 'Value'
                                                                                                          }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                   bless( {
                                                                                                            'argcode' => undef,
                                                                                                            'expected' => undef,
                                                                                                            'line' => 127,
                                                                                                            'lookahead' => 0,
                                                                                                            'matchrule' => 0,
                                                                                                            'max' => 1,
                                                                                                            'min' => 0,
                                                                                                            'repspec' => '?',
                                                                                                            'subrule' => 'Comma'
                                                                                                          }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                                   bless( {
                                                                                                            'code' => '{
    $return = { $item{AttributeName} => $item{Value} };
}',
                                                                                                            'hashname' => '__ACTION1__',
                                                                                                            'line' => 128,
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
                              'AttributeName' => bless( {
                                                          'calls' => [],
                                                          'changed' => 0,
                                                          'impcount' => 0,
                                                          'line' => 141,
                                                          'name' => 'AttributeName',
                                                          'opcount' => 0,
                                                          'prods' => [
                                                                       bless( {
                                                                                'actcount' => 0,
                                                                                'dircount' => 0,
                                                                                'error' => undef,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'description' => '/[a-z]\\\\w*\\\\??/i',
                                                                                                      'hashname' => '__PATTERN1__',
                                                                                                      'ldelim' => '/',
                                                                                                      'line' => 141,
                                                                                                      'lookahead' => 0,
                                                                                                      'mod' => 'i',
                                                                                                      'pattern' => '[a-z]\\w*\\??',
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
                              'CloseBrace' => bless( {
                                                       'calls' => [],
                                                       'changed' => 0,
                                                       'impcount' => 0,
                                                       'line' => 250,
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
                                                                                                   'line' => 250,
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
                                                         'line' => 246,
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
                                                                                                     'line' => 246,
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
                                                  'line' => 236,
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
                                                                                              'line' => 236,
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
                                                  'line' => 238,
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
                                                                                              'line' => 238,
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
                                                    'line' => 114,
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
                                                                                                'line' => 114,
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
                                                                                                'line' => 114,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'MultiLineComment'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' )
                                                                                     ],
                                                                          'line' => 114,
                                                                          'number' => 1,
                                                                          'patcount' => 0,
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
                                                'line' => 234,
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
                                                                                            'line' => 234,
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
                                                        'line' => 240,
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
                                                                                                    'line' => 240,
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
                                                               'line' => 194,
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
                                                                                                           'line' => 194,
                                                                                                           'lookahead' => 0,
                                                                                                           'matchrule' => 0,
                                                                                                           'subrule' => 'DoubleQuote'
                                                                                                         }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                  bless( {
                                                                                                           'description' => '/(\\\\\\\\"|\\\\n|[^"])*/',
                                                                                                           'hashname' => '__PATTERN1__',
                                                                                                           'ldelim' => '/',
                                                                                                           'line' => 194,
                                                                                                           'lookahead' => 0,
                                                                                                           'mod' => '',
                                                                                                           'pattern' => '(\\\\"|\\n|[^"])*',
                                                                                                           'rdelim' => '/'
                                                                                                         }, 'KissApi::ParserRuntime::Token' ),
                                                                                                  bless( {
                                                                                                           'argcode' => undef,
                                                                                                           'implicit' => undef,
                                                                                                           'line' => 194,
                                                                                                           'lookahead' => 0,
                                                                                                           'matchrule' => 0,
                                                                                                           'subrule' => 'DoubleQuote'
                                                                                                         }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                  bless( {
                                                                                                           'code' => '{
    $return = $item[2];
}',
                                                                                                           'hashname' => '__ACTION1__',
                                                                                                           'line' => 195,
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
                                                'line' => 262,
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
                                                                                            'line' => 262,
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
                              'EnumList' => bless( {
                                                     'calls' => [
                                                                  'OpenBracket',
                                                                  'ListEntry',
                                                                  'CloseBracket'
                                                                ],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 199,
                                                     'name' => 'EnumList',
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
                                                                                                 'line' => 199,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'OpenBracket'
                                                                                               }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'expected' => undef,
                                                                                                 'line' => 199,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'max' => 100000000,
                                                                                                 'min' => 1,
                                                                                                 'repspec' => 's',
                                                                                                 'subrule' => 'ListEntry'
                                                                                               }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 199,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'CloseBracket'
                                                                                               }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                        bless( {
                                                                                                 'code' => '{
    $return = $item[2];
}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'line' => 200,
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
                              'Equals' => bless( {
                                                   'calls' => [],
                                                   'changed' => 0,
                                                   'impcount' => 0,
                                                   'line' => 260,
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
                                                                                               'line' => 260,
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
                                                     'line' => 121,
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
                                                                                                 'line' => 121,
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
                                                                        'KeyValuePair',
                                                                        'Hash',
                                                                        'Array',
                                                                        'AnyString'
                                                                      ],
                                                           'changed' => 0,
                                                           'impcount' => 0,
                                                           'line' => 171,
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
                                                                                                       'line' => 171,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'KeyValuePair'
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
                                                                                                       'line' => 171,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'Hash'
                                                                                                     }, 'KissApi::ParserRuntime::Subrule' )
                                                                                            ],
                                                                                 'line' => 171,
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
                                                                                                       'line' => 171,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'Array'
                                                                                                     }, 'KissApi::ParserRuntime::Subrule' )
                                                                                            ],
                                                                                 'line' => 171,
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
                                                                                                       'line' => 171,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'AnyString'
                                                                                                     }, 'KissApi::ParserRuntime::Subrule' )
                                                                                            ],
                                                                                 'line' => 171,
                                                                                 'number' => 3,
                                                                                 'patcount' => 0,
                                                                                 'strcount' => 0,
                                                                                 'uncommit' => undef
                                                                               }, 'KissApi::ParserRuntime::Production' )
                                                                      ],
                                                           'vars' => ''
                                                         }, 'KissApi::ParserRuntime::Rule' ),
                              'GreaterThan' => bless( {
                                                        'calls' => [],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 254,
                                                        'name' => 'GreaterThan',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'description' => '\'>\'',
                                                                                                    'hashname' => '__STRING1__',
                                                                                                    'line' => 254,
                                                                                                    'lookahead' => 0,
                                                                                                    'pattern' => '>'
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
                              'Hash' => bless( {
                                                 'calls' => [
                                                              'OpenBrace',
                                                              'KeyValuePair',
                                                              'CloseBrace'
                                                            ],
                                                 'changed' => 0,
                                                 'impcount' => 0,
                                                 'line' => 152,
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
                                                                                             'line' => 152,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'subrule' => 'OpenBrace'
                                                                                           }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'expected' => undef,
                                                                                             'line' => 152,
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
                                                                                             'line' => 152,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'subrule' => 'CloseBrace'
                                                                                           }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                    bless( {
                                                                                             'code' => '{
    print "/" x 80, "\\nHash:\\n\\@item:\\n", Dumper(\\@item), "%item:\\n", Dumper(\\%item), "/" x 80, "\\n" if $::debug > 2;

    $return = $item[2];
}',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'line' => 153,
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
                              'IModifier' => bless( {
                                                      'calls' => [],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 178,
                                                      'name' => 'IModifier',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'description' => '\'i\'',
                                                                                                  'hashname' => '__STRING1__',
                                                                                                  'line' => 178,
                                                                                                  'lookahead' => 0,
                                                                                                  'pattern' => 'i'
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
                              'Identifier' => bless( {
                                                       'calls' => [],
                                                       'changed' => 0,
                                                       'impcount' => 0,
                                                       'line' => 209,
                                                       'name' => 'Identifier',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 0,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'description' => '/[a-z][a-z0-9_]*/i',
                                                                                                   'hashname' => '__PATTERN1__',
                                                                                                   'ldelim' => '/',
                                                                                                   'line' => 209,
                                                                                                   'lookahead' => 0,
                                                                                                   'mod' => 'i',
                                                                                                   'pattern' => '[a-z][a-z0-9_]*',
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
                              'Include' => bless( {
                                                    'calls' => [
                                                                 'Filename'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 116,
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
                                                                                                'line' => 116,
                                                                                                'lookahead' => 0,
                                                                                                'pattern' => '@include'
                                                                                              }, 'KissApi::ParserRuntime::Literal' ),
                                                                                       bless( {
                                                                                                'description' => '/[<"]/',
                                                                                                'hashname' => '__PATTERN1__',
                                                                                                'ldelim' => '/',
                                                                                                'line' => 116,
                                                                                                'lookahead' => 0,
                                                                                                'mod' => '',
                                                                                                'pattern' => '[<"]',
                                                                                                'rdelim' => '/'
                                                                                              }, 'KissApi::ParserRuntime::Token' ),
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 116,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'Filename'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                       bless( {
                                                                                                'description' => '/[>"]/',
                                                                                                'hashname' => '__PATTERN2__',
                                                                                                'ldelim' => '/',
                                                                                                'line' => 116,
                                                                                                'lookahead' => 0,
                                                                                                'mod' => '',
                                                                                                'pattern' => '[>"]',
                                                                                                'rdelim' => '/'
                                                                                              }, 'KissApi::ParserRuntime::Token' ),
                                                                                       bless( {
                                                                                                'code' => '{
    $text = read_file($item[3]) . $text
}',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'line' => 117,
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
                              'Inheritance' => bless( {
                                                        'calls' => [
                                                                     'ParentTypeName',
                                                                     'Range'
                                                                   ],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 83,
                                                        'name' => 'Inheritance',
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
                                                                                                    'line' => 83,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'ParentTypeName'
                                                                                                  }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 83,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 1,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'subrule' => 'Range'
                                                                                                  }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                           bless( {
                                                                                                    'code' => '{
    $return = { parent => $item{ParentTypeName}, range => $item{\'Range(?)\'}[0] };
}',
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'line' => 84,
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
                              'Integer' => bless( {
                                                    'calls' => [],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 211,
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
                                                                                                'line' => 211,
                                                                                                'lookahead' => 0,
                                                                                                'mod' => '',
                                                                                                'pattern' => '[-+]?(\\d+|Infinite)',
                                                                                                'rdelim' => '/'
                                                                                              }, 'KissApi::ParserRuntime::Token' ),
                                                                                       bless( {
                                                                                                'code' => '( $item[1] eq \'\') ? undef : 1',
                                                                                                'hashname' => '__DIRECTIVE1__',
                                                                                                'line' => 211,
                                                                                                'lookahead' => 0,
                                                                                                'name' => '<reject: $item[1] eq \'\'>'
                                                                                              }, 'KissApi::ParserRuntime::Directive' ),
                                                                                       bless( {
                                                                                                'code' => '{
    $return = $item[1];
}',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'line' => 212,
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
                                                'line' => 150,
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
                                                                                            'line' => 150,
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
                                                                                            'line' => 150,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'SingleQuotedString'
                                                                                          }, 'KissApi::ParserRuntime::Subrule' )
                                                                                 ],
                                                                      'line' => 150,
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
                                                                                            'line' => 150,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'DoubleQuotedString'
                                                                                          }, 'KissApi::ParserRuntime::Subrule' )
                                                                                 ],
                                                                      'line' => 150,
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
                                                                      '_alternation_1_of_production_1_of_rule_KeyValuePair'
                                                                    ],
                                                         'changed' => 0,
                                                         'impcount' => 1,
                                                         'line' => 145,
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
                                                                                                     'line' => 145,
                                                                                                     'lookahead' => 0,
                                                                                                     'matchrule' => 0,
                                                                                                     'subrule' => 'Key'
                                                                                                   }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => 'Colon',
                                                                                                     'line' => 145,
                                                                                                     'lookahead' => 0,
                                                                                                     'matchrule' => 0,
                                                                                                     'subrule' => '_alternation_1_of_production_1_of_rule_KeyValuePair'
                                                                                                   }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                            bless( {
                                                                                                     'code' => '{
    $return = { $item[1] => $item[3] };
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
                              'ListEntry' => bless( {
                                                      'calls' => [
                                                                   '_alternation_1_of_production_1_of_rule_ListEntry',
                                                                   'Comma'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 1,
                                                      'line' => 204,
                                                      'name' => 'ListEntry',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 1,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => 'Number, or Identifier',
                                                                                                  'line' => 204,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => '_alternation_1_of_production_1_of_rule_ListEntry'
                                                                                                }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'expected' => undef,
                                                                                                  'line' => 204,
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
                                                                                                  'line' => 205,
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
                              'LowerThan' => bless( {
                                                      'calls' => [],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 252,
                                                      'name' => 'LowerThan',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'description' => '\'<\'',
                                                                                                  'hashname' => '__STRING1__',
                                                                                                  'line' => 252,
                                                                                                  'lookahead' => 0,
                                                                                                  'pattern' => '<'
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
                              'Max' => bless( {
                                                'calls' => [
                                                             'Integer'
                                                           ],
                                                'changed' => 0,
                                                'impcount' => 0,
                                                'line' => 226,
                                                'name' => 'Max',
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
                                                                                            'line' => 226,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'Integer'
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
                              'Min' => bless( {
                                                'calls' => [
                                                             'Integer',
                                                             'Dot'
                                                           ],
                                                'changed' => 0,
                                                'impcount' => 0,
                                                'line' => 221,
                                                'name' => 'Min',
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'actcount' => 1,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'expected' => undef,
                                                                                            'line' => 221,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'max' => 1,
                                                                                            'min' => 0,
                                                                                            'repspec' => '?',
                                                                                            'subrule' => 'Integer'
                                                                                          }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'line' => 221,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'Dot'
                                                                                          }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'line' => 221,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'Dot'
                                                                                          }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                   bless( {
                                                                                            'code' => '{
    $return = $item[1];
}',
                                                                                            'hashname' => '__ACTION1__',
                                                                                            'line' => 222,
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
                                                  'line' => 256,
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
                                                                                              'line' => 256,
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
                                                             'line' => 125,
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
                                                                                                         'line' => 125,
                                                                                                         'lookahead' => 0,
                                                                                                         'pattern' => '/*'
                                                                                                       }, 'KissApi::ParserRuntime::Literal' ),
                                                                                                bless( {
                                                                                                         'description' => 'm\\{((?! \\\\*/ | /\\\\* ).)*\\}sx',
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'ldelim' => '{',
                                                                                                         'line' => 125,
                                                                                                         'lookahead' => 0,
                                                                                                         'mod' => 'sx',
                                                                                                         'pattern' => '((?! \\*/ | /\\* ).)*',
                                                                                                         'rdelim' => '}'
                                                                                                       }, 'KissApi::ParserRuntime::Token' ),
                                                                                                bless( {
                                                                                                         'description' => '\'*/\'',
                                                                                                         'hashname' => '__STRING2__',
                                                                                                         'line' => 125,
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
                                                    'line' => 228,
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
                                                                                                'line' => 228,
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
                                                   'line' => 216,
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
                                                                                               'line' => 216,
                                                                                               'lookahead' => 0,
                                                                                               'mod' => '',
                                                                                               'pattern' => '[+-]?((\\d*(.\\d+)?)|Infinite)',
                                                                                               'rdelim' => '/'
                                                                                             }, 'KissApi::ParserRuntime::Token' ),
                                                                                      bless( {
                                                                                               'code' => '( $item[1] eq \'\') ? undef : 1',
                                                                                               'hashname' => '__DIRECTIVE1__',
                                                                                               'line' => 216,
                                                                                               'lookahead' => 0,
                                                                                               'name' => '<reject: $item[1] eq \'\'>'
                                                                                             }, 'KissApi::ParserRuntime::Directive' ),
                                                                                      bless( {
                                                                                               'code' => '{
    $return = $item[1];
}',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'line' => 217,
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
                                                      'line' => 248,
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
                                                                                                  'line' => 248,
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
                                                        'line' => 244,
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
                                                                                                    'line' => 244,
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
                              'ParentTypeName' => bless( {
                                                           'calls' => [],
                                                           'changed' => 0,
                                                           'impcount' => 0,
                                                           'line' => 139,
                                                           'name' => 'ParentTypeName',
                                                           'opcount' => 0,
                                                           'prods' => [
                                                                        bless( {
                                                                                 'actcount' => 0,
                                                                                 'dircount' => 0,
                                                                                 'error' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'description' => '/[a-z]\\\\w*/i',
                                                                                                       'hashname' => '__PATTERN1__',
                                                                                                       'ldelim' => '/',
                                                                                                       'line' => 139,
                                                                                                       'lookahead' => 0,
                                                                                                       'mod' => 'i',
                                                                                                       'pattern' => '[a-z]\\w*',
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
                              'Pattern' => bless( {
                                                    'calls' => [
                                                                 'Slash',
                                                                 'IModifier'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 173,
                                                    'name' => 'Pattern',
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
                                                                                                'line' => 173,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'Slash'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                       bless( {
                                                                                                'description' => '/(\\\\\\\\\\\\/|[^\\\\/])+/',
                                                                                                'hashname' => '__PATTERN1__',
                                                                                                'ldelim' => '/',
                                                                                                'line' => 173,
                                                                                                'lookahead' => 0,
                                                                                                'mod' => '',
                                                                                                'pattern' => '(\\\\\\/|[^\\/])+',
                                                                                                'rdelim' => '/'
                                                                                              }, 'KissApi::ParserRuntime::Token' ),
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 173,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'Slash'
                                                                                              }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'expected' => undef,
                                                                                                'line' => 173,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'max' => 1,
                                                                                                'min' => 0,
                                                                                                'repspec' => '?',
                                                                                                'subrule' => 'IModifier'
                                                                                              }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                       bless( {
                                                                                                'code' => '{
    $return = join "", @item[1..$#item - 1], $item[$#item][0];
}',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'line' => 174,
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
                                                 'line' => 258,
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
                                                                                             'line' => 258,
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
                              'Property' => bless( {
                                                     'calls' => [
                                                                  'TypeDefinition',
                                                                  'AttributeDefinition'
                                                                ],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 95,
                                                     'name' => 'Property',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => '[is_recursive => 1]',
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 95,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'TypeDefinition'
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
                                                                                                 'line' => 95,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'AttributeDefinition'
                                                                                               }, 'KissApi::ParserRuntime::Subrule' )
                                                                                      ],
                                                                           'line' => 95,
                                                                           'number' => 1,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'KissApi::ParserRuntime::Production' )
                                                                ],
                                                     'vars' => ''
                                                   }, 'KissApi::ParserRuntime::Rule' ),
                              'Range' => bless( {
                                                  'calls' => [
                                                               'OpenBracket',
                                                               'Integer',
                                                               '_alternation_1_of_production_1_of_rule_Range',
                                                               'CloseBracket'
                                                             ],
                                                  'changed' => 0,
                                                  'impcount' => 1,
                                                  'line' => 97,
                                                  'name' => 'Range',
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
                                                                                              'line' => 97,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'OpenBracket'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'expected' => undef,
                                                                                              'line' => 97,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'max' => 1,
                                                                                              'min' => 0,
                                                                                              'repspec' => '?',
                                                                                              'subrule' => 'Integer'
                                                                                            }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'expected' => 'Dot',
                                                                                              'line' => 97,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'max' => 1,
                                                                                              'min' => 0,
                                                                                              'repspec' => '?',
                                                                                              'subrule' => '_alternation_1_of_production_1_of_rule_Range'
                                                                                            }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'expected' => undef,
                                                                                              'line' => 97,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'max' => 1,
                                                                                              'min' => 0,
                                                                                              'repspec' => '?',
                                                                                              'subrule' => 'Integer'
                                                                                            }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'implicit' => undef,
                                                                                              'line' => 97,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'CloseBracket'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                     bless( {
                                                                                              'code' => '{
    my ($min, $max) = ($item[2][0], $item[4][0]);

    if ($item[3][0])
    {
        $min //= \'-Infinite\';
        $max //= \'Infinite\';
    }
    else
    {
        $max = $min;
    }

    $return = { min => $min, max => $max };
}',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'line' => 98,
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
                                                              'line' => 123,
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
                                                                                                          'line' => 123,
                                                                                                          'lookahead' => 0,
                                                                                                          'mod' => '',
                                                                                                          'pattern' => '[#]|\\/\\/',
                                                                                                          'rdelim' => '/'
                                                                                                        }, 'KissApi::ParserRuntime::Token' ),
                                                                                                 bless( {
                                                                                                          'description' => '/[^\\\\n]*/',
                                                                                                          'hashname' => '__PATTERN2__',
                                                                                                          'ldelim' => '/',
                                                                                                          'line' => 123,
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
                                                        'line' => 242,
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
                                                                                                    'line' => 242,
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
                                                               'line' => 189,
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
                                                                                                           'line' => 189,
                                                                                                           'lookahead' => 0,
                                                                                                           'matchrule' => 0,
                                                                                                           'subrule' => 'SingleQuote'
                                                                                                         }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                  bless( {
                                                                                                           'description' => '/(\\\\\\\\\'|\\\\n|[^\'])*/',
                                                                                                           'hashname' => '__PATTERN1__',
                                                                                                           'ldelim' => '/',
                                                                                                           'line' => 189,
                                                                                                           'lookahead' => 0,
                                                                                                           'mod' => '',
                                                                                                           'pattern' => '(\\\\\'|\\n|[^\'])*',
                                                                                                           'rdelim' => '/'
                                                                                                         }, 'KissApi::ParserRuntime::Token' ),
                                                                                                  bless( {
                                                                                                           'argcode' => undef,
                                                                                                           'implicit' => undef,
                                                                                                           'line' => 189,
                                                                                                           'lookahead' => 0,
                                                                                                           'matchrule' => 0,
                                                                                                           'subrule' => 'SingleQuote'
                                                                                                         }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                  bless( {
                                                                                                           'code' => '{
    $return = $item[2];
}',
                                                                                                           'hashname' => '__ACTION1__',
                                                                                                           'line' => 190,
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
                                                  'line' => 230,
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
                                                                                              'line' => 230,
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
                                                   'line' => 182,
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
                                                                                               'line' => 182,
                                                                                               'lookahead' => 0,
                                                                                               'name' => '<skip: \'\\s*\'>'
                                                                                             }, 'KissApi::ParserRuntime::Directive' ),
                                                                                      bless( {
                                                                                               'description' => '/[-!#$%&()*+.\\\\/0-9:;<=>?\\\\@A-Z^_`\\\\|~ \\\\t]+/i',
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'ldelim' => '/',
                                                                                               'line' => 182,
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
                                                                                               'line' => 183,
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
                              'TypeDefinition' => bless( {
                                                           'calls' => [
                                                                        'TypeName',
                                                                        'Colon',
                                                                        'Inheritance',
                                                                        'TypeDescription',
                                                                        'OpenBrace',
                                                                        'Property',
                                                                        'CloseBrace'
                                                                      ],
                                                           'changed' => 0,
                                                           'impcount' => 0,
                                                           'line' => 24,
                                                           'name' => 'TypeDefinition',
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
                                                                                                       'line' => 24,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'TypeName'
                                                                                                     }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'expected' => undef,
                                                                                                       'line' => 24,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'max' => 1,
                                                                                                       'min' => 0,
                                                                                                       'repspec' => '?',
                                                                                                       'subrule' => 'Colon'
                                                                                                     }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'expected' => undef,
                                                                                                       'line' => 24,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'max' => 1,
                                                                                                       'min' => 0,
                                                                                                       'repspec' => '?',
                                                                                                       'subrule' => 'Inheritance'
                                                                                                     }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'expected' => undef,
                                                                                                       'line' => 24,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'max' => 1,
                                                                                                       'min' => 0,
                                                                                                       'repspec' => '?',
                                                                                                       'subrule' => 'TypeDescription'
                                                                                                     }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 24,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'OpenBrace'
                                                                                                     }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'expected' => undef,
                                                                                                       'line' => 24,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'max' => 100000000,
                                                                                                       'min' => 0,
                                                                                                       'repspec' => 's?',
                                                                                                       'subrule' => 'Property'
                                                                                                     }, 'KissApi::ParserRuntime::Repetition' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 24,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'CloseBrace'
                                                                                                     }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                              bless( {
                                                                                                       'code' => '{
    delete $item{CloseBrace};
    delete $item{OpenBrace};
    delete $item{\'Colon(?)\'};

    $item{Parent} = $item{\'Inheritance(?)\'}[0]->{parent} || \'Class\';
    $item{Range} = $item{\'Inheritance(?)\'}[0]->{range};
    delete $item{\'Inheritance(?)\'};

    # delete magic KissApi::ParserRuntime keys /__[A-Z0-9]+__/
    delete $item{$_} foreach grep { /^__[A-Z0-9]+__$/ } keys %item;

    $item{Properties} = {};
    @{$item{AttributesOrder}} = () if $item{Parent} eq \'Class\' || ! $BasicTypes->{$item{Parent}};

    print "+++TypeName: <$item{TypeName}>\\n" if $::debug > 2;
    print "+++Parent: <$item{Parent}>\\n" if $::debug > 2;
    print "+++Properties:\\n", Dumper(@{$item{\'Property(s?)\'}}) if $::debug > 2;

    foreach my $prop (@{$item{\'Property(s?)\'}})
    {
        if ($prop->{TypeName})
        {
            if ($prop->{TypeName} =~ /^(.*)\\?$/)
            {
                $prop->{TypeName} = $1;
                $prop->{Optional} = 1;
            }

            push @{$item{AttributesOrder}}, $prop->{TypeName} if $item{Parent} eq \'Class\' || ! $BasicTypes->{$item{Parent}};

            $item{Properties}->{$prop->{TypeName}} = $prop;
            delete $item{Properties}->{$prop->{TypeName}}->{TypeName};
        }
        else
        {
            push @{$item{AttributesOrder}}, (keys %$prop)[0] if $item{Parent} eq \'Class\' || ! $BasicTypes->{$item{Parent}};
            $item{Properties} = { %{$item{Properties}}, %$prop };
        }
    }
    delete $item{\'Property(s?)\'};

    $item{TypeDescription} = $item{\'TypeDescription(?)\'}[0]
        if defined($item{\'TypeDescription(?)\'}[0]);
    delete $item{\'TypeDescription(?)\'};

    unless ($arg{is_recursive})
    {
        print STDERR "type parsed <$item{TypeName}>:\\n", Dumper(\\%item) if $::debug > 2;

        $thisparser->{_type_library}->type(\\%item);
    }

    $return = { %item };

    1;
}',
                                                                                                       'hashname' => '__ACTION1__',
                                                                                                       'line' => 25,
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
                              'TypeDescription' => bless( {
                                                            'calls' => [
                                                                         'LowerThan',
                                                                         'GreaterThan'
                                                                       ],
                                                            'changed' => 0,
                                                            'impcount' => 0,
                                                            'line' => 88,
                                                            'name' => 'TypeDescription',
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
                                                                                                        'line' => 88,
                                                                                                        'lookahead' => 0,
                                                                                                        'matchrule' => 0,
                                                                                                        'subrule' => 'LowerThan'
                                                                                                      }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                               bless( {
                                                                                                        'description' => '/(\\\\\\\\>|[-!#$%&()*+.\\\\/0-9:;<=?\\\\@A-Z^_`\\\\|~ \\\\t])+/i',
                                                                                                        'hashname' => '__PATTERN1__',
                                                                                                        'ldelim' => '/',
                                                                                                        'line' => 88,
                                                                                                        'lookahead' => 0,
                                                                                                        'mod' => 'i',
                                                                                                        'pattern' => '(\\\\>|[-!#$%&()*+.\\/0-9:;<=?\\@A-Z^_`\\|~ \\t])+',
                                                                                                        'rdelim' => '/'
                                                                                                      }, 'KissApi::ParserRuntime::Token' ),
                                                                                               bless( {
                                                                                                        'argcode' => undef,
                                                                                                        'implicit' => undef,
                                                                                                        'line' => 88,
                                                                                                        'lookahead' => 0,
                                                                                                        'matchrule' => 0,
                                                                                                        'subrule' => 'GreaterThan'
                                                                                                      }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                               bless( {
                                                                                                        'code' => '{
    $item[2] =~ s/\\\\>/>/g;

    $return = $item[2];
}',
                                                                                                        'hashname' => '__ACTION1__',
                                                                                                        'line' => 89,
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
                              'TypeName' => bless( {
                                                     'calls' => [],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 132,
                                                     'name' => 'TypeName',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 1,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'description' => '/[a-z]\\\\w*\\\\??/i',
                                                                                                 'hashname' => '__PATTERN1__',
                                                                                                 'ldelim' => '/',
                                                                                                 'line' => 132,
                                                                                                 'lookahead' => 0,
                                                                                                 'mod' => 'i',
                                                                                                 'pattern' => '[a-z]\\w*\\??',
                                                                                                 'rdelim' => '/'
                                                                                               }, 'KissApi::ParserRuntime::Token' ),
                                                                                        bless( {
                                                                                                 'code' => '{
    print "+++TypeName: $item[1]\\n" if $::debug > 3;

    $return = $item[1];
}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'line' => 133,
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
                              'Value' => bless( {
                                                  'calls' => [
                                                               'Pattern',
                                                               'SingleQuotedString',
                                                               'DoubleQuotedString',
                                                               'EnumList',
                                                               'Integer',
                                                               'Number',
                                                               'Hash',
                                                               'Array',
                                                               'String'
                                                             ],
                                                  'changed' => 0,
                                                  'impcount' => 0,
                                                  'line' => 143,
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
                                                                                              'implicit' => undef,
                                                                                              'line' => 143,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'Pattern'
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
                                                                                              'line' => 143,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'SingleQuotedString'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' )
                                                                                   ],
                                                                        'line' => 143,
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
                                                                                              'line' => 143,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'DoubleQuotedString'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' )
                                                                                   ],
                                                                        'line' => 143,
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
                                                                                              'line' => 143,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'EnumList'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' )
                                                                                   ],
                                                                        'line' => 143,
                                                                        'number' => 3,
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
                                                                                              'line' => 143,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'Integer'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' )
                                                                                   ],
                                                                        'line' => 143,
                                                                        'number' => 4,
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
                                                                                              'line' => 143,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'Number'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' )
                                                                                   ],
                                                                        'line' => 143,
                                                                        'number' => 5,
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
                                                                                              'line' => 143,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'Hash'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' )
                                                                                   ],
                                                                        'line' => 143,
                                                                        'number' => 6,
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
                                                                                              'line' => 143,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'Array'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' )
                                                                                   ],
                                                                        'line' => 143,
                                                                        'number' => 7,
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
                                                                                              'line' => 143,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'String'
                                                                                            }, 'KissApi::ParserRuntime::Subrule' )
                                                                                   ],
                                                                        'line' => 143,
                                                                        'number' => 8,
                                                                        'patcount' => 0,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'KissApi::ParserRuntime::Production' )
                                                             ],
                                                  'vars' => ''
                                                }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_1_of_rule_KeyValuePair' => bless( {
                                                                                                'calls' => [
                                                                                                             '_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair',
                                                                                                             '_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair',
                                                                                                             '_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair'
                                                                                                           ],
                                                                                                'changed' => 0,
                                                                                                'impcount' => 1,
                                                                                                'line' => 263,
                                                                                                'name' => '_alternation_1_of_production_1_of_rule_KeyValuePair',
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
                                                                                                                                            'line' => 263,
                                                                                                                                            'lookahead' => 0,
                                                                                                                                            'matchrule' => 0,
                                                                                                                                            'subrule' => '_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair'
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
                                                                                                                                            'line' => 263,
                                                                                                                                            'lookahead' => 0,
                                                                                                                                            'matchrule' => 0,
                                                                                                                                            'subrule' => '_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair'
                                                                                                                                          }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                                 ],
                                                                                                                      'line' => 263,
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
                                                                                                                                            'implicit' => 'Colon',
                                                                                                                                            'line' => 263,
                                                                                                                                            'lookahead' => 0,
                                                                                                                                            'matchrule' => 0,
                                                                                                                                            'subrule' => '_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair'
                                                                                                                                          }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                                 ],
                                                                                                                      'line' => 263,
                                                                                                                      'number' => 2,
                                                                                                                      'patcount' => 0,
                                                                                                                      'strcount' => 0,
                                                                                                                      'uncommit' => undef
                                                                                                                    }, 'KissApi::ParserRuntime::Production' )
                                                                                                           ],
                                                                                                'vars' => ''
                                                                                              }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_1_of_rule_ListEntry' => bless( {
                                                                                             'calls' => [
                                                                                                          'Number',
                                                                                                          'Identifier'
                                                                                                        ],
                                                                                             'changed' => 0,
                                                                                             'impcount' => 0,
                                                                                             'line' => 263,
                                                                                             'name' => '_alternation_1_of_production_1_of_rule_ListEntry',
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
                                                                                                                                         'line' => 263,
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'subrule' => 'Number'
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
                                                                                                                                         'line' => 263,
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'subrule' => 'Identifier'
                                                                                                                                       }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                              ],
                                                                                                                   'line' => 263,
                                                                                                                   'number' => 1,
                                                                                                                   'patcount' => 0,
                                                                                                                   'strcount' => 0,
                                                                                                                   'uncommit' => undef
                                                                                                                 }, 'KissApi::ParserRuntime::Production' )
                                                                                                        ],
                                                                                             'vars' => ''
                                                                                           }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_1_of_rule_Range' => bless( {
                                                                                         'calls' => [
                                                                                                      'Dot'
                                                                                                    ],
                                                                                         'changed' => 0,
                                                                                         'impcount' => 0,
                                                                                         'line' => 263,
                                                                                         'name' => '_alternation_1_of_production_1_of_rule_Range',
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
                                                                                                                                     'line' => 263,
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'subrule' => 'Dot'
                                                                                                                                   }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                                            bless( {
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'line' => 263,
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'subrule' => 'Dot'
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
                              '_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair' => bless( {
                                                                                                                                       'calls' => [
                                                                                                                                                    'Colon',
                                                                                                                                                    'Hash'
                                                                                                                                                  ],
                                                                                                                                       'changed' => 0,
                                                                                                                                       'impcount' => 0,
                                                                                                                                       'line' => 263,
                                                                                                                                       'name' => '_alternation_1_of_production_1_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair',
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
                                                                                                                                                                                   'line' => 263,
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
                                                                                                                                                                                   'line' => 263,
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
                                                                                                          'Include',
                                                                                                          'TypeDefinition'
                                                                                                        ],
                                                                                             'changed' => 0,
                                                                                             'impcount' => 0,
                                                                                             'line' => 263,
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
                                                                                                                                         'line' => 263,
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'subrule' => 'Include'
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
                                                                                                                                         'line' => 263,
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'subrule' => 'TypeDefinition'
                                                                                                                                       }, 'KissApi::ParserRuntime::Subrule' )
                                                                                                                              ],
                                                                                                                   'line' => 263,
                                                                                                                   'number' => 1,
                                                                                                                   'patcount' => 0,
                                                                                                                   'strcount' => 0,
                                                                                                                   'uncommit' => undef
                                                                                                                 }, 'KissApi::ParserRuntime::Production' )
                                                                                                        ],
                                                                                             'vars' => ''
                                                                                           }, 'KissApi::ParserRuntime::Rule' ),
                              '_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair' => bless( {
                                                                                                                                       'calls' => [
                                                                                                                                                    'Colon',
                                                                                                                                                    'Array'
                                                                                                                                                  ],
                                                                                                                                       'changed' => 0,
                                                                                                                                       'impcount' => 0,
                                                                                                                                       'line' => 263,
                                                                                                                                       'name' => '_alternation_1_of_production_2_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair',
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
                                                                                                                                                                                   'line' => 263,
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
                                                                                                                                                                                   'line' => 263,
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
                              '_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair' => bless( {
                                                                                                                                       'calls' => [
                                                                                                                                                    'Colon',
                                                                                                                                                    'AnyString'
                                                                                                                                                  ],
                                                                                                                                       'changed' => 0,
                                                                                                                                       'impcount' => 0,
                                                                                                                                       'line' => 263,
                                                                                                                                       'name' => '_alternation_1_of_production_3_of_rule__alternation_1_of_production_1_of_rule_KeyValuePair',
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
                                                                                                                                                                                   'line' => 263,
                                                                                                                                                                                   'lookahead' => 0,
                                                                                                                                                                                   'matchrule' => 0,
                                                                                                                                                                                   'subrule' => 'Colon'
                                                                                                                                                                                 }, 'KissApi::ParserRuntime::Subrule' ),
                                                                                                                                                                          bless( {
                                                                                                                                                                                   'argcode' => undef,
                                                                                                                                                                                   'implicit' => undef,
                                                                                                                                                                                   'line' => 263,
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
                                                      'line' => 13,
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
                                                                                                  'line' => 14,
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
                                                                                                  'expected' => 'Include, or TypeDefinition',
                                                                                                  'line' => 20,
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
                                                                                                  'line' => 21,
                                                                                                  'lookahead' => 0,
                                                                                                  'mod' => '',
                                                                                                  'pattern' => '\\Z',
                                                                                                  'rdelim' => '/'
                                                                                                }, 'KissApi::ParserRuntime::Token' ),
                                                                                         bless( {
                                                                                                  'code' => '{ $item[2] }',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'line' => 22,
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