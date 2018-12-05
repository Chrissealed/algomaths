#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe06, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0306.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 4/15 et 1/3 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 4 => 15,
        nudepair2 => 1 => 3,
        # On ne réduit pas la fraction intermédiaire
        reduce-last-one => False,
        which-ppcm-algorithm => 'b.l.n.m.',
        which-irreducible-fraction-algorithm => 'e',
        which-pgcd-algorithm => ':',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    
    $fraction.nudepair1 = 1 => 1;
    $fraction.nudepair2 = $P.key => $P.value;
    # On réduit la dernière fraction
    $fraction.reduce-last-one = True;
    $P = $fraction.calculate-fractions('subtract');

    $t.tput: "Il reste {$P.key}/{$P.value} du gâteau.";

    $t.closefile = True;
    $t.tput: '';
}

exercise_06();
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

