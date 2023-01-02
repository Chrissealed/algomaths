#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<m0902c.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.10
=end pod

use corrective;
use teeput;
use method09;
use pgcd;
use ppcm;

sub answering {
    class T does Tput {}
    my $t = T.new(
        writefile => True,
        filemode => ':a', # :mode<wo>, :create, :append
        closefile => False,
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/m0902c.txt",
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

my $xchoice = ChooseX.new();
$xchoice.exercise_02c();
my Bool $boolean = do-put-up-method();
if $boolean {
    $xchoice.put-up-methodfm3_5();
    $xchoice.put-up-method8_1();
}
$boolean = do-put-up-examples();
if $boolean {
    $xchoice.show-examples;
}
do-put-up-correct-version();
answering();

