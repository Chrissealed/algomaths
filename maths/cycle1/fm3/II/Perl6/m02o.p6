#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-o, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02o.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Le nombre 1 est équivalent à la fraction 1/1.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 5 => 12,
        nudepair2 => 4 => 21,
        nudepair3 => 3 => 7,
        # On joue sur les options de réduction dans une liste
        # chaînée d'opérations
        reduce-last-one => False,
        reduce-last-once => False,
        which-ppcm-algorithm => 'bp',
        which-irreducible-fraction-algorithm => 'e',
        which-pgcd-algorithm => 'e',
    );
    my Pair $P = $fraction.calculate-fractions('+−');
    $t.tprint: "\n";
    $fraction.nudepair1 = $P.key => $P.value;
    $fraction.nudepair2 = 1 => 1;
    # Ne pas oublier de mettre à Nil les attributs inemployés
    $fraction.nudepair3 = Nil;
    # On réduit cette fois la dernière fraction
    $fraction.reduce-last-one = True;
    $P = $fraction.calculate-fractions('+');
    $t.tprint: "\n";
    $t.tput: q/Pour faire les calculs en une seule passe :/;
    $t.tput: q|84/84 − 36/84 + 35/84 + 16/84 = 99/84 = 33/28.|;

    $t.closefile = True;
    $t.tput: '';
}

exercise_o();
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

