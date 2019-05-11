#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0202.p6> 
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0202.txt",
    );
    my Int $dividend = 260;
    my Int $divisor = 8;
    my Int $quotient = Int($dividend / $divisor);
    my Int $remainder = $dividend % $divisor;
    $t.tput: "Celà revient à se demander combien de fois y-a-t-il $divisor dans $dividend ?";
    $t.tput: "Soit diviser $dividend par $divisor :";
    $t.tput: "$dividend ÷ $divisor = $quotient.";
    $t.tput: "Le reste de la division est : $dividend modulo $divisor = $remainder.";
    if ($remainder > 0) {
        $t.tput: "Il faudra donc $quotient tables pour servir $dividend ― $remainder étudiants";
        $t.tput: "plus une table pour servir $remainder étudiants";
        $t.tput: "soit {$quotient + 1} tables afin de servir les $dividend étudiants.";
    } else {
        $t.tput: "Il faudra donc exactement $quotient tables de $divisor pour servir les $dividend étudiants.";
    }

    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_02();
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

