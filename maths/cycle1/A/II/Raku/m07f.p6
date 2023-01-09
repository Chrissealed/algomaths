#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe-f, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m07f.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions − 3/8 et 24/1 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -3 => 8,
        nudepair2 => 24 => 1,
        breakdown-numerator2 => True,
        breakdown-denominators => False,
        compute-prime-factors => True,
        reduce-last-one => True,
        which-irreducible-fraction-algorithm => '−',
        which-pgcd-algorithm => '−',
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_f();
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

