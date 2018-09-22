#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe01b, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer 2/21 – 5/21;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 2,
        denominator1 => 21,
        nominator2 => 5,
        denominator2 => 21,
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('subtract');
}

exercise_01b();
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

