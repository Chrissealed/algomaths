#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0104.p6> 
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0104.txt",
    );
    my Int $q1 = 4;
    my Int $q2 = $q1 + 1;
    $t.tput: "$q1 × n et $q2 × n sont deux multiples consécutifs de l'entier n.";
    $t.tput: "Plus généralement, étant donné deux entiers non nuls q1 et q2";
    $t.tput: "tels que q2 = q1 + 1, q1 × n et q2 × n sont deux multiples consécutifs de n.";

    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_04();
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

