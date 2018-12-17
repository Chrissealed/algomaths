#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method09 :methodwording, :exe02d, :examples;
use pgcd;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0902d.txt',
        filemode => ':a', # :mode<wo>, :create, :append
        writefile => True,
        closefile => False,
    );

    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 144,
        integer2 => 168,
    );
    my Int $pd = $pgcd.factorization_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 252;
    $pd = $pgcd.factorization_algorithm();
    $t.tput: "PGCD(144 ; 168 ; 252) = $pd.";

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 144,
        integer2 => 168,
    );
    $t.tprint: "\n";
    my Int $pm = $ppcm.by-prime-factors();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 252;
    $pm = $ppcm.by-prime-factors();
    $t.tput: "PPCM(144 ; 168 ; 252) = $pm.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_02d();
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

