#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe03, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0303.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 1/6, 1/4 et 1/3 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 1 => 6,
        nudepair2 => 1 => 4,
        nudepair3 => 1 => 3,
        which-ppcm-algorithm => 'bm',
        which-irreducible-fraction-algorithm => 's',
        which-pgcd-algorithm => 'f',
    );
    my Pair $P = $fraction.calculate-fractions('++');
    $t.tprint: "\n";

    $fraction.nudepair1 = 1 => 1;
    $fraction.nudepair2 = $P.key => $P.value;
    $fraction.nudepair3 = Nil;
    $fraction.which-ppcm-algorithm = 'b.u.o.p.';
    $fraction.which-pgcd-algorithm = '#';
    $P = $fraction.calculate-fractions('−');
    
    $t.tput: "Il reste {$P.key}/{$P.value} de la pizza pour Jules.";

    $t.closefile = True;
    $t.tput: '';
}

exercise_03();
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

