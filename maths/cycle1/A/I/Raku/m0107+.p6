#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0107+.p6> 
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0107+.txt",
    );
    my Int ($n1, $n2, $n3) = 11, 13, 15;
    my Int $m1 = $n1 * $n2;
    my Int $m2 = $n1 * $n3;

    $t.tput: 'a.';
    $t.tput: "Si un nombre est multiple à la fois de $n1 et de $n2 qui n'ont pas de diviseur commun";
    $t.tput: "autre que 1, alors il est nécessairement multiple de leur produit $m1 ($n1 × $n2 = $m1),";
    $t.tput: "or $m1 est inférieur à 150 il répond à la question. On peut trouver un nombre non nul";
    $t.tput: "inférieur à 150 multiple à la fois de $n1 et de $n2, c'est $m1.";
    $t.tput: 'b.';
    $t.tput: "Si un nombre est multiple à la fois de $n1 et de $n3 qui n'ont pas de diviseur commun";
    $t.tput: "autre que 1, alors il est nécessairement multiple de leur produit $m2 ($n1 × $n3 = $m2),";
    $t.tput: "or $m2 est supérieur à 150, on ne peut donc pas trouver un nombre non nul inférieur à 150";
    $t.tput: "multiple à la fois de $n1 et de $n3.";

    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_07b();
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

