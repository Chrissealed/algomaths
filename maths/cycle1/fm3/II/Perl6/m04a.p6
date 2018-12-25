#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe-a, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m04a.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 4/11 et 5/3 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 4 => 11,
        nudepair2 => 5 => 3,
        breakdown-numerators => False,
        breakdown-denominators => False,
        compute-prime-factors => False,
        which-irreducible-fraction-algorithm => 'euclide',
        which-pgcd-algorithm => 'subtraction',
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.closefile = True;
    $t.tput: '';
}

exercise_a();
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

