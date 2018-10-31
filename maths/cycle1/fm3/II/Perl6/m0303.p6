#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe03, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 1,
        denominator1 => 6,
        numerator2 => 1,
        denominator2 => 4,
        numerator3 => 1,
        denominator3 => 3,
        which-ppcm-algorithm => 'bm',
        which-irreducible-fraction-algorithm => 's',
        which-pgcd-algorithm => 'f',
    );
    my Pair $P = $fraction.calculate-fractions('++');
    say();
    $fraction.numerator1 = 1;
    $fraction.denominator1 = 1;
    $fraction.numerator2 = $P.key;
    $fraction.denominator2 = $P.value;
    $fraction.numerator3 = Nil;
    $fraction.denominator3 = Nil;
    $fraction.which-ppcm-algorithm = 'b.u.o.p.';
    $fraction.which-pgcd-algorithm = '#';
    $P = $fraction.calculate-fractions('−');
    
    say "Il reste {$P.key}/{$P.value} de la pizza pour Jules.";
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

