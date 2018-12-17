unit module Method04;

use v6;

=begin pod
=NAME B<Method04> : Perl 6 module in B<algomaths>/maths/cycle1/ms3/I/Perl6/B<method04.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.17
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method is export(:methodwording) {
    my $message = qq:to/EOM/;
###################################################################################
# Méthode 4. Comment diviser rapidement ?
###################################################################################
# ▲ A. Principe: En partant du deuxième.
# Plutôt que de calculer a ÷ b en partant de a, on part de b pour rejoindre a en
# essayant de trouver par combien il faut multiplier.
# ---------------------------------------------------------------------------------
# ▲ B. Principe: En décomposant par plusieurs petites divisions.
# Pour diviser par 6, on divise successivement par 2 puis par 3 (c'est ce que l'on
# fait concrètement lorsqu'on coupe un gâteau d'anniversaire en 6 parts : on le
# coupe d'abord en 2 puis chacune des deux moitiés en 3).
# De même pour diviser par 15, on divise successivement par 3 puis par 5, etc.
# ---------------------------------------------------------------------------------
# ▲ C. Principe: En utilisant la multiplication.
# Plutôt que de diviser par 5, on multiplie par 2 puis on divise par 10. S'il s'agit
# de diviser par 25, on multiplie par 4 puis on divise par 100, etc.
###################################################################################

EOM
    $t.filepath = 'output/method04.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples04.pdf &';
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

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m04.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4 :';
    $t.closefile = False;
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.tput: '# -----------';
    $t.tput: '# CALCUL MENTAL : DIVISIONS';
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
                $t.tprint: "1. 360 ÷ 12 = ";
                $answer = get;
                result(30, $answer);
            } until ($answer eq '30');
            repeat {
                $t.tprint: "2. 90 ÷ 6 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                $t.tprint: "3. 210 ÷ 7 = ";
                $answer = get;
                result(30, $answer);
            } until ($answer eq '30');
            repeat {
                $t.tprint: "4. 180 ÷ 12 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                $t.tprint: "5. 500 ÷ 25 = ";
                $answer = get;
                result(20, $answer);
            } until ($answer eq '20');
            repeat {
                $t.tprint: "6. 1800 ÷ 24 = ";
                $answer = get;
                result(75, $answer);
            } until ($answer eq '75');
            repeat {
                $t.tprint: "7. 270 ÷ 18 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                $t.tprint: "8. 900 ÷ 60 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                $t.tprint: "9. 4800 ÷ 120 = ";
                $answer = get;
                result(40, $answer);
            } until ($answer eq '40');
            repeat {
                $t.tprint: "10. 350 ÷ 7 = ";
                $answer = get;
                result(50, $answer);
            } until ($answer eq '50');
            repeat {
                $t.tprint: "11. 900 ÷ 18 = ";
                $answer = get;
                result(50, $answer);
            } until ($answer eq '50');
            repeat {
                $t.tprint: "12. 48 ÷ 12 = ";
                $answer = get;
                result(4, $answer);
            } until ($answer eq '4');
            $t.tput: "Fin du niveau 1.";
        }
        when '2' {
            repeat {
                $t.tprint: "1. 870 ÷ 5 = ";
                $answer = get;
                result(174, $answer);
            } until ($answer eq '174');
            repeat {
                $t.tprint: "2. 2500 ÷ 50 = ";
                $answer = get;
                result(50, $answer);
            } until ($answer eq '50');
            repeat {
                $t.tprint: "3. 575 ÷ 5 = ";
                $answer = get;
                result(115, $answer);
            } until ($answer eq '115');
            repeat {
                $t.tprint: "4. 70 ÷ 5 = ";
                $answer = get;
                result(14, $answer);
            } until ($answer eq '14');
            repeat {
                $t.tprint: "5. 800 ÷ 20 = ";
                $answer = get;
                result(40, $answer);
            } until ($answer eq '40');
            repeat {
                $t.tprint: "6. 2700 ÷ 6 = ";
                $answer = get;
                result(450, $answer);
            } until ($answer eq '450');
            repeat {
                $t.tprint: "7. 90 ÷ 18 = ";
                $answer = get;
                result(5, $answer);
            } until ($answer eq '5');
            repeat {
                $t.tprint: "8. 600 ÷ 12 = ";
                $answer = get;
                result(50, $answer);
            } until ($answer eq '50');
            repeat {
                $t.tprint: "9. 81 ÷ 27 = ";
                $answer = get;
                result(3, $answer);
            } until ($answer eq '3');
            repeat {
                $t.tprint: "10. 8100 ÷ 27 = ";
                $answer = get;
                result(300, $answer);
            } until ($answer eq '300');
            repeat {
                $t.tprint: "11. 400 ÷ 16 = ";
                $answer = get;
                result(25, $answer);
            } until ($answer eq '25');
            repeat {
                $t.tprint: "12. 1000 ÷ 25 = ";
                $answer = get;
                result(40, $answer);
            } until ($answer eq '40');
            $t.tput: "Fin du niveau 2.";
        }
        when '3' {
            repeat {
                $t.tprint: "1. 9000 ÷ 60 = ";
                $answer = get;
                result(150, $answer);
            } until ($answer eq '150');
            repeat {
                $t.tprint: "2. 75 ÷ 5 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                $t.tprint: "3. 1800 ÷ 150 = ";
                $answer = get;
                result(12, $answer);
            } until ($answer eq '12');
            repeat {
                $t.tprint: "4. 450 ÷ 90 = ";
                $answer = get;
                result(5, $answer);
            } until ($answer eq '5');
            repeat {
                $t.tprint: "5. 1500 ÷ 12 = ";
                $answer = get;
                result(125, $answer);
            } until ($answer eq '125');
            repeat {
                $t.tprint: "6. 540 ÷ 18 = ";
                $answer = get;
                result(30, $answer);
            } until ($answer eq '30');
            repeat {
                $t.tprint: "7. 900 ÷ 36 = ";
                $answer = get;
                result(25, $answer);
            } until ($answer eq '25');
            repeat {
                $t.tprint: "8. 450 ÷ 150 = ";
                $answer = get;
                result(3, $answer);
            } until ($answer eq '3');
            repeat {
                $t.tprint: "9. 540 ÷ 27 = ";
                $answer = get;
                result(20, $answer);
            } until ($answer == '20');
            repeat {
                $t.tprint: "10. 9000 ÷ 600 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                $t.tprint: "11. 180 ÷ 36 = ";
                $answer = get;
                result(5, $answer);
            } until ($answer eq '5');
            repeat {
                $t.tprint: "12. 2700 ÷ 18 = ";
                $answer = get;
                result(150, $answer);
            } until ($answer eq '150');
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
                            $t.tprint: "1. 360 ÷ 12 = ";
                            $answer = get;
                            result(30, $answer);
                        } until ($answer eq '30');
                    }
                    when 2 {
                        repeat {
                            $t.tprint: "2. 90 ÷ 6 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 3 {
                        repeat {
                            $t.tprint: "3. 210 ÷ 7 = ";
                            $answer = get;
                            result(30, $answer);
                        } until ($answer eq '30');
                    }
                    when 4 {
                        repeat {
                            $t.tprint: "4. 180 ÷ 12 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 5 {
                        repeat {
                            $t.tprint: "5. 500 ÷ 25 = ";
                            $answer = get;
                            result(20, $answer);
                        } until ($answer eq '20');
                    }
                    when 6 {
                        repeat {
                            $t.tprint: "6. 1800 ÷ 24 = ";
                            $answer = get;
                            result(75, $answer);
                        } until ($answer eq '75');
                    }
                    when 5 {
                        repeat {
                            $t.tprint: "7. 270 ÷ 18 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 8 {
                        repeat {
                            $t.tprint: "8. 900 ÷ 60 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 9 {
                        repeat {
                            $t.tprint: "9. 4800 ÷ 120 = ";
                            $answer = get;
                            result(40, $answer);
                        } until ($answer eq '40');
                    }
                    when 10 {
                        repeat {
                            $t.tprint: "10. 350 ÷ 7 = ";
                            $answer = get;
                            result(50, $answer);
                        } until ($answer eq '50');
                    }
                    when 11 {
                        repeat {
                            $t.tprint: "11. 900 ÷ 18 = ";
                            $answer = get;
                            result(50, $answer);
                        } until ($answer eq '50');
                    }
                    when 12 {
                        repeat {
                            $t.tprint: "12. 48 ÷ 12 = ";
                            $answer = get;
                            result(4, $answer);
                        } until ($answer eq '4');
                    }
                    when 13 {
                        repeat {
                            $t.tprint: "13. 870 ÷ 5 = ";
                            $answer = get;
                            result(174, $answer);
                        } until ($answer eq '174');
                    }
                    when 14 {
                        repeat {
                            $t.tprint: "14. 2500 ÷ 50 = ";
                            $answer = get;
                            result(50, $answer);
                        } until ($answer eq '50');
                    }
                    when 15 {
                        repeat {
                            $t.tprint: "15. 575 ÷ 5 = ";
                            $answer = get;
                            result(115, $answer);
                        } until ($answer eq '115');
                    }
                    when 16 {
                        repeat {
                            $t.tprint: "16. 70 ÷ 5 = ";
                            $answer = get;
                            result(14, $answer);
                        } until ($answer eq '14');
                    }
                    when 17 {
                        repeat {
                            $t.tprint: "17. 800 ÷ 20 = ";
                            $answer = get;
                            result(40, $answer);
                        } until ($answer eq '40');
                    }
                    when 18 {
                        repeat {
                            $t.tprint: "18. 2700 ÷ 6 = ";
                            $answer = get;
                            result(450, $answer);
                        } until ($answer eq '450');
                    }
                    when 19 {
                        repeat {
                            $t.tprint: "19. 90 ÷ 18 = ";
                            $answer = get;
                            result(5, $answer);
                        } until ($answer eq '5');
                    }
                    when 20 {
                        repeat {
                            $t.tprint: "20. 600 ÷ 12 = ";
                            $answer = get;
                            result(50, $answer);
                        } until ($answer eq '50');
                    }
                    when 21 {
                        repeat {
                            $t.tprint: "21. 81 ÷ 27 = ";
                            $answer = get;
                            result(3, $answer);
                        } until ($answer eq '3');
                    }
                    when 22 {
                        repeat {
                            $t.tprint: "22. 8100 ÷ 27 = ";
                            $answer = get;
                            result(300, $answer);
                        } until ($answer eq '300');
                    }
                    when 23 {
                        repeat {
                            $t.tprint: "23. 400 ÷ 16 = ";
                            $answer = get;
                            result(25, $answer);
                        } until ($answer eq '25');
                    }
                    when 24 {
                        repeat {
                            $t.tprint: "24. 1000 ÷ 25 = ";
                            $answer = get;
                            result(40, $answer);
                        } until ($answer eq '40');
                    }
                    when 25 {
                        repeat {
                            $t.tprint: "25. 9000 ÷ 60 = ";
                            $answer = get;
                            result(150, $answer);
                        } until ($answer eq '150');
                    }
                    when 26 {
                        repeat {
                            $t.tprint: "26. 75 ÷ 5 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 27 {
                        repeat {
                            $t.tprint: "27. 1800 ÷ 150 = ";
                            $answer = get;
                            result(12, $answer);
                        } until ($answer eq '12');
                    }
                    when 28 {
                        repeat {
                            $t.tprint: "28. 450 ÷ 90 = ";
                            $answer = get;
                            result(5, $answer);
                        } until ($answer eq '5');
                    }
                    when 29 {
                        repeat {
                            $t.tprint: "29. 1500 ÷ 12 = ";
                            $answer = get;
                            result(125, $answer);
                        } until ($answer eq '125');
                    }
                    when 30 {
                        repeat {
                            $t.tprint: "30. 540 ÷ 18 = ";
                            $answer = get;
                            result(30, $answer);
                        } until ($answer eq '30');
                    }
                    when 31 {
                        repeat {
                            $t.tprint: "31. 900 ÷ 36 = ";
                            $answer = get;
                            result(25, $answer);
                        } until ($answer eq '25');
                    }
                    when 32 {
                        repeat {
                            $t.tprint: "32. 450 ÷ 150 = ";
                            $answer = get;
                            result(3, $answer);
                        } until ($answer eq '3');
                    }
                    when 33 {
                        repeat {
                            $t.tprint: "33. 540 ÷ 27 = ";
                            $answer = get;
                            result(20, $answer);
                        } until ($answer == '20');
                    }
                    when 34 {
                        repeat {
                            $t.tprint: "34. 9000 ÷ 600 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 35 {
                        repeat {
                            $t.tprint: "35. 180 ÷ 36 = ";
                            $answer = get;
                            result(5, $answer);
                        } until ($answer eq '5');
                    }
                    when 36 {
                        repeat {
                            $t.tprint: "36. 2700 ÷ 18 = ";
                            $answer = get;
                            result(150, $answer);
                        } until ($answer eq '150');
                    }
                }
            }
        }
    }
}
