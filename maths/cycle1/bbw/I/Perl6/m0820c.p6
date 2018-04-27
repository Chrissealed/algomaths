#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording3, :exe20;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 403,
        integer2 => 221,
    );
    say "-- Utilisation de la méthode 3 --";
    my Int $int = $ppcm.by-use-of-pgcd();
    say "PPCM(403 ; 221) = $int.";
}

exercise_20();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method3();
}
do-put-up-correct-version();
answering();

