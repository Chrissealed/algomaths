#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe06a, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0106a.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'La fraction 5/18 est irréductible.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 5 => 18,
        reduce-fraction1 => False, # Valeur par défaut
        nudepair2 => 4 => 12,
        reduce-fraction2 => True,
        which-ppcm-algorithm => 'b.u.o.p.', # by-use-of-pgcd,
        which-irreducible-fraction-algorithm => ':', # euclide,
        which-pgcd-algorithm => ':', # euclide,
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('−');

    $t.closefile = True;
    $t.tput: '';
}

exercise_06a();
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

