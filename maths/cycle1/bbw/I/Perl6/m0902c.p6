#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method09 :methodwording, :exe02c, :examples;
use pgcd;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0902c.txt',
        filemode => ':a', # :mode<wo>, :create, :append
        writefile => True,
        closefile => False,
    );

    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 39,
        integer2 => 52,
    );
    my Int $pd = $pgcd.subtraction_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 130;
    $pd = $pgcd.subtraction_algorithm();
    $t.tput: "PGCD(39 ; 52 ; 130) = $pd.";

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 39,
        integer2 => 52,
    );
    $t.tprint: "\n";
    my Int $pm = $ppcm.by-larger-number-multiples();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 130;
    $pm = $ppcm.by-larger-number-multiples();
    $t.tput: "PPCM(39 ; 52 ; 130) = $pm.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_02c();
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

