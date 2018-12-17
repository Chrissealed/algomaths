#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method08_123 :methodwording2, :exe04e, :examples;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0804e.txt',
        filemode => ':a', # :mode<wo>, :create, :append
        writefile => True,
        closefile => False,
    );

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 403,
        integer2 => 221,
    );
    my Int $int = $ppcm.by-prime-factors();
    $t.tput: "PPCM(403 ; 221) = $int.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_04e();
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

