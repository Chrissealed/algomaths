unit module Method04;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
###################################################################################
# Méthode 2. Comment diviser rapidement ?
###################################################################################
# ▲ A. Principe: En partant du deuxième.
# Plutôt que de calculer a ÷ b en partant de a, on part de b pour rejoindre a en
# essayant de trouver par combien il faut multiplier.
# ▲ Exemple : Calculer 72 ÷ 8.
# On sait que 8 × 9 = 72. Ainsi 72 ÷ 8 = 9.
# ▲ Exemple : Calculer 720 ÷ 120.
# On a 120 × 6 = 720 d'ou : 720 ÷ 120 = 6.
# ---------------------------------------------------------------------------------
# ▲ B. Principe: En décomposant par plusieurs petites divisions.
# Pour diviser par 6, on divise successivement par 2 puis par 3 (c'est ce que l'on
# fait concrètement lorsqu'on coupe un gâteau d'anniversaire en 6 parts : on le
# coupe d'abord en 2 puis chacune des deux moitiés en 3).
# De même pour diviser par 15, on divise successivement par 3 puis par 5, etc.
# ▲ Exemple : Calculer 162 ÷ 18.
# On a 162 ÷ 18 = (162 ÷ 2) ÷ 9 = 81 ÷ 9 = 9.
# ---------------------------------------------------------------------------------
# ▲ C. Principe: En utilisant la multiplication.
# Plutôt que de diviser par 5, on multiplie par 2 puis on divise par 10. S'il s'agit
# de diviser par 25, on multiplie par 4 puis on divise par 100, etc.
# ▲ Exemple : Calculer 7500 ÷ 5.
# On a : 7500 ÷ 5 = (7500 × 2) ÷ 10 = 15000 ÷ 10 = 1500.
# ▲ Exemple : Calculer 1500 ÷ 25.
# On a : 1500 ÷ 25 = (1500 × 4) ÷ 100 = 6000 ÷ 100 = 60.
###################################################################################

EOM
}

