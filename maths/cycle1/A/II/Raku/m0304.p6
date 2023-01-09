#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe04, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0304.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 1/3 et 1/2 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 1 => 3,
        nudepair2 => 1 => 2,
        which-ppcm-algorithm => 'bm',
        which-irreducible-fraction-algorithm => 'f',
        which-pgcd-algorithm => '×',
    );
    my Pair $P = $fraction.calculate-fractions('+');

    $t.tprint: "\n";
    $fraction.nudepair1 = 1 => 1;
    $fraction.nudepair2 = $P.key => $P.value;
    $P = $fraction.calculate-fractions('−');
    say "Il reste au cultivateur {$P.key}/{$P.value} de la surface de son champ à planter.";
}

exercise_04();
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

