#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording2, :exe02;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 27,
        integer2 => 45,
    );
    say "-- Utilisation de la méthode 2 --";
    my Int $int = $ppcm.by-prime-factors();
    say "PPCM(27 ; 45) = $int.";
}

exercise_02();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method2();
}
do-put-up-correct-version();
answering();

