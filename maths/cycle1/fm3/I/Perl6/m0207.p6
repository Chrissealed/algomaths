#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe07, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0207.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
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
    $t.tput: '';
}

exercise_07();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

