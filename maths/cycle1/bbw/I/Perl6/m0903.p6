#!/usr/bin/env perl6

use v6;
use corrective;
use method09 :methodwording, :exe03;
use pgcd;
use ppcm;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 10,
        integer2 => 15,
    );
    my Int $pd = $pgcd.factorization_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 35;
    $pd = $pgcd.factorization_algorithm();
    say "PGCD(10 ; 15 ; 35) = $pd.";

    my $ppcm = PPCM.new(
        integer1 => 10,
        integer2 => 15,
    );
    say();
    my Int $pm = $ppcm.by-prime-factors();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 35;
    $pm = $ppcm.by-prime-factors();
    say "PPCM(10 ; 15 ; 35) = $pm.";
}

exercise_03();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

