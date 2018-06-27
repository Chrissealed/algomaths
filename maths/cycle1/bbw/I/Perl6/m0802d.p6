#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording2, :exe02d, :examples;
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

exercise_02d();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method2();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

