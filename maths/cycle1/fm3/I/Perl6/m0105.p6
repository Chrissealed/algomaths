#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0105.p6> 
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0105.txt",
    );
    $t.tput: "Trois multiples consécutifs de 5 s'écrivent :";
    $t.tput: "5(n-1), 5n et 5(n+1) où n est un entier différent de 0";
    $t.tput:  "or 5(n-1) + 5n + 5(n+1) = 5n - 5 + 5n + 5n + 5 = 15n.";
    $t.tput: "La somme de trois multiples consécutifs  de 5 peut donc s'écrire 15n,";
    $t.tput: "produit de 15 par un entier.";
    $t.tput: "La somme de trois multiples consécutifs de 5 est donc bien un multiple de 15.";
    $t.tput: "Prenons un exemple :";
    my Int $m = 5*3 + 5*4 + 5*5;
    my Int $n = 4*15;
    $t.tput: "5 × 3 + 5 × 4 + 5 × 5 = $m";
    $t.tput: "et 4 × 15 = $n";

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

