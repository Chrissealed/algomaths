#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method05 :methodwording, :exe01, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0501.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Dans cette bouteille, il y a deux tiers de trois quarts de litres de liquide.';
    $t.tput: 'Les fractions 2/3 et 3/4 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 2 => 3,
        nudepair2 => 3 => 4,
        breakdown-denominator2 => True,
        breakdown-numerators => False, # True par défaut
        #breakdown-denominators => False, # True par défaut
        #compute-prime-factors => False, # True par défaut
        which-irreducible-fraction-algorithm => '−',
        which-pgcd-algorithm => '#',
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.tput: "Il y a {$P.key}/{$P.value} litre de liquide dans cette bouteille.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_01();
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


