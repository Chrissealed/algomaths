#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe-n, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m04n.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions −5/7, 2/3 et 7/−10 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -5 => 7,
        nudepair2 => 2 => 3,
        nudepair3 => 7 => -10,
        breakdown-numerators => False,
        breakdown-denominator3 => True,
        reduce-last-one => False,
        which-irreducible-fraction-algorithm => '−',
        which-pgcd-algorithm => '#',
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.closefile = True;
    $t.tput: '';
}

exercise_n();
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

