#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-s, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06s.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    
    $t.tput: '1/3 ÷ π/2 = 1/3 × 2/π =  2/3π.';

    $t.closefile = True;
    $t.tprint: "\n";
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

