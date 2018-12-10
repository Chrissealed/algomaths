#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe14, :examples;

sub answering {
    say qq:to/EOM/;
Deux nombres pairs sont deux nombres divisibles par 2
donc 2 est un diviseur commun de ces deux nombres
donc le PGCD de deux nombres pairs n'est pas égal à 1
donc deux nombres pairs ne sont pas premiers entre eux.
EOM
}

exercise_14();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();
