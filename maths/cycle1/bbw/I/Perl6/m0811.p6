#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording1, :exe11;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 250,
        integer2 => 125,
    );
    say "-- Utilisation de la méthode 1 --";
    my Int $int = $ppcm.by-larger-number-multiples();
    say "PPCM(250 ; 125) = $int.";
}

exercise_11();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method1();
}
do-put-up-correct-version();
answering();

