#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe02;

sub answering {
    my Int $dividend = 260;
    my Int $divisor = 8;
    my Int $quotient = Int($dividend / $divisor);
    my Int $remainder = $dividend % $divisor;
    say "Celà revient à se demander combien de fois y-a-t-il $divisor dans $dividend ?";
    say "Soit diviser $dividend par $divisor :";
    say "$dividend ÷ $divisor = $quotient.";
    say "Le reste de la division est : $dividend modulo $divisor = $remainder.";
    if ($remainder > 0) {
        say "Il faudra donc $quotient tables pour servir $dividend ― $remainder étudiants";
        say "plus une table pour servir $remainder étudiants";
        say "soit ", $quotient + 1, " tables afin de servir les $dividend étudiants.";
    } else {
        say "Il faudra donc exactement $quotient tables de $divisor pour servir les $dividend étudiants.";
    }
}

exercise_02();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

