#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe05, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0305.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 2/3 et 1/5 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 2 => 3,
        nudepair2 => 1 => 5,
        which-ppcm-algorithm => 'by-f',
        which-irreducible-fraction-algorithm => 's',
        which-pgcd-algorithm => 's',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    
    $t.tprint: "\n";
    $fraction.nudepair1 = 1 => 1;
    $fraction.nudepair2 = $P.key => $P.value;
    $P = $fraction.calculate-fractions('-');
    $t.tput: "Il reste {$P.key}/{$P.value} de la récolte de cerises pour manger en dessert.";

    $t.closefile = True;
    $t.tput: '';
}

exercise_05();
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

