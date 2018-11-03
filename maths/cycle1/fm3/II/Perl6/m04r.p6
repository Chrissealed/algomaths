#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-s, :examples;

sub answering {
    put '1/3 × π/4 = π/12.';
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

