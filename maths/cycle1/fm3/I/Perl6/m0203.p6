#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe03, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0203.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int $quotient = 19;
    my Int $remainder = 4;
    my Int $divisor = 6;
    my Int $dividend = $divisor * $quotient + $remainder;
    $t.tput: "Le dividende est donc $divisor × $quotient + $remainder = $dividend.";

    $t.closefile = True;
    $t.tput: '';
}

exercise_03();
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

