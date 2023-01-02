#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe-t, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m04t.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: '7/12 × 4π/5 = 7×4π/3×4×5 = 7π/15.';

    $t.closefile = True;
    $t.tput: '';
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

