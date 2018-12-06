#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe05, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0105.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "Trois multiples consécutifs de 5 s'écrivent :";
    $t.tput: "5(n-1), 5n et 5(n+1) où n est un entier différent de 0";
    $t.tput:  "or 5(n-1) + 5n + 5(n+1) = 5n - 5 + 5n + 5n + 5 = 15n.";
    $t.tput: "La somme de trois multiples consécutifs  de 5 peut donc s'écrire 15n,";
    $t.tput: "produit de 15 par un entier.";
    $t.tput: "La somme de trois multiples consécutifs de 5 est donc bien un multiple de 15.";
    $t.tput: "Prenons un exemple :";
    my Int $m = 5*3 + 5*4 + 5*5;
    my Int $n = 4*15;
    $t.tput: "5 × 3 + 5 × 4 + 5 × 5 = $m";
    $t.tput: "et 4 × 15 = $n";

    $t.closefile = True;
    $t.tput: '';
}

exercise_05();
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

