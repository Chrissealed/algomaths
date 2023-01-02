#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method05 :methodwording, :exe04, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0504.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les trois quarts des quatre cinquièmes des enfants sont';
    $t.tput: 'des garçons de moins de 5 ans.';
    $t.tput: 'Les fractions 3/4 et 4/5 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 3 => 4,
        nudepair2 => 4 => 5,
        breakdown-numerators => False, # True par défaut
        breakdown-denominators => False, # True par défaut
        #compute-prime-factors => False, # True par défaut
        which-irreducible-fraction-algorithm => '−',
        which-pgcd-algorithm => '#',
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.tprint: "Dans cette colonie, {$P.key}/{$P.value} des enfants ";
    $t.tput: "sont des garçons de moins de cinq ans.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_04();
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


