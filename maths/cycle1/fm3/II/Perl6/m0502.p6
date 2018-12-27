#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method05 :methodwording, :exe02, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0502.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les deux cinquièmes des deux tiers des employés';
    $t.tput: 'sont des hommes de moins de 35 ans.';
    $t.tput: 'Les fractions 2/3 et 2/5 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 2 => 3,
        nudepair2 => 2 => 5,
        breakdown-numerators => False, # True par défaut
        breakdown-denominators => False, # True par défaut
        compute-prime-factors => False, # True par défaut
        which-irreducible-fraction-algorithm => '−',
        which-pgcd-algorithm => '#',
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.tput: "Les hommes de moins de 35 ans représentent {$P.key}/{$P.value} du nombre total d'employés.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_02();
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


