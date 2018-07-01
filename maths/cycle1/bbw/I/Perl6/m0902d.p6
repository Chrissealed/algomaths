#!/usr/bin/env perl6

use v6;
use corrective;
use method09 :methodwording, :exe02d, :examples;
use pgcd;
use ppcm;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 144,
        integer2 => 168,
    );
    my Int $pd = $pgcd.factorization_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 252;
    $pd = $pgcd.factorization_algorithm();
    say "PGCD(144 ; 168 ; 252) = $pd.";

    my $ppcm = PPCM.new(
        integer1 => 144,
        integer2 => 168,
    );
    say();
    my Int $pm = $ppcm.by-prime-factors();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 252;
    $pm = $ppcm.by-prime-factors();
    say "PPCM(144 ; 168 ; 252) = $pm.";
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

