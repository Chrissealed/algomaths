#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording1, :exe02c, :examples;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 144,
        integer2 => 240,
    );
    say "-- Utilisation de la méthode 1 --";
    my Int $int = $ppcm.by-larger-number-multiples();
    say "PPCM(144 ; 240) = $int.";
}

exercise_02c();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method1();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

