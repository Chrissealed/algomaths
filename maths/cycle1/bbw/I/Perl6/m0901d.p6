#!/usr/bin/env perl6

use v6;
use corrective;
use method09 :methodwording, :exe01d, :examples;
use pgcd;
use ppcm;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 18,
        integer2 => 27,
    );
    my Int $pd = $pgcd.factorization_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 63;
    $pd = $pgcd.factorization_algorithm();
    say "PGCD(18 ; 27 ; 63) = $pd.";

    my $ppcm = PPCM.new(
        integer1 => 18,
        integer2 => 27,
    );
    say();
    my Int $pm = $ppcm.by-prime-factors();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 63;
    $pm = $ppcm.by-prime-factors();
    say "PPCM(18 ; 27 ; 63) = $pm.";
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

