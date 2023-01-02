#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-f, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02f.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 3 => 1,
        nudepair2 => 3 => 4,
        nudepair3 => 1 => 2,
        which-ppcm-algorithm => 'by-m', # 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'f', # 'factorization',
        which-pgcd-algorithm => '/', # divisors-listing,
    );
    my Pair $P = $fraction.calculate-fractions('+−');

    $t.closefile = True;
    $t.tput: '';
}

exercise_f();
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

