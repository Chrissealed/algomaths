#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording1, :exe04;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 16,
        integer2 => 40,
    );
    say "-- Utilisation de la méthode 1 --";
    my Int $int = $ppcm.by-larger-number-multiples();
    say "PPCM(16 ; 40) = $int.";
}

exercise_04();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method1();
}
do-put-up-correct-version();
answering();

