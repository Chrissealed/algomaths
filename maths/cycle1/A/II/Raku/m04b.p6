#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe-b, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m04b.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions −7/3 et −1/−28 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -7 => 3,
        nudepair2 => -1 => -28,
        breakdown-numerators => False,
        breakdown-denominator2 => True, # breakdown-denominators passe à False
        compute-prime-factors => True, # True par défaut
        which-irreducible-fraction-algorithm => 'euclide',
        which-pgcd-algorithm => 'euclide',
    );
    my Pair $P = $fraction.calculate-fractions('*');

    $t.closefile = True;
    $t.tput: '';
}

exercise_b();
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

