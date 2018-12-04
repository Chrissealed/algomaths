#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-s, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02s.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: '5π/4 − 3π/1 = 5π/4 − 12π/4 = −7π/4.';

    $t.closefile = True;
    $t.tput: '';
}

exercise_s();
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

