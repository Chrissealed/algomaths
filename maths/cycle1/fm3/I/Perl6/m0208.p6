#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe08;

sub answering {
    my Int $chocolates = 346;
    my Int $capacity = 16;
    my Int $caskets = Int($chocolates / $capacity);
    my Int $remainder = $chocolates % $capacity;
    say "$chocolates = $capacity × $caskets + $remainder.";
    say "Le confiseur pourra remplir $caskets coffrets.";
    print "Il lui restera $remainder ";
    say ($remainder > 1) ?? 'chocolats.' !! 'chocolat.';
}

exercise_08();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

