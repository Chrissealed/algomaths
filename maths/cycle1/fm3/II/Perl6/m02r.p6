#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-r, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02r.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'π/1 − π/2 − π3 = 6π/6 − 3π/6 − 2π/6 = π/6.';

    $t.closefile = True;
    $t.tput: '';
}

exercise_r();
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

