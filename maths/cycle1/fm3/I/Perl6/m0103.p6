#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe03;

sub answering {
    my Int $q1 = Int(36 / 6);
    my Int $q2 = Int(42 / 6);
    say 'a.';
    if ($q2 == $q1 + 1) {
        say "36 et 42 sont des multiples consécutifs de 6 :";
        say "36 = 6 × $q1";
        say "42 = 6 × $q2";
    } else {
        say "36 et 42 ne sont pas multiples consécutifs de 6.";
    };

    say 'b.';
    $q1 = Int(42 / 7);
    $q2 = Int(56 / 7);
    if $q2 == $q1 + 1 {
        say "42 et 56 sont des multiples consécutifs de 7 :";
        say "42 = 7 × $q1";
        say "56 = 7 × $q2";
    } else {
        say "42 et 56 ne sont pas des multiples consécutifs de 7 :";
        say "en effet $q1 × 7 = ", $q1 * 7;
        say "et $q2 × 7 = ", $q2 * 7;
        say "or la différence entre $q2 et $q1 est ", $q2 - $q1;
        say "il existe donc un entier intermédiaire multiple de 7 :";
        my Int $q3 = $q1 + 1;
        say "$q3 × 7 = ", $q3 * 7;
        say "et donc ", $q1 * 7, " < ", $q3 * 7, " < ", $q2 * 7, ".";
    }
}

exercise_03();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

