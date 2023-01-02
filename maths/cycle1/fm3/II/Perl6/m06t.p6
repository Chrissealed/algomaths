#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-t, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06t.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    
    $t.tput: '5π/12 ÷ π/4 = 20π/12π = 5π/3π = 5/3.';
    $t.tput: 'ou :';
    $t.tput: '5π/12 ÷ π/4 = 5π/3×4 × 4/π = 5/3.';

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

