#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<m0503d.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.05
=end pod

use corrective;
use teeput;
use method05;
use prime-factors;

sub answering {
    class T does Tput {}
    my $t = T.new(
        writefile => True,
        filemode => ':a', # :mode<wo>, :create, :append
        closefile => False,
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/m0503d.txt",
    );

    class P does PrimeFactors {}
    my $prime = P.new( t => $t );
    my %p = $prime.breakdown(1122);
    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_03d();
my Bool $boolean = do-put-up-method();
if $boolean {
    $xchoice.put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    $xchoice.how-examples;
}
do-put-up-correct-version();
answering();

