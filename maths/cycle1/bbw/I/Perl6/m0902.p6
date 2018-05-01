#!/usr/bin/env perl6

use v6;
use corrective;
use method09 :methodwording, :exe02;
use pgcd;
use ppcm;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 24,
        integer2 => 30,
    );
    my Int $pd = $pgcd.factorization_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 36;
    $pd = $pgcd.factorization_algorithm();
    say "PGCD(24 ; 30 ; 36) = $pd.";

    my $ppcm = PPCM.new(
        integer1 => 24,
        integer2 => 30,
    );
    say();
    my Int $pm = $ppcm.by-prime-factors();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 36;
    $pm = $ppcm.by-prime-factors();
    say "PPCM(24 ; 30 ; 36) = $pm.";
}

exercise_02();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

