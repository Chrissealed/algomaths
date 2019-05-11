#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0205.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.15
=end pod

use corrective;
use teeput;
use method02;

sub answering {
    class T does Tput {}
    my $t = T.new(
        writefile => True,
        filemode => ':a', # :mod<wo>, :create, :append
        closefile => False,
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0205.txt",
    );
    my Int $cards = 52;
    my Int $players = 3;
    my Int $q = Int($cards / $players);
    my Int $remainder = $cards % $players;
    $t.tput: "$cards = $players × $q + $remainder.";
    $t.tput: "Chaque joueur se verra attribuer au maximum $q cartes.";
    $t.tprint: "Il restera $remainder ";
    $t.tput: $remainder > 1 ?? 'cartes.' !! 'carte.';

    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_05();
my Bool $boolean = do-put-up-method();
if $boolean {
    $xchoice.put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    $xchoice.show-examples;
}
do-put-up-correct-version();
answering();

