#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe01;

sub answering {
    exercise_01();
}  

my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method;
}
answering();

