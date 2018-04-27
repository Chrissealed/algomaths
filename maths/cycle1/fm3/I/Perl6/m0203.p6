#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe03;

sub answering {
    my Int $quotient = 19;
    my Int $remainder = 4;
    my Int $divisor = 6;
    my Int $dividend = $divisor * $quotient + $remainder;
    say "Le dividende est donc $divisor × $quotient + $remainder = $dividend.";
}

exercise_03();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

