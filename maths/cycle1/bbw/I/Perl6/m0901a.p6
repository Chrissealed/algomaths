#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<m0901a.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.10
=end pod

use corrective;
use teeput;
use method09;
use pgcd;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        writefile => True,
        filemode => ':a', # :mode<wo>, :create, :append
        closefile => False,
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/m0901a.txt",
    );

    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 9,
        integer2 => 12,
    );
    my Int $pd = $pgcd.factorization_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 30;
    $pd = $pgcd.factorization_algorithm();
    $t.tput: "PGCD(9 ; 12 ; 30) = $pd.";

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 9,
        integer2 => 12,
    );
    $t.tprint: "\n";
    my Int $pm = $ppcm.by-larger-number-multiples();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 30;
    $pm = $ppcm.by-larger-number-multiples();
    $t.tput: "PPCM(9 ; 12 ; 30) = $pm.";
    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_01a();
my Bool $boolean = do-put-up-method();
if $boolean {
    $xchoice.put-up-method();
    $xchoice.put-up-method7();
    $xchoice.put-up-method8_1();
}
$boolean = do-put-up-examples();
if $boolean {
    $xchoice.show-examples;
}
do-put-up-correct-version();
answering();

