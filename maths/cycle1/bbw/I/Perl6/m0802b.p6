#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method08_123 :methodwording3, :exe02b, :examples;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0802b.txt',
        filemode => ':a', # :mode<wo>, :create, :append
        writefile => True,
        closefile => False,
    );

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 64,
        integer2 => 80,
    );
    my Int $int = $ppcm.by-use-of-pgcd();
    $t.tput: "PPCM(64 ; 80) = $int.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_02b();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method3();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

