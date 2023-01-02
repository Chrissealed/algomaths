#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<m0902b.p6> 
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/m0902b.txt",
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

my $xchoice = ChooseX.new();
$xchoice.exercise_02b();
my Bool $boolean = do-put-up-method();
if $boolean {
    $xchoice.put-up-methodfm3_7();
    $xchoice.put-up-method8_3();
}
$boolean = do-put-up-examples();
if $boolean {
    $xchoice.show-examples;
}
do-put-up-correct-version();
answering();

