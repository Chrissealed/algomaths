#!/usr/bin/env perl6

use v6;
use corrective;
use method09 :methodwording, :exe05;
use pgcd;
use ppcm;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 21,
        integer2 => 24,
    );
    my Int $pd = $pgcd.factorization_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 27;
    $pd = $pgcd.factorization_algorithm();
    say "PGCD(21 ; 24 ; 27) = $pd.";

    my $ppcm = PPCM.new(
        integer1 => 21,
        integer2 => 24,
    );
    say();
    my Int $pm = $ppcm.by-prime-factors();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 27;
    $pm = $ppcm.by-prime-factors();
    say "PPCM(21 ; 24 ; 27) = $pm.";
}

exercise_05();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

