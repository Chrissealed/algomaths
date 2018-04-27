#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording2, :exe09;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 169,
        integer2 => 130,
    );
    say "-- Utilisation de la méthode 2 --";
    my Int $int = $ppcm.by-prime-factors();
    say "PPCM(169 ; 130) = $int.";
}

exercise_09();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method2();
}
do-put-up-correct-version();
answering();

