#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0207.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.04.21
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0207.txt",
    );
    my Int $eggs = 59;
    my Int $capacity = 12;
    my Int $boxes = Int($eggs / $capacity);
    my Int $remainder = $eggs % $capacity;

    $t.tput: "$eggs = $capacity × $boxes + $remainder.";
    if ($remainder > 0) {
        $t.tput: "Il faudra {$boxes + 1} boîtes à la fermière pour ranger ses œufs.";
        $t.tprint: "La dernière boîte contiendra $remainder ";
        $t.tput: ($remainder > 1) ?? 'œufs.' !! 'œuf.';
    }
    else {
        $t.tput: "Les œufs seront contenus exactement dans $boxes boîtes.";
    }

    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_07();
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

