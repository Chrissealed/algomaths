#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe-t, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m07t.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'π ÷ π/3 = π × 3/π = π × 3/π = 3.';

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_t();
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

