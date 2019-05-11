#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0106+.p6> 
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0106+.txt",
    );
    $t.tput: "Si un nombre est multiple à la fois de 11 et de 17 qui n'ont pas de diviseur";
    $t.tput: "commun autre que 1, alors il est nécessairement multiple de leur produit 187";
    $t.tput: "(11 × 17 = 187).";

    my Int $n1 = 187;
    my Int $n2 = 2;
    my Int $m = 0;
    while ($n1 * $n2 <= 800) {
        $m = $n1 * $n2;
        $t.tput: "On a :";
        $t.tput: "187 × $n2 = $m";
        if ($m > 500) {
             $t.tput: "$m est un multiple à la fois de 11 et de 17 compris entre 500 et 800;";
             if ($m % 2 == 0) {
                 $t.tput: "et $m est un nombre pair.";
             } else {
                 $t.tput: "mais $m est un nombre impair.";
             }
        }
        $n2 += 1;
    }

    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_06b();
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

