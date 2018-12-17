#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method08_123 :methodwording1, :exe02c, :examples;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0802c.txt',
        filemode => ':a', # :mode<wo>, :create, :append
        writefile => True,
        closefile => False,
    );

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 144,
        integer2 => 240,
    );
    my Int $int = $ppcm.by-larger-number-multiples();
    $t.tput: "PPCM(144 ; 240) = $int.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_02c();
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

