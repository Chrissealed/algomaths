#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe-j, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m07j.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 2/3 et 3/1 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 2 => 3,
        nudepair2 => 3 => 1,
        breakdown-numerators => False,
        breakdown-denominators => False,
        compute-prime-factors => False,
        reduce-last-one => False,
        #which-irreducible-fraction-algorithm => '−',
        #which-pgcd-algorithm => '−',
    );
    my Pair $P = $fraction.calculate-fractions('d');

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_j();
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

