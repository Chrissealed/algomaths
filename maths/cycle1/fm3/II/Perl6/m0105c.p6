#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe05c, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0105c.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "Le plus petit multiple commun non nul de 10 et 4 est 20; 2 × 2 × 5 = 20;";
    $t.tput: "π/10 + 3π/4 = 2π/20 + 15π/20 = 17π/20.";

    $t.closefile = True;
    $t.tput: '';
}

exercise_05c();
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

