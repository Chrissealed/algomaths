#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<m0901b.p6> 
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/m0901b.txt",
    );

    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 24,
        integer2 => 30,
    );
    my Int $pd = $pgcd.factorization_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 36;
    $pd = $pgcd.factorization_algorithm();
    $t.tput: "PGCD(24 ; 30 ; 36) = $pd.";

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 24,
        integer2 => 30,
    );
    $t.tprint: "\n";
    my Int $pm = $ppcm.by-prime-factors();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 36;
    $pm = $ppcm.by-prime-factors();
    $t.tput: "PPCM(24 ; 30 ; 36) = $pm.";
    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_01b();
my Bool $boolean = do-put-up-method();
if $boolean {
    $xchoice.put-up-method();
    $xchoice.put-up-method7();
    $xchoice.put-up-method8_2();
}
$boolean = do-put-up-examples();
if $boolean {
    $xchoice.show-examples;
}
do-put-up-correct-version();
answering();

