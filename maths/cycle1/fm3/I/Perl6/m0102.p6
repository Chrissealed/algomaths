#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0102.p6> 
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0102.txt",
    );
    my Int $q = Int(300 div 53);
    my Int $m = $q * 53;
    $t.tput: "Le produit de $q par 53 = $m";
    $t.tput: "Les multiples de 53 compris entre 300 et 500 sont :";
    loop {
        $q += 1;
        $m = $q * 53;
        last if $m >= 500;
        $t.tput: "$q × 53 = $m";
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

