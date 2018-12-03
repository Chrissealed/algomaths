#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe06b, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0106b.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 15 => 30,
        reduce-fraction1 => True,
        nudepair2 => 3 => 12,
        reduce-fraction2 => True,
        which-ppcm-algorithm => 'b.p.f.', # by-prime-factors,
        which-irreducible-fraction-algorithm => '*', # factorization,
        which-pgcd-algorithm => '*', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('−');

    $t.closefile = True;
    $t.tput: '';
}

exercise_06b();
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

