#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method08_123 :methodwording3, :exe04b, :examples;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0804b.txt',
        filemode => ':a', # :mode<wo>, :create, :append
        writefile => True,
        closefile => False,
    );

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 276,
        integer2 => 414,
    );
    my Int $int = $ppcm.by-use-of-pgcd();
    $t.tput: "PPCM(276 ; 414) = $int.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_04b();
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

