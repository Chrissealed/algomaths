#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording3, :exe18;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 588,
        integer2 => 504,
    );
    say "-- Utilisation de la méthode 3 --";
    my Int $int = $ppcm.by-use-of-pgcd();
    say "PPCM(588 ; 504) = $int.";
}

exercise_18();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method3();
}
do-put-up-correct-version();
answering();

