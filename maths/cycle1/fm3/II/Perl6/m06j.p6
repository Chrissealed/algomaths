#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-j, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06j.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'La fraction 3/100 est irréductible.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 4 => 10,
        nudepair2 => 3 => 100,
        #reduce-fraction1 => True,
        breakdown-numerators => False,
        breakdown-denominators => False,
        #compute-prime-factors => False,
        which-irreducible-fraction-algorithm => 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions(':');

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

