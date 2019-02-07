#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<m0803b.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.07
=end pod

use corrective;
use teeput;
use method08_123;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        writefile => True,
        filemode => ':a', # :mode<wo>, :create, :append
        closefile => False,
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/m0803b.txt",
    );

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 520,
        integer2 => 390,
    );
    my Int $int = $ppcm.by-larger-number-multiples();
    $t.tput: "PPCM(520 ; 390) = $int.";
    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_03b();
my Bool $boolean = do-put-up-method();
if $boolean {
    $xchoice.put-up-method1();
}
$boolean = do-put-up-examples();
if $boolean {
    $xchoice.show-examples;
}
do-put-up-correct-version();
answering();

