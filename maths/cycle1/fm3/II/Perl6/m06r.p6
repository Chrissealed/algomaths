#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-r, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06r.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    
    $t.tput: 'π/3 ÷ π/3 = 3π/3π = 1.';

    $t.closefile = True;
    $t.tprint: "\n";
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

