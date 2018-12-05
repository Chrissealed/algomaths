#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe-d, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m04d.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 3/7, 5/11 et 7/2 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 3 => 7,
        nudepair2 => 5 => 11,
        nudepair3 => 7 => 2,
        breakdown'factors => False,
        compute'prime'factors => True, # Valeur par défaut
        which-irreducible-fraction-algorithm => '×',
        which-pgcd-algorithm => '÷',
    );
    my Pair $P = $fraction.calculate-fractions('multiply');

    $t.closefile = True;
    $t.tput: '';
}

exercise_d();
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

