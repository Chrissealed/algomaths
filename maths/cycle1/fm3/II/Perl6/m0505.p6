#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method05 :methodwording, :exe05, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0505.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tprint: 'Les orchidées blanches représentent deux tiers ';
    $t.tput: 'des cinq huitièmes du nombre total de fleurs.';
    $t.tput: 'Les fractions 2/3 et 5/8 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 2 => 3,
        nudepair2 => 5 => 8,
        breakdown-numerators => False, # True par défaut
        breakdown-denominator2 => True,
        #breakdown-denominators => False, # True par défaut
        which-irreducible-fraction-algorithm => '−',
        which-pgcd-algorithm => '#',
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.tput: "Les orchidées blanches représentent {$P.key}/{$P.value} du nombre total de fleurs.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_05();
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


