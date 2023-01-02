#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method05 :methodwording, :exe03, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0503.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les cinq septièmes des trois cinquièmes des candidats ont été reçus.';
    $t.tput: 'Les fractions 5/7 et 3/5 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 5 => 7,
        nudepair2 => 3 => 5,
        breakdown-numerators => False, # True par défaut
        breakdown-denominators => False, # True par défaut
        compute-prime-factors => True, # True par défaut
        reduce-last-one => False, # True par défaut
        which-irreducible-fraction-algorithm => '−',
        which-pgcd-algorithm => '#',
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.tput: "{$P.key}/{$P.value} du nombre total des candidats ont été reçus.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_03();
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


