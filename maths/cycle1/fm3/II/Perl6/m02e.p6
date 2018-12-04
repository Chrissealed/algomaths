#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-e, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02e.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "Les fractions 5/3, 2/7 et 4/1 sont irréductibles.";
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 5 => 3,
        nudepair2 => 2 => 7,
        nudepair3 => 4 => 1,
        which-ppcm-algorithm => 'bm', # 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'f', # 'factorization',
        which-pgcd-algorithm => 'e', # 'euclide',
    );
    my Pair $P = $fraction.calculate-fractions('add-upx2');

    $t.closefile = True;
    $t.tput: '';
}

exercise_e();
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

