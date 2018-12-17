#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method08_123 :methodwording2, :exe01e, :examples;
use ppcm;

class T does Tput {}
my $t = T.new(
    filepath => 'output/m0801e.txt',
    filemode => ':a', # :mode<wo>, :create, :append
    writefile => True,
    closefile => False,
);

sub answering {
    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 33,
        integer2 => 121,
    );
    my Int $int = $ppcm.by-prime-factors();
    $t.tput: "PPCM(33 ; 121) = $int.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_01e();
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

