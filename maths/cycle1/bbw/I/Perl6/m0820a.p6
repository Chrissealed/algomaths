#!/usr/bin/env perl6

use v6;
use corrective;
use method08_123 :methodwording1, :exe20;
use ppcm;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 403,
        integer2 => 221,
    );
    say "-- Utilisation de la méthode 1 --";
    my Int $int = $ppcm.by-larger-number-multiples();
    say "PPCM(403 ; 221) = $int.";
}

exercise_20();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method1();
}
do-put-up-correct-version();
answering();

