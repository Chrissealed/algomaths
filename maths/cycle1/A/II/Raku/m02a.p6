#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-a, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02a.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "Les fractions 7/1 et 3/4 sont irréductibles.";
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 7 => 1,
        nudepair2 => 3 => 4,
        which-ppcm-algorithm => 'by-use-of-pgcd', # b.u.o.p.,
        which-irreducible-fraction => '×', # factorization,
        which-pgcd-algorithm => '×', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('+');

    $t.closefile = True;
    $t.tput: '';
}

exercise_a();
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

