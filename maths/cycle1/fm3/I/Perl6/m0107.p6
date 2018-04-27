#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe07;

sub answering {
    say 'a.';
    my Int $i = 2;
    my Int $j = 2;
    my Bool $flag = False;
    my Int $m = 0;
    my Int $n = 0;
    while (11 * $i < 150) {
        $m = 11 * $i;
        while (13 * $j < 150) {
            $n = 13 * $j;
            if $n == $m {
                say "Le nombre $n > 0 et < 150  est à la fois multiple de 11 et de 13 : $n = 11 × $i et 13 × $j.";
                $flag = True;
                $j += 1;
                last;
            }
            $j += 1;
        }
        $i += 1;
        # Réinitialisation de j pour la boucle suivante;
        $j = 2;
    }
    say "Pas de multiple commun à 11 et 13 compris entre 0 et 150!" if !$flag;
;
    say 'b.';
    $i = 2;
    $j = 2;
    $flag = False;
    $m = 0;
    $n = 0;
    while (11 * $i < 150) {
        $m = 11 * $i;
        while (15 * $j < 150) {
            $n = 15 * $j;
            if ($n == $m) {
                say "Le nombre $n > 0 et < 150  est à la fois multiple de 11 et de 15 : $n = 11 × $i et 15 × $j";
                $flag = True;
                $j += 1;
                last;
            }
            $j += 1;
        }
        $i += 1;
        # Réinitialisation de j pour la boucle suivante;
        $j = 2;
    }
    say "Pas de multiple commun à 11 et 15 compris entre 0 et 150!" if !$flag;
}

exercise_07();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

