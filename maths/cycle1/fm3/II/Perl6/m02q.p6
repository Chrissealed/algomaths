#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-q, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02q.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'π/1 + π/7 = 7π/7 + π/7 = 8π/7.';

    $t.closefile = True;
    $t.tput: '';
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

