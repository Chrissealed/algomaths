#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-s, :examples;

sub answering {
    say "5π/4 − 3π/1 = 5π/4 − 12π/4 = −7π/4."
}

exercise_s();
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

