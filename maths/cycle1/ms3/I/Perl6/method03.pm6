unit module Method03;

use v6;

=begin pod
=NAME B<Method03> : Perl 6 module in B<algomaths>/maths/cycle1/ms3/I/Perl6/B<method03.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.17
=end pod

=begin pod
=NAME module B<Method03>
=AUTHOR Christian Béloscar
=VERSION 0.1.119
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method is export(:methodwording) {
    my $message = qq:to/EOM/;
###################################################################################
# Méthode 3. Comment multiplier rapidement ?
###################################################################################
# ▲ A. Principe: En connaissant parfaitement ses tables.
# Apprenez-les par cœur. Sur la diagonale, on repère la suite des carrés :
# 1² = 1, 2² = 4, 3² = 9, 4² = 16, 5² = 25, 6² = 36, 7² = 49, 8² = 64, 9² = 81, 10² = 100.
# ---------------------------------------------------------------------------------
# ▲ B. Principe: En décomposant par addition.
# On utilise la propriété (a + b) × c = a × c + b × c.
# ---------------------------------------------------------------------------------
# ▲ C. Principe: En décomposant par soustraction.
# On utilise la propriété (a – b) × c = a × c – b × c.
# ---------------------------------------------------------------------------------
# ▲ D. Principe: En décomposant par plusieurs petites multiplications.
# Pour multiplier par 6, on multiplie par 2 puis par 3.
# Pour multiplier par 15, on multiplie par 3 puis par 5, etc.
# ---------------------------------------------------------------------------------
# ▲ E. Principe: En utilisant la division.
# Pour multiplier par 50 (par exemple), on multiplie par 100 puis on divise par 2
# (car 50 = 100 ÷ 2). S'il s'agit de multiplier par 25, on multiplie par 100 puis
# on divise par 4 (car 25 = 100 ÷ 4), etc.
###################################################################################

EOM
    $t.filepath = 'output/method03.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples03.pdf &';
}

