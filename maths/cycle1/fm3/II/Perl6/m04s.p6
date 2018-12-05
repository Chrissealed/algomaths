#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe-s, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m04s.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: '1/3 × π/4 = π/12.';

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

