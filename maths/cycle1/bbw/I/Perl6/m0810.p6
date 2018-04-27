#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording2, :exe10;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 68,
        integer2 => 51,
    );
    say "-- Utilisation de la méthode 2 --";
    my Int $int = $ppcm.by-prime-factors();
    say "PPCM(68 ; 51) = $int.";
}

exercise_10();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method2();
}
do-put-up-correct-version();
answering();

