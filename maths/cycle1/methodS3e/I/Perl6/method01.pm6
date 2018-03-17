unit module Method01;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
###################################################################################
# Méthode 1. Comment additionner rapidement ?
###################################################################################
# ▲ Chercher la dizaine, la centaine... la plus proche et décomposer.
# ▲ Principe:
# L'idée est de se ramener aux nombres 10, 20, 30... (ou 100, 200, etc.) les plus
# proches en décomposant (par exemple +7 en +3+4).
# On calcule bien plus rapidement ensuite.
# ▲ Exemple : Calculer 17 + 7.
# Voici comment on procède : on peut aller de 17 à 20 (la dizaine suivante la plus
# proche) avec 3, il reste 4. D'ou : 17 + 7 = 17 + 3 + 4 = 24.
# ▲ Exemple : Calculer 86 + 27.
# On peut aller de 86 à 100 avec 14, il reste 13 (car 27 = 14 + 13).
# D'ou : 86 + 27 = 86 + 14 + 13 = 100 + 13 = 113.
# ▲ Exemple : Calculer 174 + 257.
# On peut aller de 174 à 200 avec 26, il reste 231 (car 257 = 26 + 231).
# D'ou 174 + 257 = 174 + 26 + 231 = 200 + 231 = 431.
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
        exit if $int2 eq 'q' || 'Q';
        say "Donnée incorrecte ! Recommencez.";
        return 0;
    }
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1 :';
    say '# -----------';
    say '# CALCUL MENTAL : ADDITIONS';
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
                print "1. 17 + 4 = ";
                $answer = get;
                result(21, $answer);
            } until ($answer eq '21');
            repeat {
                print "2. 23 + 16 = ";
                $answer = get;
                result(39, $answer);
            } until ($answer eq '39');
            repeat {
                print "3. 23 + 18 = ";
                $answer = get;
                result(41, $answer);
            } until ($answer eq '41');
            repeat {
                print "4. 63 + 19 = ";
                $answer = get;
                result(82, $answer);
            } until ($answer eq '82');
            repeat {
                print "5. 278 + 31 = ";
                $answer = get;
                result(309, $answer);
            } until ($answer eq '309');
            repeat {
                print "6. 127 + 47 = ";
                $answer = get;
                result(174, $answer);
            } until ($answer eq '174');
            repeat {
                print "7. 253 + 371 = ";
                $answer = get;
                result(624, $answer);
            } until ($answer eq '624');
            repeat {
                print "8. 3478 + 88 = ";
                $answer = get;
                result(3566, $answer);
            } until ($answer eq '3566');
            repeat {
                print "9. 2456 + 653 = ";
                $answer = get;
                result(3109, $answer);
            } until ($answer eq '3109');
            repeat {
                print "10. 1433 + 377 = ";
                $answer = get;
                result(1810, $answer);
            } until ($answer eq '1810');
            repeat {
                print "11. 67 + 144 = ";
                $answer = get;
                result(211, $answer);
            } until ($answer eq '211');
            repeat {
                print "12. 170 + 430 = ";
                $answer = get;
                result(600, $answer);
            } until ($answer eq '600');
            say "Fin du niveau 1.";
        }
        when '2' {
            repeat {
                print "1. 269 + 69 = ";
                $answer = get;
                result(338, $answer);
            } until ($answer eq '338');
            repeat {
                print "2. 1768 +42 = ";
                $answer = get;
                result(1810, $answer);
            } until ($answer eq '1810');
            repeat {
                print "3. 173 + 18 = ";
                $answer = get;
                result(191, $answer);
            } until ($answer eq '191');
            repeat {
                print "4. 1001 + 2999 = ";
                $answer = get;
                result(4000, $answer);
            } until ($answer eq '4000');
            repeat {
                print "5. 999 + 27 = ";
                $answer = get;
                result(1026, $answer);
            } until ($answer eq '1026');
            repeat {
                print "6. 249 + 351 = ";
                $answer = get;
                result(600, $answer);
            } until ($answer eq '600');
            repeat {
                print "7. 63 + 59 = ";
                $answer = get;
                result(122, $answer);
            } until ($answer eq '122');
            repeat {
                print "8. 173 + 78 = ";
                $answer = get;
                result(251, $answer);
            } until ($answer eq '251');
            repeat {
                print "9. 2337 + 244 = ";
                $answer = get;
                result(2581, $answer);
            } until ($answer eq '2581');
            repeat {
                print "10. 388 + 32 = ";
                $answer = get;
                result(420, $answer);
            } until ($answer eq '420');
            repeat {
                print "11. 21 + 16 + 5 = ";
                $answer = get;
                result(42, $answer);
            } until ($answer eq '42');
            repeat {
                print "12. 203 + 189 + 17 = ";
                $answer = get;
                result(409, $answer);
            } until ($answer eq '409');
            say "Fin du niveau 2.";
        }
        when '3' {
            repeat {
                print "1. 314 + 178 + 29 = ";
                $answer = get;
                result(521, $answer);
            } until ($answer eq '521');
            repeat {
                print "2. 34 + 219 + 372 = ";
                $answer = get;
                result(625, $answer);
            } until ($answer eq '625');
            repeat {
                print "3. 56 + 67 + 78 = ";
                $answer = get;
                result(201, $answer);
            } until ($answer eq '201');
            repeat {
                print "4. 12 + 45 + 89 = ";
                $answer = get;
                result(146, $answer);
            } until ($answer eq '146');
            repeat {
                print "5. 139 + 24 + 46 = ";
                $answer = get;
                result(209, $answer);
            } until ($answer eq '209');
            repeat {
                print "6. 235 + 236 + 68 = ";
                $answer = get;
                result(539, $answer);
            } until ($answer eq '539');
            repeat {
                print "7. 120 + 55 + 62 = ";
                $answer = get;
                result(237, $answer);
            } until ($answer eq '237');
            repeat {
                print "8. 173 + 111 + 25 = ";
                $answer = get;
                result(309, $answer);
            } until ($answer eq '309');
            repeat {
                print "9. 293 + 99 + 31 = ";
                $answer = get;
                result(423, $answer);
            } until ($answer == '423');
            repeat {
                print "10. 256 + 35 + 57 = ";
                $answer = get;
                result(348, $answer);
            } until ($answer eq '348');
            repeat {
                print "11. 163 + 264 + 365 = ";
                $answer = get;
                result(792, $answer);
            } until ($answer eq '792');
            repeat {
                print "12. 111 + 99 + 24 = ";
                $answer = get;
                result(234, $answer);
            } until ($answer eq '234');
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
                            print "1. 17 + 4 = ";
                            $answer = get;
                            result(21, $answer);
                        } until ($answer eq '21');
                    }
                    when 2 {
                        repeat {
                            print "2. 23 + 16 = ";
                            $answer = get;
                            result(39, $answer);
                        } until ($answer eq '39');
                    }
                    when 3 {
                        repeat {
                            print "3. 23 + 18 = ";
                            $answer = get;
                            result(41, $answer);
                        } until ($answer eq '41');
                    }
                    when 4 {
                        repeat {
                            print "4. 63 + 19 = ";
                            $answer = get;
                            result(82, $answer);
                        } until ($answer eq '82');
                    }
                    when 5 {
                        repeat {
                            print "5. 278 + 31 = ";
                            $answer = get;
                            result(309, $answer);
                        } until ($answer eq '309');
                    }
                    when 6 {
                        repeat {
                            print "6. 127 + 47 = ";
                            $answer = get;
                            result(174, $answer);
                        } until ($answer eq '174');
                    }
                    when 7 {
                        repeat {
                            print "7. 253 + 371 = ";
                            $answer = get;
                            result(624, $answer);
                        } until ($answer eq '624');
                    }
                    when 8 {
                        repeat {
                            print "8. 3478 + 88 = ";
                            $answer = get;
                            result(3566, $answer);
                        } until ($answer eq '3566');
                    }
                    when 9 {
                        repeat {
                            print "9. 2456 + 653 = ";
                            $answer = get;
                            result(3109, $answer);
                        } until ($answer eq '3109');
                    }
                    when 10 {
                        repeat {
                            print "10. 1433 + 377 = ";
                            $answer = get;
                            result(1810, $answer);
                        } until ($answer eq '1810');
                    }
                    when 11 {
                        repeat {
                            print "11. 67 + 144 = ";
                            $answer = get;
                            result(211, $answer);
                        } until ($answer eq '211');
                    }
                    when 12 {
                        repeat {
                            print "12. 170 + 430 = ";
                            $answer = get;
                            result(600, $answer);
                        } until ($answer eq '600');
                    }
                    when 13 {
                        repeat {
                            print "13. 269 + 69 = ";
                            $answer = get;
                            result(338, $answer);
                        } until ($answer eq '338');
                    }
                    when 14 {
                        repeat {
                            print "14. 1768 +42 = ";
                            $answer = get;
                            result(1810, $answer);
                        } until ($answer eq '1810');
                    }
                    when 15 {
                        repeat {
                            print "15. 173 + 18 = ";
                            $answer = get;
                            result(191, $answer);
                        } until ($answer eq '191');
                    }
                    when 16 {
                        repeat {
                            print "16. 1001 + 2999 = ";
                            $answer = get;
                            result(4000, $answer);
                        } until ($answer eq '4000');
                    }
                    when 17 {
                        repeat {
                            print "17. 999 + 27 = ";
                            $answer = get;
                            result(1026, $answer);
                        } until ($answer eq '1026');
                    }
                    when 18 {
                        repeat {
                            print "18. 249 + 351 = ";
                            $answer = get;
                            result(600, $answer);
                        } until ($answer eq '600');
                    }
                    when 19 {
                        repeat {
                            print "19. 63 + 59 = ";
                            $answer = get;
                            result(122, $answer);
                        } until ($answer eq '122');
                    }
                    when 20 {
                        repeat {
                            print "20. 173 + 78 = ";
                            $answer = get;
                            result(251, $answer);
                        } until ($answer eq '251');
                    }
                    when 21 {
                        repeat {
                            print "21. 2337 + 244 = ";
                            $answer = get;
                            result(2581, $answer);
                        } until ($answer eq '2581');
                    }
                    when 22 {
                        repeat {
                            print "22. 388 + 32 = ";
                            $answer = get;
                            result(420, $answer);
                        } until ($answer eq '420');
                    }
                    when 23 {
                        repeat {
                            print "23. 21 + 16 + 5 = ";
                            $answer = get;
                            result(42, $answer);
                        } until ($answer eq '42');
                    }
                    when 24 {
                        repeat {
                            print "24. 203 + 189 + 17 = ";
                            $answer = get;
                            result(409, $answer);
                        } until ($answer eq '409');
                    }
                    when 25 {
                        repeat {
                            print "25. 314 + 178 + 29 = ";
                            $answer = get;
                            result(521, $answer);
                        } until ($answer eq '521');
                    }
                    when 26 {
                        repeat {
                            print "26. 34 + 219 + 372 = ";
                            $answer = get;
                            result(625, $answer);
                        } until ($answer eq '625');
                    }
                    when 27 {
                        repeat {
                            print "27. 56 + 67 + 78 = ";
                            $answer = get;
                            result(201, $answer);
                        } until ($answer eq '201');
                    }
                    when 28 {
                        repeat {
                            print "28. 12 + 45 + 89 = ";
                            $answer = get;
                            result(146, $answer);
                        } until ($answer eq '146');
                    }
                    when 29 {
                        repeat {
                            print "29. 139 + 24 + 46 = ";
                            $answer = get;
                            result(209, $answer);
                        } until ($answer eq '209');
                    }
                    when 30 {
                        repeat {
                            print "30. 235 + 236 + 68 = ";
                            $answer = get;
                            result(539, $answer);
                        } until ($answer eq '539');
                    }
                    when 31 {
                        repeat {
                            print "31. 120 + 55 + 62 = ";
                            $answer = get;
                            result(237, $answer);
                        } until ($answer eq '237');
                    }
                    when 32 {
                        repeat {
                            print "32. 173 + 111 + 25 = ";
                            $answer = get;
                            result(309, $answer);
                        } until ($answer eq '309');
                    }
                    when 33 {
                        repeat {
                            print "33. 293 + 99 + 31 = ";
                            $answer = get;
                            result(423, $answer);
                        } until ($answer == '423');
                    }
                    when 34 {
                        repeat {
                            print "34. 256 + 35 + 57 = ";
                            $answer = get;
                            result(348, $answer);
                        } until ($answer eq '348');
                    }
                    when 35 {
                        repeat {
                            print "35. 163 + 264 + 365 = ";
                            $answer = get;
                            result(792, $answer);
                        } until ($answer eq '792');
                    }
                    when 36 {
                        repeat {
                            print "36. 111 + 99 + 24 = ";
                            $answer = get;
                            result(234, $answer);
                        } until ($answer eq '234');
                    }
                }
            }
        }
    }
}
