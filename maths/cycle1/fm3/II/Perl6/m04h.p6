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
        nudepair2 => 2 => -13,
        nudepair3 => 7 => -3,
        breakdown-numerators => False,
        breakdown-denominators => False,
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

