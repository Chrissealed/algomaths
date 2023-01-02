#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-l, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06l.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 20/21 et 5/14 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 20 => 21,
        nudepair2 => 5 => 14,
        #reduce-fraction1 => True,
        breakdown-numerator1 => True,
        breakdown-denominators => True,
        #compute-prime-factors => False, # True par défaut
        which-irreducible-fraction-algorithm => '×',
    );
    my Pair $P = $fraction.calculate-fractions(':');

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_l();
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

