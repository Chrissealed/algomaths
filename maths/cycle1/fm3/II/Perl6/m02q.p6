#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-q, :examples;
use operations-on-fractions;

sub answering {
    say "π/1 + π/7 = 7π/7 + π/7 = 8π/7."
}

exercise_q();
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

