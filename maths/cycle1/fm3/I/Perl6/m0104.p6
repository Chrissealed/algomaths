#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe04, :examples;

sub answering {
    my Int $q1 = 4;
    my Int $q2 = $q1 + 1;
    say "$q1 × n et $q2 × n sont deux multiples consécutifs de l'entier n.";
    say "Plus généralement, étant donné deux entiers non nuls q1 et q2";
    say "tels que q2 = q1 + 1, q1 × n et q2 × n sont deux multiples consécutifs de n.";
}

exercise_04();
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

