#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe-g, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m04g.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions −3/5 et 8/3 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -3 => 5,
        nudepair2 => -15 => 24,
        reduce-fraction2 => True,
        nudepair3 => 8 => 3,
        breakdown-numerators => False,
        breakdown-denominators => False,
        which-irreducible-fraction-algorithm => 'e',
        which-pgcd-algorithm => 's',
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.closefile = True;
    $t.tput: '';
}

exercise_g();
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

