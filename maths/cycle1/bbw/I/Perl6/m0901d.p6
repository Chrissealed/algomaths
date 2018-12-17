#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method09 :methodwording, :exe01d, :examples;
use pgcd;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0901d.txt',
        filemode => ':a', # :mode<wo>, :create, :append
        writefile => True,
        closefile => False,
    );

    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 18,
        integer2 => 27,
    );
    my Int $pd = $pgcd.factorization_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 63;
    $pd = $pgcd.factorization_algorithm();
    $t.tput: "PGCD(18 ; 27 ; 63) = $pd.";

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 18,
        integer2 => 27,
    );
    $t.tprint: "\n";
    my Int $pm = $ppcm.by-prime-factors();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 63;
    $pm = $ppcm.by-prime-factors();
    $t.tput: "PPCM(18 ; 27 ; 63) = $pm.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_01d();
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

