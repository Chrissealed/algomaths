#!/usr/bin/env perl6

use v6;
use corrective;
use method09 :methodwording, :exe01;
use pgcd;
use ppcm;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 9,
        integer2 => 12,
    );
    my Int $pd = $pgcd.factorization_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 30;
    $pd = $pgcd.factorization_algorithm();
    say "PGCD(9 ; 12 ; 30) = $pd.";

    my $ppcm = PPCM.new(
        integer1 => 9,
        integer2 => 12,
    );
    say();
    my Int $pm = $ppcm.by-larger-number-multiples();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 30;
    $pm = $ppcm.by-larger-number-multiples();
    say "PPCM(9 ; 12 ; 30) = $pm.";
}

exercise_01();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