sub result(Int:D $int1, Str:D $int2) {
    my Str $next = "o";
    try {
        if $int1 == Int($int2) {
            say "Vrai";
        } else {
            say "Faux. Recommencez.";
            return 0;
        }
    }
    if $! {
        exit if $int2 eq "q" || "Q";
        say "Donnée incorrecte ! Recommencez.";
        return 0;
    }
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 2 :';
    say '# -----------';
    say '# CALCUL MENTAL : DIVISIONS';
    say '';
    my Str $level = '0';
    my Int $randomlevel = 0;
    my Int $lastrandomlevel = 0;
    my Str $answer = '0';

    loop {
        $level = prompt "Choisissez un niveau : 1, 2 ou 3, ou 0 pour un choix aléatoire (tapez 'q' à n'importe quel moment pour quitter) : ";
        given $level {
            when '1' { say "Niveau 1"; }
            when '2' { say "Niveau 2"; }
            when '3' { say "Niveau 3"; }
            when '0' { say "Choix aléatoire"; }
            default {
                say "Donnée incorrecte !";
            }
        }
        last if $level ~~ / <[0123]> /;
    }

    given $level {
        when '1' {
            repeat {
                print "1. 360 ÷ 12 = ";
                $answer = get;
                result(30, $answer);
            } until ($answer eq '30');
            repeat {
                print "2. 90 ÷ 6 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                print "3. 210 ÷ 7 = ";
                $answer = get;
                result(30, $answer);
            } until ($answer eq '30');
            repeat {
                print "4. 180 ÷ 12 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                print "5. 500 ÷ 25 = ";
                $answer = get;
                result(20, $answer);
            } until ($answer eq '20');
            repeat {
                print "6. 1800 ÷ 24 = ";
                $answer = get;
                result(75, $answer);
            } until ($answer eq '75');
            repeat {
                print "7. 270 ÷ 18 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                print "8. 900 ÷ 60 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                print "9. 4800 ÷ 120 = ";
                $answer = get;
                result(40, $answer);
            } until ($answer eq '40');
            repeat {
                print "10. 350 ÷ 7 = ";
                $answer = get;
                result(50, $answer);
            } until ($answer eq '50');
            repeat {
                print "11. 900 ÷ 18 = ";
                $answer = get;
                result(50, $answer);
            } until ($answer eq '50');
            repeat {
                print "12. 48 ÷ 12 = ";
                $answer = get;
                result(4, $answer);
            } until ($answer eq '4');
            say "Fin du niveau 1.";
        }
        when '2' {
            repeat {
                print "1. 870 ÷ 5 = ";
                $answer = get;
                result(174, $answer);
            } until ($answer eq '174');
            repeat {
                print "2. 2500 ÷ 50 = ";
                $answer = get;
                result(50, $answer);
            } until ($answer eq '50');
            repeat {
                print "3. 575 ÷ 5 = ";
                $answer = get;
                result(115, $answer);
            } until ($answer eq '115');
            repeat {
                print "4. 70 ÷ 5 = ";
                $answer = get;
                result(14, $answer);
            } until ($answer eq '14');
            repeat {
                print "5. 800 ÷ 20 = ";
                $answer = get;
                result(40, $answer);
            } until ($answer eq '40');
            repeat {
                print "6. 2700 ÷ 6 = ";
                $answer = get;
                result(450, $answer);
            } until ($answer eq '450');
            repeat {
                print "7. 90 ÷ 18 = ";
                $answer = get;
                result(5, $answer);
            } until ($answer eq '5');
            repeat {
                print "8. 600 ÷ 12 = ";
                $answer = get;
                result(50, $answer);
            } until ($answer eq '50');
            repeat {
                print "9. 81 ÷ 27 = ";
                $answer = get;
                result(3, $answer);
            } until ($answer eq '3');
            repeat {
                print "10. 8100 ÷ 27 = ";
                $answer = get;
                result(300, $answer);
            } until ($answer eq '300');
            repeat {
                print "11. 400 ÷ 16 = ";
                $answer = get;
                result(25, $answer);
            } until ($answer eq '25');
            repeat {
                print "12. 1000 ÷ 25 = ";
                $answer = get;
                result(40, $answer);
            } until ($answer eq '40');
            say "Fin du niveau 2.";
        }
        when '3' {
            repeat {
                print "1. 9000 ÷ 60 = ";
                $answer = get;
                result(150, $answer);
            } until ($answer eq '150');
            repeat {
                print "2. 75 ÷ 5 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                print "3. 1800 ÷ 150 = ";
                $answer = get;
                result(12, $answer);
            } until ($answer eq '12');
            repeat {
                print "4. 450 ÷ 90 = ";
                $answer = get;
                result(5, $answer);
            } until ($answer eq '5');
            repeat {
                print "5. 1500 ÷ 12 = ";
                $answer = get;
                result(125, $answer);
            } until ($answer eq '125');
            repeat {
                print "6. 540 ÷ 18 = ";
                $answer = get;
                result(30, $answer);
            } until ($answer eq '30');
            repeat {
                print "7. 900 ÷ 36 = ";
                $answer = get;
                result(25, $answer);
            } until ($answer eq '25');
            repeat {
                print "8. 450 ÷ 150 = ";
                $answer = get;
                result(3, $answer);
            } until ($answer eq '3');
            repeat {
                print "9. 540 ÷ 27 = ";
                $answer = get;
                result(20, $answer);
            } until ($answer == '20');
            repeat {
                print "10. 9000 ÷ 600 = ";
                $answer = get;
                result(15, $answer);
            } until ($answer eq '15');
            repeat {
                print "11. 180 ÷ 36 = ";
                $answer = get;
                result(5, $answer);
            } until ($answer eq '5');
            repeat {
                print "12. 2700 ÷ 18 = ";
                $answer = get;
                result(150, $answer);
            } until ($answer eq '150');
            say "Fin du niveau 3.";
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
                            print "1. 360 ÷ 12 = ";
                            $answer = get;
                            result(30, $answer);
                        } until ($answer eq '30');
                    }
                    when 2 {
                        repeat {
                            print "2. 90 ÷ 6 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 3 {
                        repeat {
                            print "3. 210 ÷ 7 = ";
                            $answer = get;
                            result(30, $answer);
                        } until ($answer eq '30');
                    }
                    when 4 {
                        repeat {
                            print "4. 180 ÷ 12 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 5 {
                        repeat {
                            print "5. 500 ÷ 25 = ";
                            $answer = get;
                            result(20, $answer);
                        } until ($answer eq '20');
                    }
                    when 6 {
                        repeat {
                            print "6. 1800 ÷ 24 = ";
                            $answer = get;
                            result(75, $answer);
                        } until ($answer eq '75');
                    }
                    when 5 {
                        repeat {
                            print "7. 270 ÷ 18 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 8 {
                        repeat {
                            print "8. 900 ÷ 60 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 9 {
                        repeat {
                            print "9. 4800 ÷ 120 = ";
                            $answer = get;
                            result(40, $answer);
                        } until ($answer eq '40');
                    }
                    when 10 {
                        repeat {
                            print "10. 350 ÷ 7 = ";
                            $answer = get;
                            result(50, $answer);
                        } until ($answer eq '50');
                    }
                    when 11 {
                        repeat {
                            print "11. 900 ÷ 18 = ";
                            $answer = get;
                            result(50, $answer);
                        } until ($answer eq '50');
                    }
                    when 12 {
                        repeat {
                            print "12. 48 ÷ 12 = ";
                            $answer = get;
                            result(4, $answer);
                        } until ($answer eq '4');
                    }
                    when 13 {
                        repeat {
                            print "13. 870 ÷ 5 = ";
                            $answer = get;
                            result(174, $answer);
                        } until ($answer eq '174');
                    }
                    when 14 {
                        repeat {
                            print "14. 2500 ÷ 50 = ";
                            $answer = get;
                            result(50, $answer);
                        } until ($answer eq '50');
                    }
                    when 15 {
                        repeat {
                            print "15. 575 ÷ 5 = ";
                            $answer = get;
                            result(115, $answer);
                        } until ($answer eq '115');
                    }
                    when 16 {
                        repeat {
                            print "16. 70 ÷ 5 = ";
                            $answer = get;
                            result(14, $answer);
                        } until ($answer eq '14');
                    }
                    when 17 {
                        repeat {
                            print "17. 800 ÷ 20 = ";
                            $answer = get;
                            result(40, $answer);
                        } until ($answer eq '40');
                    }
                    when 18 {
                        repeat {
                            print "18. 2700 ÷ 6 = ";
                            $answer = get;
                            result(450, $answer);
                        } until ($answer eq '450');
                    }
                    when 19 {
                        repeat {
                            print "19. 90 ÷ 18 = ";
                            $answer = get;
                            result(5, $answer);
                        } until ($answer eq '5');
                    }
                    when 20 {
                        repeat {
                            print "20. 600 ÷ 12 = ";
                            $answer = get;
                            result(50, $answer);
                        } until ($answer eq '50');
                    }
                    when 21 {
                        repeat {
                            print "21. 81 ÷ 27 = ";
                            $answer = get;
                            result(3, $answer);
                        } until ($answer eq '3');
                    }
                    when 22 {
                        repeat {
                            print "22. 8100 ÷ 27 = ";
                            $answer = get;
                            result(300, $answer);
                        } until ($answer eq '300');
                    }
                    when 23 {
                        repeat {
                            print "23. 400 ÷ 16 = ";
                            $answer = get;
                            result(25, $answer);
                        } until ($answer eq '25');
                    }
                    when 24 {
                        repeat {
                            print "24. 1000 ÷ 25 = ";
                            $answer = get;
                            result(40, $answer);
                        } until ($answer eq '40');
                    }
                    when 25 {
                        repeat {
                            print "25. 9000 ÷ 60 = ";
                            $answer = get;
                            result(150, $answer);
                        } until ($answer eq '150');
                    }
                    when 26 {
                        repeat {
                            print "26. 75 ÷ 5 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 27 {
                        repeat {
                            print "27. 1800 ÷ 150 = ";
                            $answer = get;
                            result(12, $answer);
                        } until ($answer eq '12');
                    }
                    when 28 {
                        repeat {
                            print "28. 450 ÷ 90 = ";
                            $answer = get;
                            result(5, $answer);
                        } until ($answer eq '5');
                    }
                    when 29 {
                        repeat {
                            print "29. 1500 ÷ 12 = ";
                            $answer = get;
                            result(125, $answer);
                        } until ($answer eq '125');
                    }
                    when 30 {
                        repeat {
                            print "30. 540 ÷ 18 = ";
                            $answer = get;
                            result(30, $answer);
                        } until ($answer eq '30');
                    }
                    when 31 {
                        repeat {
                            print "31. 900 ÷ 36 = ";
                            $answer = get;
                            result(25, $answer);
                        } until ($answer eq '25');
                    }
                    when 32 {
                        repeat {
                            print "32. 450 ÷ 150 = ";
                            $answer = get;
                            result(3, $answer);
                        } until ($answer eq '3');
                    }
                    when 33 {
                        repeat {
                            print "33. 540 ÷ 27 = ";
                            $answer = get;
                            result(20, $answer);
                        } until ($answer == '20');
                    }
                    when 34 {
                        repeat {
                            print "34. 9000 ÷ 600 = ";
                            $answer = get;
                            result(15, $answer);
                        } until ($answer eq '15');
                    }
                    when 35 {
                        repeat {
                            print "35. 180 ÷ 36 = ";
                            $answer = get;
                            result(5, $answer);
                        } until ($answer eq '5');
                    }
                    when 36 {
                        repeat {
                            print "36. 2700 ÷ 18 = ";
                            $answer = get;
                            result(150, $answer);
                        } until ($answer eq '150');
                    }
                }
            }
        }
    }
}
