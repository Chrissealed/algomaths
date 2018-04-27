#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording1, :exe01;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 12,
        integer2 => 30,
    );
    say "-- Utilisation de la méthode 1 --";
    my Int $int = $ppcm.by-larger-number-multiples();
    say "PPCM(12 ; 30) = $int.";
}

exercise_01();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method1();
}
do-put-up-correct-version();
answering();

