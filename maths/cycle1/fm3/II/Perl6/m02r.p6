#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-q, :examples;

sub answering {
    say "π/1 − π/2 − π3 = 6π/6 − 3π/6 − 2π/6 = π/6."
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

