#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe02, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0102.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int $q = Int(300 div 53);
    my Int $m = $q * 53;
    $t.tput: "Le produit de $q par 53 = $m";
    $t.tput: "Les multiples de 53 compris entre 300 et 500 sont :";
    loop {
        $q += 1;
        $m = $q * 53;
        last if $m >= 500;
        $t.tput: "$q × 53 = $m";
    }

    $t.closefile = True;
    $t.tput: '';
}

exercise_02();
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

