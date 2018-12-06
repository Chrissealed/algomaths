#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe08, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0208.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int $chocolates = 346;
    my Int $capacity = 16;
    my Int $caskets = Int($chocolates / $capacity);
    my Int $remainder = $chocolates % $capacity;
    $t.tput: "$chocolates = $capacity × $caskets + $remainder.";
    $t.tput: "Le confiseur pourra remplir $caskets coffrets.";
    $t.tprint: "Il lui restera $remainder ";
    $t.tput: ($remainder > 1) ?? 'chocolats.' !! 'chocolat.';

    $t.closefile = True;
    $t.tput: '';
}

exercise_08();
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

