#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method09 :methodwording, :exe02a, :examples;
use pgcd;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0902a.txt',
        filemode => ':a', # :mode<wo>, :create, :append
        writefile => True,
        closefile => False,
    );

    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 28,
        integer2 => 35,
    );
    my Int $pd = $pgcd.euclide_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 49;
    $pd = $pgcd.euclide_algorithm();
    say "PGCD(28 ; 35 ; 49) = $pd.";

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 28,
        integer2 => 35,
    );
    $t.tprint: "\n";
    my Int $pm = $ppcm.by-use-of-pgcd();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 49;
    $pm = $ppcm.by-use-of-pgcd();
    $t.tput: "PPCM(28 ; 35 ; 49) = $pm.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_02a();
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

