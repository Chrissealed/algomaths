#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-q, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06q.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    
    $t.tput: 'π/6 ÷ 1/10 = 10π/6 = 5π/3.';

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

