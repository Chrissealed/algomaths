#!/usr/bin/env perl6

use v6;
use corrective;
use method09 :methodwording, :exe02c, :examples;
use pgcd;
use ppcm;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 39,
        integer2 => 52,
    );
    my Int $pd = $pgcd.subtraction_algorithm();
    $pgcd.integer1 = $pd;
    $pgcd.integer2 = 130;
    $pd = $pgcd.subtraction_algorithm();
    say "PGCD(39 ; 52 ; 130) = $pd.";

    my $ppcm = PPCM.new(
        integer1 => 39,
        integer2 => 52,
    );
    say();
    my Int $pm = $ppcm.by-larger-number-multiples();
    $ppcm.integer1 = $pm;
    $ppcm.integer2 = 130;
    $pm = $ppcm.by-larger-number-multiples();
    say "PPCM(39 ; 52 ; 130) = $pm.";
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

