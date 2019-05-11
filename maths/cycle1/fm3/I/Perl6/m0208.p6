#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0208.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.05.04
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0208.txt",
    );
    my Int $chocolates = 346;
    my Int $capacity = 16;
    my Int $caskets = Int($chocolates / $capacity);
    my Int $remainder = $chocolates % $capacity;
    $t.tput: "$chocolates = $capacity × $caskets + $remainder.";
    $t.tput: "Le confiseur pourra remplir $caskets coffrets.";
    $t.tprint: "Il lui restera $remainder ";
    $t.tput: ($remainder > 1) ?? 'chocolats.' !! 'chocolat.';

    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_08();
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

