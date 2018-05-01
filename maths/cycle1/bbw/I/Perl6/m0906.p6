#!/usr/bin/env perl6

use v6;
use corrective;
use method09 :methodwording, :exe06;
use pgcd;
use ppcm;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 28,
        integer2 => 35,
    );
    my Int $pd = $pgcd.euclide_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 49;
    $pd = $pgcd.euclide_algorithm();
    say "PGCD(28 ; 35 ; 49) = $pd.";

    my $ppcm = PPCM.new(
        integer1 => 28,
        integer2 => 35,
    );
    say();
    my Int $pm = $ppcm.by-use-of-pgcd();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 49;
    $pm = $ppcm.by-use-of-pgcd();
    say "PPCM(28 ; 35 ; 49) = $pm.";
}

exercise_06();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

