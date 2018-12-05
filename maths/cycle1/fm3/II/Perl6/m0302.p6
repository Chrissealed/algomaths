#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe02, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0302.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 1/7 et 2/5 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 1 => 7,
        nudepair2 => 2 => 5,
        which-ppcm-algorithm => 'by-f',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    $t.tput: "Antoine a payé {$P.key}/{$P.value} du prix total de l'automobile avant le dernier versement.";
    $t.tprint: "\n";
    $fraction.nudepair1 = 1 => 1;
    $fraction.nudepair2 = $P.key => $P.value;
    $P = $fraction.calculate-fractions('−');
    $t.tput: "Le dernier versement représente {$P.key}/{$P.value} du prix total.";

    $t.closefile = True;
    $t.tput: '';
}

exercise_02();
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

