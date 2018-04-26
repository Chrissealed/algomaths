#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording1, :exe12;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 144,
        integer2 => 216,
    );
    say "-- Utilisation de la méthode 1 --";
    my Int $int = $ppcm.by-larger-number-multiples();
    say "PPCM(144 ; 216) = $int.";
}

exercise_12();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method1();
}
do-put-up-correct-version();
answering();

