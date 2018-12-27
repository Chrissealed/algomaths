#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method05 :methodwording, :exe06, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0506.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'La moitié des deux tiers des chocolats sont au lait et aux noisettes.';
    $t.tput: 'Les fractions 1/2 et 2/3 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 1 => 2,
        nudepair2 => 2 => 3,
        breakdown-numerators => False, # True par défaut
        breakdown-denominators => False, # True par défaut
        #compute-prime-factors => False, # True par défaut
        reduce-last-one => False,
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.tprint: "{$P.key}/{$P.value} des chocolats de cette boîte ";
    $t.tput: "sont des chocolats au lait et aux noisettes.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_06();
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


