#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe01, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0301.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 7/12 et 1/4 sont irréductibles';
    
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 7 => 12,
        nudepair2 => 1 => 4,
        which-ppcm-algorithm => 'b.p.f.',
        which-irreducible-fraction-algorithm => 'f',
        which-pgcd-algorithm => 'f',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    $t.tput: "Les {$P.key}/{$P.value} du cocktail d'agrumes sont de l'orange ou du pamplemousse.";
    $t.tprint: "\n";
    $fraction.nudepair1 = 1 => 1;
    $fraction.nudepair2 = $P.key => $P.value;
    $P = $fraction.calculate-fractions('−');
    say "Dans ce cocktail d'agrumes, la proportion de citron est de {$P.key}/{$P.value}.";

    $t.closefile = True;
    $t.tput: '';
}

exercise_01();
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

