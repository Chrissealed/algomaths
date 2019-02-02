#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<m0502d.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.02
=end pod

use corrective;
use teeput;
use method05;
use prime-factors;

sub answering {
    class T does Tput {}
    my $io = IO::Path.new("$*CWD/init.p6");
    my $t = T.new();
    if $io ~~ / 'bbw/init.p6' / {
        $t.filepath = './I/Perl6/output/m0502d.txt';
    } else {
        $t.filepath = './output/m0502d.txt';
    }
    $t.writefile = True;
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;

    class P does PrimeFactors {}
    my $prime = P.new( t => $t );
    my %p = $prime.breakdown(396);
    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_02d();
my Bool $boolean = do-put-up-method();
if $boolean {
    $xchoice.put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    $xchoice.show-examples;
}
do-put-up-correct-version();
answering();

