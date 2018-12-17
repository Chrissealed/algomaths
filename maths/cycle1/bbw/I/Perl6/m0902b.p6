#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method09 :methodwording, :exe02b, :examples;
use pgcd;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0902b.txt',
        filemode => ':a', # :mode<wo>, :create, :append
        writefile => True,
        closefile => False,
    );

    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 64,
        integer2 => 80,
    );
    my Int $pd = $pgcd.euclide_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 112;
    $pd = $pgcd.euclide_algorithm();
    $t.tput: "PGCD(64 ; 80 ; 112) = $pd.";

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 64,
        integer2 => 80,
    );
    $t.tprint: "\n";
    my Int $pm = $ppcm.by-use-of-pgcd();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 112;
    $pm = $ppcm.by-use-of-pgcd();
    $t.tput: "PPCM(64 ; 80 ; 112) = $pm.";
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_02b();
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

