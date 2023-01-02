#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0101.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.12
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0101.txt",
    );

    $t.tput: "Existe-t-il un entier q tel que 180 = 15q ?";
    my Int $integer = 180;
    my Int $divisor = 15;
    my Int $q = $integer div $divisor;
    if ($integer mod $divisor == 0) {
        $t.tput: "$integer est divisible par $divisor :";
        $t.tput: "il existe un entier q tel que $divisor × q = $integer : $q.";
    } else {
        $t.tput: "$integer n'est pas le produit de $divisor par un entier q.";
    }

    $t.tprint: "\n";
    $t.tput: "Existe-t-il un entier q tel que 260 = 15q ?";
    $integer = 260;
    $q = $integer div $divisor;
    my Int $m = $divisor * $q;
    my Int $n = $divisor * ($q + 1);
    if ($integer mod $divisor == 0) {
        $t.tput: "$integer est divisible par $divisor :";
        $t.tput: "il existe un entier q tel que $divisor × $q = $integer : $q.";
    } else {
        $t.tput: "$integer n'est pas le produit de $divisor par un entier q :";
        $t.tput: "$integer ÷ $divisor = $q";
        $t.tput: "$divisor × $q = $m";
        $t.tput: "$divisor × $q + 1 = $n";
        $t.tput: "or $m < $integer < $n";
        $t.tput: "et comme $q et $q+1 sont deux entiers consécutifs,";
        $t.tput: "alors il n'existe pas d'entier q tel que $integer = $divisor × q.";
    }
    $t.closefile = True;
    $t.tprint: "\n";
}  

my $xchoice = ChooseX.new();
$xchoice.exercise_01();
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

