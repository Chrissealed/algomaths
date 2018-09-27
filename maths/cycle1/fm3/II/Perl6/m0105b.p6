#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe05b, :examples;

sub answering {
    say "π/3 − π/4 = 4π/12 − 3π/12 = π/12.";
}

exercise_05b();
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

