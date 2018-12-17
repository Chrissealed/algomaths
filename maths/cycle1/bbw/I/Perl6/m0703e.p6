#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe03e, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0703e.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 1024,
        integer2 => 1152,
    );
    my Int $p = $pgcd.factorization_algorithm();
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_03e();
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

