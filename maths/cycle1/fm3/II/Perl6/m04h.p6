#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe-h, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m04h.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 5/7, 2/−13 et 7/−3 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 5 => 7,
        #breakdown-factors1 => False,
        nudepair2 => 2 => -13,
        #breakdown-factors2 => False,
        nudepair3 => 7 => -3,
        #breakdown-factors3 => False,
        # Réduire les trois fractions d'un coup,
        # équivalent aux trois attributs 'breakdown-factorsn'
        breakdown'factors => False,
        which-irreducible-fraction-algorithm => 'f',
        which-pgcd-algorithm => 'f',
    );
    my Pair $P = $fraction.calculate-fractions('*');

    $t.closefile = True;
    $t.tput: '';
}

exercise_h();
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

