#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06;

sub answering {
    my Int $n1 = Int(500 / 11);
    my Int $n2 = Int(500 / 17);
    my Int $m = 0;
    my Int $n = 0;

    while ($n1 * 11 <= 800) {
        $m = $n1 * 11;
        # Comparaison de tous les multiples de n2 avec ceux de n1
        while ($n2 * 17 <= 800) {
            $n = $n2 * 17;
            if ($n == $m) {
                if ($n >= 500) && ($n <= 800) {
                    say "Le nombre $n est multiple à la fois de 11 et de 17";
                    say "et est compris entre 500 et 800;";
                    if ($n % 2 == 0) {
                        say "de plus $n est un nombre pair.";
                    } else {
                        say "mais $n est un nombre impair.";
                    }
                    # Quand un match est trouvé, continuer à la première boucle
                    # au cas où plusieurs matchs seraient possibles
                    last;
                }
            }
            $n2 += 1;
        }
        $n1 += 1;
        # Réinitialisation de n2 pour la boucle suivante
        $n2 = Int(500 / 17);
    }
}

exercise_06();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

