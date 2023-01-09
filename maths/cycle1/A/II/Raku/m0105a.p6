#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe05a, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0105a.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 1/2, 2/3 et 3/4 sont irréductibles.';

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 1 => 2,
        nudepair2 => 2 => 3,
        nudepair3 => 3 => 4,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => '÷', # euclide,
        which-pgcd-algorithm => '÷', # euclide,
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('++');

    $t.tprint: "\n";
    $t.tput: "Les fractions {$P.key}/{$P.value}, 4/5 et 5/6 sont irréductibles.";
    $fraction.nudepair1 = $P.key => $P.value;
    $fraction.nudepair2 = 4 => 5;
    $fraction.nudepair3 = 5 => 6;
    $P = $fraction.calculate-fractions('add-upx2');
}

exercise_05a();
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

