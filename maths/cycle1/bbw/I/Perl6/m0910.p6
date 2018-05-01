#!/usr/bin/env perl6

use v6;
use corrective;
use method09 :methodwording, :exe10;
use pgcd;
use ppcm;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 189,
        integer2 => 252,
    );
    my Int $pd = $pgcd.euclide_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 315;
    $pd = $pgcd.euclide_algorithm();
    say "PGCD(189 ; 252 ; 315) = $pd.";

    my $ppcm = PPCM.new(
        integer1 => 189,
        integer2 => 252,
    );
    say();
    my Int $pm = $ppcm.by-use-of-pgcd();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 315;
    $pm = $ppcm.by-use-of-pgcd();
    say "PPCM(189 ; 252 ; 315) = $pm.";
}

exercise_10();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

