#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording2, :exe05;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 33,
        integer2 => 121,
    );
    say "-- Utilisation de la méthode 2 --";
    my Int $int = $ppcm.by-prime-factors();
    say "PPCM(33 ; 121) = $int.";
}

exercise_05();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method2();
}
do-put-up-correct-version();
answering();

