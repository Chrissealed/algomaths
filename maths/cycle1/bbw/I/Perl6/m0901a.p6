#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method09 :methodwording, :exe01a, :examples;
use pgcd;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0901a.txt',
        filemode => ':a', # :mode<wo>, :create, :append
        writefile => True,
        closefile => False,
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

exercise_01a();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

