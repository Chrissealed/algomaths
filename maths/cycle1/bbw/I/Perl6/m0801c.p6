#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method08_123 :methodwording1, :exe01c, :examples;
use ppcm;

class T does Tput {}
my $t = T.new(
    filepath => 'output/m0801c.txt',
    filemode => ':a', # :mode<wo>, :create, :append
    writefile => True,
    closefile => False,
);

sub answering {
    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 18,
        integer2 => 63,
    );
    my Int $int = $ppcm.by-larger-number-multiples();
    $t.tput: "PPCM(18 ; 63) = $int.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_01c();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method1();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

