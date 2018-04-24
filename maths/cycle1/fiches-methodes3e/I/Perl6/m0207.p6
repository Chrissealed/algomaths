#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe07;

sub answering {
    my Int $eggs = 59;
    my Int $capacity = 12;
    my Int $boxes = Int($eggs / $capacity);
    my Int $remainder = $eggs % $capacity;

    say "$eggs = $capacity × $boxes + $remainder.";
    if ($remainder > 0) {
        say "Il faudra ", $boxes + 1, " boîtes à la fermière pour ranger ses œufs.";
        print "La dernière boîte contiendra $remainder ";
        say ($remainder > 1) ?? 'œufs.' !! 'œuf.';
    }
    else {
        say "Les œufs seront contenus exactement dans $boxes boîtes.";
    }
}

exercise_07();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

