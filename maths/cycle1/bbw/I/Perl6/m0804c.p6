#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method08_123 :methodwording2, :exe04c, :examples;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0804c.txt',
        filemode => ':a', # :mode<wo>, :create, :append
        writefile => True,
        closefile => False,
    );

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 588,
        integer2 => 504,
    );
    my Int $int = $ppcm.by-prime-factors();
    $t.tput: "PPCM(588 ; 504) = $int.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_04c();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method2();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

