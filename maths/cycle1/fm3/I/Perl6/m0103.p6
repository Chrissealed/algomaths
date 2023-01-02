#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0103.p6> 
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0103.txt",
    );
    my Int $q1 = Int(36 / 6); # Equivaut à 36 div 6
    my Int $q2 = Int(42 / 6); # Equivaut à 42 div 6
    $t.tput: 'a.';
    if ($q2 == $q1 + 1) {
        $t.tput: "36 et 42 sont des multiples consécutifs de 6 :";
        $t.tput: "36 = 6 × $q1";
        $t.tput: "42 = 6 × $q2";
    } else {
        $t.tput: "36 et 42 ne sont pas multiples consécutifs de 6.";
    };

    $t.tput: 'b.';
    $q1 = Int(42 div 7);
    $q2 = Int(56 div 7);
    if $q2 == $q1 + 1 {
        $t.tput: "42 et 56 sont des multiples consécutifs de 7 :";
        $t.tput: "42 = 7 × $q1";
        $t.tput: "56 = 7 × $q2";
    } else {
        $t.tput: "42 et 56 ne sont pas des multiples consécutifs de 7 :";
        $t.tput: "en effet $q1 × 7 = {$q1 * 7}";
        $t.tput: "et $q2 × 7 = {$q2 * 7}";
        $t.tput: "or la différence entre $q2 et $q1 est {$q2 - $q1}";
        $t.tput: "il existe donc un entier intermédiaire multiple de 7 :";
        my Int $q3 = $q1 + 1;
        $t.tput: "$q3 × 7 = {$q3 * 7}";
        $t.tput: "et donc {$q1 * 7} < {$q3 * 7} < {$q2 * 7}.";
    }

    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_03();
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

