#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-p, :examples;

sub answering {
    say "π/3 − π/1 = π×1/3×1 − 3π/1×3 = −2π/3."
}

exercise_p();
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

