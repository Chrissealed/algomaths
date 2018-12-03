#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe03b, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0103b.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 4/3 et 5/7 sont irréductibles.';
    $t.tput: 'On réorganise l\'ordre des opérations : 4/3 − 3/21 + 5/7.';
    $t.tput: 'On ne réduit pas la fraction − 3/21 pour conserver le dénominateur 21.';

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 4 => 3,
        nudepair2 => 3 => 21,
        reduce-fraction2 => False,
        nudepair3 => 5 => 7,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'euclide',
        which-pgcd-algorithm => 'euclide',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('subtract-add-up');

    $t.closefile = True;
    $t.tput: '';
}

exercise_03b();
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

