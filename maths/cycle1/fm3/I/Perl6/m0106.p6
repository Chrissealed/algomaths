#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0106.p6> 
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
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0106.txt",
    );
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
                    $t.tput: "Le nombre $n est multiple à la fois de 11 et de 17";
                    $t.tput: "et est compris entre 500 et 800;";
                    if ($n % 2 == 0) {
                        $t.tput: "de plus $n est un nombre pair.";
                    } else {
                        $t.tput: "mais $n est un nombre impair.";
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

    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_06();
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

