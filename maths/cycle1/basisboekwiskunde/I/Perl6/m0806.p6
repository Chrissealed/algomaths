#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording3, :exe06;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 52,
        integer2 => 39,
    );
    say "-- Utilisation de la méthode 3 --";
    my Int $int = $ppcm.by-use-of-pgcd();
    say "PPCM(52 ; 39) = $int.";
}

exercise_06();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method3();
}
do-put-up-correct-version();
answering();

