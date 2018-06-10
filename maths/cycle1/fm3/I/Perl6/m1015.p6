#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe15, :examples;

sub answering {
    say qq:to/EOM/;
259 = 258 × 1 + 1 donc PGCD(259;258) = PGCD(258;1) = 1
donc 258 et 259 sont des nombres premiers entre eux.
EOM
}

exercise_15();
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

