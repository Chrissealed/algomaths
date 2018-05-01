#!/usr/bin/env perl6

use v6;
use corrective;
use method09 :methodwording, :exe07;
use pgcd;
use ppcm;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 64,
        integer2 => 80,
    );
    my Int $pd = $pgcd.euclide_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 112;
    $pd = $pgcd.euclide_algorithm();
    say "PGCD(64 ; 80 ; 112) = $pd.";

    my $ppcm = PPCM.new(
        integer1 => 64,
        integer2 => 80,
    );
    say();
    my Int $pm = $ppcm.by-use-of-pgcd();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 112;
    $pm = $ppcm.by-use-of-pgcd();
    say "PPCM(64 ; 80 ; 112) = $pm.";
}

exercise_07();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

