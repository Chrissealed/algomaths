#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe05b, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0105b.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "π/3 − π/4 = 4π/12 − 3π/12 = π/12.";

    $t.closefile = True;
    $t.tput: '';
}

exercise_05b();
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

