#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe04d, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0104d.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 1/2, 1/3 et 1/4 sont irréductibles.';

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 1 => 2,
        nudepair2 => 1 => 3,
        nudepair3 => 1 => 4,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'subtraction',
        which-pgcd-algorithm => 'divisors-listing',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('subtract-add-up');
    $t.tprint: "\n";
    $t.tput: "Pour faire les calculs en une passe, on peut écrire :";
    $t.tput: "1/2 − 1/3 + 1/4 = 6/12 − 4/12 + 3/12 = 6−4+3/12 = 5/12.";

    $t.closefile = True;
    $t.tput: '';
}

exercise_04d();
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

