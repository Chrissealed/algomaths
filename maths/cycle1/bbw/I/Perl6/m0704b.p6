#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe04b, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0704b.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 1721,
        integer2 => 1726,
    );
    my Int $p = $pgcd.factorization_algorithm();
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_04b();
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

