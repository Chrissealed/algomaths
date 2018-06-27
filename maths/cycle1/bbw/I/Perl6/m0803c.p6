#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording3, :exe03c, :examples;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 888,
        integer2 => 185,
    );
    say "-- Utilisation de la méthode 3 --";
    my Int $int = $ppcm.by-use-of-pgcd();
    say "PPCM(888 ; 185) = $int.";
}

exercise_03c();
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

