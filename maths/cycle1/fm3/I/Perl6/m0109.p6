#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0109.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.13
=end pod

use corrective;
use teeput;
use method01;

sub answering {
    class T does Tput {}
    my $t = T.new(
        writefile => True,
        filemode => ':a', # :mod<wo>, :create, :append
        closefile => False,
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0108.txt",
    );
    $t.tput: "Quatre multiples consécutifs de 6 peuvent s'écrire :";
    $t.tput: "6 × (n―1), 6 × n, 6 × (n+1) et 6 × (n+2)";
    $t.tput: "où n est un entier naturel > 0.";
    $t.tput: "6 × (n―1) + 6 × n + 6 × (n+1) + 6 × (n+2) = 6n ― 6 + 6n + 6n + 6 + 6n + 12";
    $t.tput: "ce qui revient à : 24n + 12";
    $t.tput: "or 24n + 12 = 228 ce qui implique que 24n = 228 ― 12 = 216";
    my Int $n = Int(216 / 24);
    $t.tput: "et donc que n = 216 ÷ 24 = $n.";
    $t.tput: "Pour n = $n,";
    $t.tprint: "6 × {$n-1} + 6 × $n + 6 × {$n+1} + 6 × {$n+2} = ";
    $t.tput: "{6*($n-1)} + {6*$n} + {6*($n+1)} + {6*($n+2)}";
    $t.tput: "donc les quatre multiples consécutifs de 6 dont la somme est égale à 228 sont :";
    my Int $m1 = 6*($n-1);
    my Int $m2 = 6*($n);
    my Int $m3 = 6*($n+1);
    my Int $m4 = 6*($n+2);
    $t.tput: "$m1, $m2, $m3, $m4.";
    $t.tput: "On a bien $m1 + $m2 + $m3 + $m4 = {$m1+$m2+$m3+$m4}.";

    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_09();
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