sub result(Int:D $int, Str:D $strint) {
    state Int $true-answers = 0;
    state Int $false-answers = 0;
    $t.tput: $strint;
    try {
        if $int == Int($strint) {
            $t.tput: "Vrai";
            $true-answers++;
        } else {
            $t.tput: "Faux. Recommencez.";
            $false-answers++;
            return 0;
        }
    }
    if $! {
        if ($strint eq 'q' || $strint eq 'Q') {
            $t.tput: "Réponses correctes : $true-answers";
            $t.tput: "Réponses incorrectes : $false-answers";
            $t.closefile = True;
            $t.tprint: "\n";
            exit;
        }
        put "Donnée incorrecte ! Recommencez.";
        $! = Any;
        return 0;
    }
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m03.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3 :';
    $t.closefile = False;
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.tput: '# -----------';
    $t.tput: '# CALCUL MENTAL : MULTIPLICATIONS';
    $t.tprint: "\n";
    my Str $level = '0';
    my Int $randomlevel = 0;
    my Int $lastrandomlevel = 0;
    my Str $answer = '0';

    loop {
        $level = prompt "Choisissez un niveau : 1, 2 ou 3, ou 0 pour un choix aléatoire (tapez 'q' à n'importe quel moment pour quitter) : ";
        given $level {
            when '1' { $t.tput: "Niveau 1"; }
            when '2' { $t.tput: "Niveau 2"; }
            when '3' { $t.tput: "Niveau 3"; }
            when '0' { $t.tput: "Choix aléatoire"; }
            when 'q' or 'Q' {
                $t.closefile = True;
                $t.tprint: "\n";
                exit;
            }
            default {
                put "Donnée incorrecte !";
            }
        }
        last if $level ~~ / <[0123]> /;
    }

    given $level {
        when '1' {
            repeat {
                $t.tprint: "1. 21 × 4 = ";
                $answer = get;
                result(84, $answer);
            } until ($answer eq '84');
            repeat {
                $t.tprint: "2. 12 × 7 = ";
                $answer = get;
                result(84, $answer);
            } until ($answer eq '84');
            repeat {
                $t.tprint: "3. 13 × 5 = ";
                $answer = get;
                result(65, $answer);
            } until ($answer eq '65');
            repeat {
                $t.tprint: "4. 33 × 4 = ";
                $answer = get;
                result(132, $answer);
            } until ($answer eq '132');
            repeat {
                $t.tprint: "5. 16 × 6 = ";
                $answer = get;
                result(96, $answer);
            } until ($answer eq '96');
            repeat {
                $t.tprint: "6. 15 × 9 = ";
                $answer = get;
                result(135, $answer);
            } until ($answer eq '135');
            repeat {
                $t.tprint: "7. 25 × 6 = ";
                $answer = get;
                result(150, $answer);
            } until ($answer eq '150');
            repeat {
                $t.tprint: "8. 35 × 4 = ";
                $answer = get;
                result(140, $answer);
            } until ($answer eq '140');
            repeat {
                $t.tprint: "9. 53 × 5 = ";
                $answer = get;
                result(265, $answer);
            } until ($answer eq '265');
            repeat {
                $t.tprint: "10. 63 × 3 = ";
                $answer = get;
                result(189, $answer);
            } until ($answer eq '189');
            repeat {
                $t.tprint: "11. 35 × 6 = ";
                $answer = get;
                result(210, $answer);
            } until ($answer eq '210');
            repeat {
                $t.tprint: "12. 27 × 7 = ";
                $answer = get;
                result(189, $answer);
            } until ($answer eq '189');
            $t.tput: "Fin du niveau 1.";
        }
        when '2' {
            repeat {
                $t.tprint: "1. 43 × 8 = ";
                $answer = get;
                result(344, $answer);
            } until ($answer eq '344');
            repeat {
                $t.tprint: "2. 64 × 5 = ";
                $answer = get;
                result(320, $answer);
            } until ($answer eq '320');
            repeat {
                $t.tprint: "3. 72 × 3 = ";
                $answer = get;
                result(216, $answer);
            } until ($answer eq '216');
            repeat {
                $t.tprint: "4. 96 × 3 = ";
                $answer = get;
                result(288, $answer);
            } until ($answer eq '288');
            repeat {
                $t.tprint: "5. 23 × 6 = ";
                $answer = get;
                result(138, $answer);
            } until ($answer eq '138');
            repeat {
                $t.tprint: "6. 34 × 7 = ";
                $answer = get;
                result(238, $answer);
            } until ($answer eq '238');
            repeat {
                $t.tprint: "7. 54 × 6 = ";
                $answer = get;
                result(324, $answer);
            } until ($answer eq '324');
            repeat {
                $t.tprint: "8. 12 × 15 = ";
                $answer = get;
                result(180, $answer);
            } until ($answer eq '180');
            repeat {
                $t.tprint: "9. 18 × 13 = ";
                $answer = get;
                result(234, $answer);
            } until ($answer eq '234');
            repeat {
                $t.tprint: "10. 28 × 12 = ";
                $answer = get;
                result(336, $answer);
            } until ($answer eq '336');
            repeat {
                $t.tprint: "11. 32 × 15 = ";
                $answer = get;
                result(480, $answer);
            } until ($answer eq '480');
            repeat {
                $t.tprint: "12. 41 × 16 = ";
                $answer = get;
                result(656, $answer);
            } until ($answer eq '656');
            $t.tput: "Fin du niveau 2.";
        }
        when '3' {
            repeat {
                $t.tprint: "1. 400 × 12 = ";
                $answer = get;
                result(4800, $answer);
            } until ($answer eq '4800');
            repeat {
                $t.tprint: "2. 41 × 12 = ";
                $answer = get;
                result(492, $answer);
            } until ($answer eq '492');
            repeat {
                $t.tprint: "3. 39 × 12 = ";
                $answer = get;
                result(468, $answer);
            } until ($answer eq '468');
            repeat {
                $t.tprint: "4. 13 × 120 = ";
                $answer = get;
                result(1560, $answer);
            } until ($answer eq '1560');
            repeat {
                $t.tprint: "5. 4 × 128 = ";
                $answer = get;
                result(512, $answer);
            } until ($answer eq '512');
            repeat {
                $t.tprint: "6. 81 × 5 = ";
                $answer = get;
                result(405, $answer);
            } until ($answer eq '405');
            repeat {
                $t.tprint: "7. 78 × 3 = ";
                $answer = get;
                result(234, $answer);
            } until ($answer eq '234');
            repeat {
                $t.tprint: "8. 193 × 2 = ";
                $answer = get;
                result(386, $answer);
            } until ($answer eq '386');
            repeat {
                $t.tprint: "9. 256 × 2 = ";
                $answer = get;
                result(512, $answer);
            } until ($answer == '512');
            repeat {
                $t.tprint: "10. 512 × 8 = ";
                $answer = get;
                result(4096, $answer);
            } until ($answer eq '4096');
            repeat {
                $t.tprint: "11. 27 × 18 = ";
                $answer = get;
                result(486, $answer);
            } until ($answer eq '486');
            repeat {
                $t.tprint: "12. 60 × 15 = ";
                $answer = get;
                result(900, $answer);
            } until ($answer eq '900');
            $t.tput: "Fin du niveau 3.";
        }
        when '0' {
            loop {
                repeat {
                    $randomlevel = 36.rand.ceiling;
                } until ($randomlevel != $lastrandomlevel);
                $lastrandomlevel = $randomlevel;
                given $randomlevel {
                    when 1 {
                        repeat {
                            $t.tprint: "1. 21 × 4 = ";
                            $answer = get;
                            result(84, $answer);
                        } until ($answer eq '84');
                    }
                    when 2 {
                        repeat {
                            $t.tprint: "2. 12 × 7 = ";
                            $answer = get;
                            result(84, $answer);
                        } until ($answer eq '84');
                    }
                    when 3 {
                        repeat {
                            $t.tprint: "3. 13 × 5 = ";
                            $answer = get;
                            result(65, $answer);
                        } until ($answer eq '65');
                    }
                    when 4 {
                        repeat {
                            $t.tprint: "4. 33 × 4 = ";
                            $answer = get;
                            result(132, $answer);
                        } until ($answer eq '132');
                    }
                    when 5 {
                        repeat {
                            $t.tprint: "5. 16 × 6 = ";
                            $answer = get;
                            result(96, $answer);
                        } until ($answer eq '96');
                    }
                    when 6 {
                        repeat {
                            $t.tprint: "6. 15 × 9 = ";
                            $answer = get;
                            result(135, $answer);
                        } until ($answer eq '135');
                    }
                    when 7 {
                        repeat {
                            $t.tprint: "7. 25 × 6 = ";
                            $answer = get;
                            result(150, $answer);
                        } until ($answer eq '150');
                    }
                    when 8 {
                        repeat {
                            $t.tprint: "8. 35 × 4 = ";
                            $answer = get;
                            result(140, $answer);
                        } until ($answer eq '140');
                    }
                    when 9 {
                        repeat {
                            $t.tprint: "9. 53 × 5 = ";
                            $answer = get;
                            result(265, $answer);
                        } until ($answer eq '265');
                    }
                    when 10 {
                        repeat {
                            $t.tprint: "10. 63 × 3 = ";
                            $answer = get;
                            result(189, $answer);
                        } until ($answer eq '189');
                    }
                    when 11 {
                        repeat {
                            $t.tprint: "11. 35 × 6 = ";
                            $answer = get;
                            result(210, $answer);
                        } until ($answer eq '210');
                    }
                    when 12 {
                        repeat {
                            $t.tprint: "12. 27 × 7 = ";
                            $answer = get;
                            result(189, $answer);
                        } until ($answer eq '189');
                    }
                    when 13 {
                        repeat {
                            $t.tprint: "13. 43 × 8 = ";
                            $answer = get;
                            result(344, $answer);
                        } until ($answer eq '344');
                    }
                    when 14 {
                        repeat {
                            $t.tprint: "14. 64 × 5 = ";
                            $answer = get;
                            result(320, $answer);
                        } until ($answer eq '320');
                    }
                    when 15 {
                        repeat {
                            $t.tprint: "15. 72 × 3 = ";
                            $answer = get;
                            result(216, $answer);
                        } until ($answer eq '216');
                    }
                    when 16 {
                        repeat {
                            $t.tprint: "16. 96 × 3 = ";
                            $answer = get;
                            result(288, $answer);
                        } until ($answer eq '288');
                    }
                    when 17 {
                        repeat {
                            $t.tprint: "17. 23 × 6 = ";
                            $answer = get;
                            result(138, $answer);
                        } until ($answer eq '138');
                    }
                    when 18 {
                        repeat {
                            $t.tprint: "18. 34 × 7 = ";
                            $answer = get;
                            result(238, $answer);
                        } until ($answer eq '238');
                    }
                    when 19 {
                        repeat {
                            $t.tprint: "19. 54 × 6 = ";
                            $answer = get;
                            result(324, $answer);
                        } until ($answer eq '324');
                    }
                    when 20 {
                        repeat {
                            $t.tprint: "20. 12 × 15 = ";
                            $answer = get;
                            result(180, $answer);
                        } until ($answer eq '180');
                    }
                    when 21 {
                        repeat {
                            $t.tprint: "21. 18 × 13 = ";
                            $answer = get;
                            result(234, $answer);
                        } until ($answer eq '234');
                    }
                    when 22 {
                        repeat {
                            $t.tprint: "22. 28 × 12 = ";
                            $answer = get;
                            result(336, $answer);
                        } until ($answer eq '336');
                    }
                    when 23 {
                        repeat {
                            $t.tprint: "23. 32 × 15 = ";
                            $answer = get;
                            result(480, $answer);
                        } until ($answer eq '480');
                    }
                    when 24 {
                        repeat {
                            $t.tprint: "24. 41 × 16 = ";
                            $answer = get;
                            result(656, $answer);
                        } until ($answer eq '656');
                    }
                    when 25 {
                        repeat {
                            $t.tprint: "25. 400 × 12 = ";
                            $answer = get;
                            result(4800, $answer);
                        } until ($answer eq '4800');
                    }
                    when 26 {
                        repeat {
                            $t.tprint: "26. 41 × 12 = ";
                            $answer = get;
                            result(492, $answer);
                        } until ($answer eq '492');
                    }
                    when 27 {
                        repeat {
                            $t.tprint: "27. 39 × 12 = ";
                            $answer = get;
                            result(468, $answer);
                        } until ($answer eq '468');
                    }
                    when 28 {
                        repeat {
                            $t.tprint: "28. 13 × 120 = ";
                            $answer = get;
                            result(1560, $answer);
                        } until ($answer eq '1560');
                    }
                    when 29 {
                        repeat {
                            $t.tprint: "29. 4 × 128 = ";
                            $answer = get;
                            result(512, $answer);
                        } until ($answer eq '512');
                    }
                    when 30 {
                        repeat {
                            $t.tprint: "30. 81 × 5 = ";
                            $answer = get;
                            result(405, $answer);
                        } until ($answer eq '405');
                    }
                    when 31 {
                        repeat {
                            $t.tprint: "31. 78 × 3 = ";
                            $answer = get;
                            result(234, $answer);
                        } until ($answer eq '234');
                    }
                    when 32 {
                        repeat {
                            $t.tprint: "32. 193 × 2 = ";
                            $answer = get;
                            result(386, $answer);
                        } until ($answer eq '386');
                    }
                    when 33 {
                        repeat {
                            $t.tprint: "33. 256 × 2 = ";
                            $answer = get;
                            result(512, $answer);
                        } until ($answer == '512');
                    }
                    when 34 {
                        repeat {
                            $t.tprint: "34. 512 × 8 = ";
                            $answer = get;
                            result(4096, $answer);
                        } until ($answer eq '4096');
                    }
                    when 35 {
                        repeat {
                            $t.tprint: "35. 27 × 18 = ";
                            $answer = get;
                            result(486, $answer);
                        } until ($answer eq '486');
                    }
                    when 36 {
                        repeat {
                            $t.tprint: "36. 60 × 15 = ";
                            $answer = get;
                            result(900, $answer);
                        } until ($answer eq '900');
                    }
                }
            }
        }
    }
}
