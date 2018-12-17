#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method08_123 :methodwording2, :exe01b, :examples;
use ppcm;

class T does Tput {}
my $t = T.new(
    filepath => 'output/m0801b.txt',
    filemode => ':a', # :mode<wo>, :create, :append
    writefile => True,
    closefile => False,
);

sub answering {
    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 27,
        integer2 => 45,
    );
    my Int $int = $ppcm.by-prime-factors();
    $t.tput: "PPCM(27 ; 45) = $int.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_01b();
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

