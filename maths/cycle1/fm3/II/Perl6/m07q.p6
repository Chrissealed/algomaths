#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe-q, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m07q.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: '6/1 ÷ π/8 = 6 × 8/π × 1 = 48/π.';

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_q();
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

