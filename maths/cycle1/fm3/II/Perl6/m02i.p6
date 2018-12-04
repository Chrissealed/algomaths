#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-i, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02i.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Le nombre 1 est équivalent à la fraction 1/1.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 1 => 1,
        nudepair2 => 5 => 6,
        nudepair3 => 3 => 4,
        which-ppcm-algorithm => 'b.p.f.', # by-prime-factors,
        which-irreducible-fraction-algorithm => '×', # factorization,
        which-pgcd-algorithm => '*', # 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions('++');
    $t.tprint: "\n";
    $fraction.nudepair1 = $P.key => $P.value;
    $fraction.nudepair2 = 1 => 2;
    # Ne pas oublier de désactiver la troisième fraction
    $fraction.nudepair3 = Nil;
    $P = $fraction.calculate-fractions('+');
    $t.tprint: "\n";
    $t.tprint: 'Equivalent de ces calculs en une seule passe :';
    $t.tprint: '1 + 1/2 + 3/4 + 5/6 = 12/12 + 6/12 + 9/12 + 10/12 = 37/12.';

    $t.closefile = True;
    $t.tput: '';
}

exercise_i();
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

