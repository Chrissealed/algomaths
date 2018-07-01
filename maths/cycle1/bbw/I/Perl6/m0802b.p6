#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording3, :exe02b, :examples;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 64,
        integer2 => 80,
    );
    say "-- Utilisation de la méthode 3 --";
    my Int $int = $ppcm.by-use-of-pgcd();
    say "PPCM(64 ; 80) = $int.";
}

exercise_02b();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method3();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

