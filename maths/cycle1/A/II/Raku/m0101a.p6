#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe01a, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0101a.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 9/5 et 4/5 sont irréductibles.';

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 9 => 5,
        reduce-fraction1 => False, # Valeur par défaut
        nudepair2 => 4 => 5,
        reduce-fraction2 => False, # Valeur par défaut
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('add-up');

    $t.closefile = True;
    $t.tput: '';
}

exercise_01a();
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

