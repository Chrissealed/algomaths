#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method08 :methodwording, :exe05, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0805.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 13692,
        integer2 => 6357,
    );
    $pgcd.euclide_algorithm();

    $t.closefile = True;
    $t.tprint: "\n";
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

