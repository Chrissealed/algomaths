#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe-m, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m04m.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 13/−7 et 2/91 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 13 => -7,
        nudepair2 => 2 => 91,
        breakdown-numerators => False,
        breakdown-denominator2 => True,
        #breakdown-denominators => False,
        which-irreducible-fraction-algorithm => '÷',
        which-pgcd-algorithm => ':',
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.closefile = True;
    $t.tput: '';
}

exercise_m();
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

