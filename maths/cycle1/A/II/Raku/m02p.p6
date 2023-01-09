#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-p, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02p.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'π/3 − π/1 = π×1/3×1 − 3π/1×3 = −2π/3.';

    $t.closefile = True;
    $t.tput: '';
}

exercise_p();
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

