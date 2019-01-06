#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-n, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06n.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions (−42)/5 et 77/5 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -42 => 5,
        nudepair2 => 77 => 5,
        #breakdown-numerator1 => True, # False par défaut
        breakdown-numerators => False, # True par défaut
        #breakdown-denominator2 => True,
        breakdown-denominators => False, # True par défaut
        compute-prime-factors => True, # True par défaut
        which-irreducible-fraction-algorithm => '×',
    );
    my Pair $P = $fraction.calculate-fractions(':');

    $t.closefile = True;
    $t.tprint: "\n";
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

