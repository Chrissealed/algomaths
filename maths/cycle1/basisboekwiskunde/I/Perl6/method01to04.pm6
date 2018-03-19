unit module Method01to04;

use corrective;

sub put-up-method1 {
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

sub put-up-method2 {
    say qq:to/EOM/;
###################################################################################
# Méthode 2. Comment soustraire rapidement ?
###################################################################################
# ▲ Principe:
# L'idée est la suivante : plutôt que de calculer a – b en partant de a (ce qui
# n'est pas ce qu'il y a de plus facile), on part de b pour rejoindre a en
# essayant de trouver ce qui manque.
# ▲ Exemple : Calculer 67 – 39.
# On part de 39 pour rejoindre 67. De 39 à 40, il faut 1. De 40 à 67, il faut 27
# d'ou 67 – 39 = 1 + 27 = 28.
# L'idée étant toujours de se ramener à des dizaines proches (comme 10, 20, 30, etc.)
# ou à des centaines (100, 200, etc.) très facilement maniables.
# ▲ Exemple : Calculer 452 – 267.
# De 267 à 270, il faut 3. De 270 à 300, il faut 30. De 300 à 452, il faut 152
# d'ou 452 – 267 = 3 + 30 + 152 = 33 + 152 = 185.
# ▲ Exemple : Calculer 45014 – 41965.
# De 41965 à 42000, il faut 35. De 42000 à 45000, il faut 3000. De 45000 à 45014,
# il faut 14. D'ou 45014 – 41965 = 35 + 3000 + 14 = 3049.
# ▲ Exemple : Calculer 70250 – 67587.
# De 67587 à 67600, il faut 13. De 67600 à 68000, il faut 400. De 68000 à 70000,
# il faut 2000. De 70000 à 70250, il faut 250.
# D'ou : 70250 – 67587 = 13 + 400 + 2000 + 250 = 2413 + 250 = 2663.
###################################################################################

EOM
}

sub put-up-method3 {
    say qq:to/EOM/;
###################################################################################
# Méthode 3. Comment multiplier rapidement ?
###################################################################################
# ▲ A. Principe: En connaissant parfaitement ses tables.
# Apprenez-les par cœur. Sur la diagonale, on repère la suite des carrés :
# 1² = 1, 2² = 4, 3² = 9, 4² = 16, 5² = 25, 6² = 36, 7² = 49, 8² = 64, 9² = 81, 10² = 100.
# ---------------------------------------------------------------------------------
# ▲ B. Principe: En décomposant par addition.
# On utilise la propriété (a + b) × c = a × c + b × c.
# ▲ Exemple : Calculer 17 × 3.
# On a : 17 × 3 = (10 + 7) × 3 = 10 × 3 + 7 × 3 = 30 + 21 = 51.
# Ramenez vous toujours à des nombres faciles com 10, 100, 1000... les dizaines sont
# simples et très maniables.
# ▲ Exemple : Calculer 27 × 16.
# On a : 27 × 16 = (20 + 7) × 16 = 20 × 16 + 7 × 16 = 320 + 7 × (10 + 6)
# = 320 + 7 × 10 + 7 × 6 = 320 + 70 + 42 = 390 + 42 = 432.
# ---------------------------------------------------------------------------------
# ▲ C. Principe: En décomposant par soustraction.
# On utilise la propriété (a – b) × c = a × c – b × c.
# ▲ Exemple : Calculer 19 × 7.
# On a 19 × 7 = (20 – 1) × 17 = 20 × 17 – 1 × 17 = 340 – 17 = 323.
# ---------------------------------------------------------------------------------
# ▲ D. Principe: En décomposant par plusieurs petites multiplications.
# Pour multiplier par 6, on multiplie par 2 puis par 3.
# Pour multiplier par 15, on multiplie par 3 puis par 5, etc.
# ▲ Exemple: Calculer 153 × 6.
# On a : 153 × 6 = 153 × 2 × 3 = 306 × 3 = 918
#(car 306 × 3 = (300 + 6) × 3 = 300 × 3 + 6 × 3 = 900 + 18).
# ▲ Exemple: Calculer 38 × 15.
# On a : 38 × 15 = 38 × 3 × 5 = 114 × 5 = 570
# (car 114 × 5 = (100 + 14) × 5 = 100 × 5 + 14 × 5 = 500 + 70 = 570).
# ---------------------------------------------------------------------------------
# ▲ E. Principe: En utilisant la division.
# Pour multiplier par 50 (par exemple), on multiplie par 100 puis on divise par 2
# (car 50 = 100 ÷ 2). S'il s'agit de multiplier par 25, on multiplie par 100 puis
# on divise par 4 (car 25 = 100 ÷ 4), etc.
# ▲ Exemple: Calculer 12 × 25.
# On a 12 × 25 = 12 × 100 ÷ 4 = 1200 ÷ 4 = 300 (sinon on pouvait utiliser la méthode 3
# et obtenir 12 × 25 = (10 + 2) × 25 = 10 × 25 + 2 × 25 = 250 + 50 = 300).
###################################################################################

EOM
}

sub put-up-method4 {
    say qq:to/EOM/;
###################################################################################
# Méthode 4 : Comment diviser rapidement ?
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

sub put-up-method1to5 {
    say qq:to/EOM/;
################################################################################### 
# 1. Comment additionner rapidement ?
# Décomposer en cherchant les dizaines, centaines, milliers... les plus proches.
# ---------------------------------------------------------------------------------
# 2. Comment soustraire rapidement ?
# Soit mentalement. Soit en partant du deuxième.
# ---------------------------------------------------------------------------------
# 3. Comment multiplier rapidement ?
# a. En utilisant les tables.
# b. En décomposant par addition, soustraction, multiplication ou division.
# ---------------------------------------------------------------------------------
# 4. Comment diviser rapidement ?
# a. Soit mentalement.
# b. Soit en partant du deuxième.
# c. Soit en décomposant par division.
# d. Soit en utilisant la multiplication.
# ---------------------------------------------------------------------------------
# 5. Comment simplifier une ligne de calculs ?
# a. Les calculs entre parenthèses en premier.
# b. Les multiplications et les divisions en deuxième.
# c. Les additions et les soustractions en troisième.
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

sub exercise_01to04 is export(:exe01to04) {
    say '# Exercices :';
    say '# ---------';
    say '# CALCUL MENTAL : OPERATIONS';
    say '';
    my Str $op = '0';
    my Int $randomop = 0;
    my Int $lastrandomop = 0;
    my Str $answer = '0';
    my Bool $boolean = True;

    loop {
        say "Choisissez une opération : 1|a|A = addition, 2|s|S = soustraction, 3|m|M = multiplication, 4|d|D = division";
        $op = prompt "ou 0 pour un choix aléatoire (tapez 'q' à n'importe quel moment pour quitter) : ";
       
        given $op {
            when $_ ~~ / <[1aA]> / {
                say "ADDITIONS";
                $boolean = do-put-up-method;
                if $boolean { put-up-method1; }
            }
            when $_ ~~ / <[2sS]> / {
                say "SOUSTRACTIONS";
                $boolean = do-put-up-method;
                if $boolean { put-up-method2; }
            }
            when $_ ~~ / <[3mM]> / {
                say "MULTIPLICATIONS";
                $boolean = do-put-up-method;
                if $boolean { put-up-method3; }
            }
            when $_ ~~ / <[4dD]> / {
                say "DIVISIONS";
                say "Donnez le quotient et le reste concaténés (c-à-d. sans espace entre eux).";
                $boolean = do-put-up-method;
                if $boolean { put-up-method4; }
            }
            when '0' {
                say "Choix aléatoire";
                $boolean = do-put-up-method;
                if $boolean { put-up-method1to5; }
            }
            default {
                say "Donnée incorrecte !";
            }
        }
        last if $op ~~ / <[01234asmdASMD]> /;
    }

    given $op {
        when $_ ~~ / <[1aA]> / {
            repeat {
                say "a.";
                say "   873";
                say "   112";
                say "  1718";
                say "   157";
                say "+ 3461";
                say "  ----";
                print "  ... = ";
                $answer = get;
                result(6321, $answer);
            } until ($answer eq '6321');
            repeat {
                say "b.";
                say "  1578";
                say "  9553";
                say "  7218";
                say "   212";
                say "+ 4139";
                say "  ----";
                print "  ... = ";
                $answer = get;
                result(22700, $answer);
            } until ($answer eq '22700');
            say "Fin des opérations avec les additions.";
        }
        when $_ ~~ / <[2sS]> / {
            repeat {
                say "a.";
                say "  9134";
                say "– 4319";
                say "  ----";
                print "  ... = ";
                $answer = get;
                result(4815, $answer);
            } until ($answer eq '4815');
            repeat {
                say "b.";
                say "  4585";
                say "– 3287";
                say "  ----";
                print "  ... = ";
                $answer = get;
                result(1298, $answer);
            } until ($answer eq '1298');
            repeat {
                say "c.";
                say "  7033";
                say "– 1398";
                say "  ----";
                print "  ... = ";
                $answer = get;
                result(5635, $answer);
            } until ($answer eq '5635');
            say "Fin des opérations avec les soustractions.";
        }
        when $_ ~~ / <[3mM]> / {
            repeat {
                print "1. 34 × 89 = ";
                $answer = get;
                result(3026, $answer);
            } until ($answer eq '3026');
            repeat {
                print "2. 67 × 46 = ";
                $answer = get;
                result(3082, $answer);
            } until ($answer eq '3082');
            repeat {
                print "3. 61 × 93 = ";
                $answer = get;
                result(5673, $answer);
            } until ($answer eq '5673');
            repeat {
                print "4. 55 × 11 = ";
                $answer = get;
                result(605, $answer);
            } until ($answer eq '605');
            repeat {
                print "5. 78 × 38 = ";
                $answer = get;
                result(2964, $answer);
            } until ($answer eq '2964');
            repeat {
                print "6. 354 × 83 = ";
                $answer = get;
                result(29382, $answer);
            } until ($answer eq '29382');
            repeat {
                print "7. 67 × 546 = ";
                $answer = get;
                result(36582, $answer);
            } until ($answer eq '36582');
            repeat {
                print "8. 461 × 79 = ";
                $answer = get;
                result(36419, $answer);
            } until ($answer eq '36419');
            repeat {
                print "9. 655 × 102 = ";
                $answer = get;
                result(66810, $answer);
            } until ($answer eq '66810');
            repeat {
                print "10. 178 × 398 = ";
                $answer = get;
                result(70844, $answer);
            } until ($answer eq '70844');
            say "Fin des opérations avec les multiplications.";
        }
        when $_ ~~ / <[4dD]> / {
            repeat {
                print "1. 154 ÷ 13 = ";
                $answer = get;
                result(1111, $answer);
            } until ($answer eq '1111');
            repeat {
                print "2. 435 ÷ 27 = ";
                $answer = get;
                result(163, $answer);
            } until ($answer eq '163');
            repeat {
                print "3. 631 ÷ 23 = ";
                $answer = get;
                result(2710, $answer);
            } until ($answer eq '2710');
            repeat {
                print "4. 467 ÷ 17 = ";
                $answer = get;
                result(278, $answer);
            } until ($answer eq '278');
            repeat {
                print "5. 780 ÷ 37 = ";
                $answer = get;
                result(213, $answer);
            } until ($answer eq '213');
            repeat {
                print "6. 2334 ÷ 53 = ";
                $answer = get;
                result(442, $answer);
            } until ($answer eq '442');
            repeat {
                print "7. 6463 ÷ 101 = ";
                $answer = get;
                result(63100, $answer);
            } until ($answer eq '63100');
            repeat {
                print "8. 7682 ÷ 59 = ";
                $answer = get;
                result(13012, $answer);
            } until ($answer eq '13012');
            repeat {
                print "9. 6178 ÷ 451 = ";
                $answer = get;
                result(13315, $answer);
            } until ($answer eq '13315');
            repeat {
                print "10. 5811 ÷ 67 = ";
                $answer = get;
                result(8649, $answer);
            } until ($answer eq '8649');
            repeat {
                print "11. 15457 ÷ 11 = ";
                $answer = get;
                result(14052, $answer);
            } until ($answer eq '14052');
            repeat {
                print "12. 4534 × 97 = ";
                $answer = get;
                result(4672, $answer);
            } until ($answer eq '4672');
            repeat {
                print "13. 63321 ÷ 23 = ";
                $answer = get;
                result(27532, $answer);
            } until ($answer eq '27532');
            repeat {
                print "14. 56467 ÷ 179 = ";
                $answer = get;
                result(31582, $answer);
            } until ($answer eq '31582');
            repeat {
                print "15. 78620 ÷ 307 = ";
                $answer = get;
                result(25628, $answer);
            } until ($answer eq '25628');
            repeat {
                print "16. 42334 ÷ 41 = ";
                $answer = get;
                result(103222, $answer);
            } until ($answer eq '103222');
            repeat {
                print "17. 13467 ÷ 101 = ";
                $answer = get;
                result(13334, $answer);
            } until ($answer eq '13334');
            repeat {
                print "18. 35641 ÷ 99 = ";
                $answer = get;
                result(3601, $answer);
            } until ($answer eq '3601');
            repeat {
                print "19. 16155 ÷ 215 = ";
                $answer = get;
                result(7530, $answer);
            } until ($answer eq '7530');
            repeat {
                print "20. 92183 × 83 = ";
                $answer = get;
                result(111053, $answer);
            } until ($answer eq '111053');
            say "Fin des opérations avec les divisions.";
        }
        when '0' {
            loop {
                repeat {
                    $randomop = 35.rand.ceiling;
                } until ($randomop != $lastrandomop);
                $lastrandomop = $randomop;
                given $randomop {
                    when 1 {
                        repeat {
                            say "1.";
                            say "   873";
                            say "   112";
                            say "  1718";
                            say "   157";
                            say "+ 3461";
                            say "  ----";
                            print "  ... = ";
                            $answer = get;
                            result(6321, $answer);
                        } until ($answer eq '6321');
                    }
                    when 2 {
                        repeat {
                            say "2.";
                            say "  1578";
                            say "  9553";
                            say "  7218";
                            say "   212";
                            say "+ 4139";
                            say "  ----";
                            print "  ... = ";
                            $answer = get;
                            result(22700, $answer);
                        } until ($answer eq '22700');
                    }
                    when 3 {
                        repeat {
                            say "3.";
                            say "  9134";
                            say "– 4319";
                            say "  ----";
                            print "  ... = ";
                            $answer = get;
                            result(4815, $answer);
                        } until ($answer eq '4815');
                    }
                    when 4 {
                        repeat {
                            say "4.";
                            say "  4585";
                            say "– 3287";
                            say "  ----";
                            print "  ... = ";
                            $answer = get;
                            result(1298, $answer);
                        } until ($answer eq '1298');
                    }
                    when 5 {
                        repeat {
                            say "5.";
                            say "  7033";
                            say "– 1398";
                            say "  ----";
                            print "  ... = ";
                            $answer = get;
                            result(5635, $answer);
                        } until ($answer eq '5635');
                    }
                    when 6 {
                        repeat {
                            print "6. 34 × 89 = ";
                            $answer = get;
                            result(3026, $answer);
                        } until ($answer eq '3026');
                    }
                    when 7 {
                        repeat {
                            print "7. 67 × 46 = ";
                            $answer = get;
                            result(3082, $answer);
                        } until ($answer eq '3082');
                    }
                    when 8 {
                        repeat {
                            print "8. 61 × 93 = ";
                            $answer = get;
                            result(5673, $answer);
                        } until ($answer eq '5673');
                    }
                    when 9 {
                        repeat {
                            print "9. 55 × 11 = ";
                            $answer = get;
                            result(605, $answer);
                        } until ($answer eq '605');
                    }
                    when 10 {
                        repeat {
                            print "10. 78 × 38 = ";
                            $answer = get;
                            result(2964, $answer);
                        } until ($answer eq '2964');
                    }
                    when 11 {
                        repeat {
                            print "11. 354 × 83 = ";
                            $answer = get;
                            result(29382, $answer);
                        } until ($answer eq '29382');
                    }
                    when 12 {
                        repeat {
                            print "12. 67 × 546 = ";
                            $answer = get;
                            result(36582, $answer);
                        } until ($answer eq '36582');
                    }
                    when 13 {
                        repeat {
                            print "13. 461 × 79 = ";
                            $answer = get;
                            result(36419, $answer);
                        } until ($answer eq '36419');
                    }
                    when 14 {
                        repeat {
                            print "14. 655 × 102 = ";
                            $answer = get;
                            result(66810, $answer);
                        } until ($answer eq '66810');
                    }
                    when 15 {
                        repeat {
                            print "15. 178 × 398 = ";
                            $answer = get;
                            result(70844, $answer);
                        } until ($answer eq '70844');
                    }
                    when 16 {
                        repeat {
                            print "16. 154 ÷ 13 = ";
                            $answer = get;
                            result(1111, $answer);
                        } until ($answer eq '1111');
                    }
                    when 17 {
                        repeat {
                            print "17. 435 ÷ 27 = ";
                            $answer = get;
                            result(163, $answer);
                        } until ($answer eq '163');
                    }
                    when 18 {
                        repeat {
                            print "18. 631 ÷ 23 = ";
                            $answer = get;
                            result(2710, $answer);
                        } until ($answer eq '2710');
                    }
                    when 19 {
                        repeat {
                            print "19. 467 ÷ 17 = ";
                            $answer = get;
                            result(278, $answer);
                        } until ($answer eq '278');
                    }
                    when 20 {
                        repeat {
                            print "20. 780 ÷ 37 = ";
                            $answer = get;
                            result(213, $answer);
                        } until ($answer eq '213');
                    }
                    when 21 {
                        repeat {
                            print "21. 2334 ÷ 53 = ";
                            $answer = get;
                            result(442, $answer);
                        } until ($answer eq '442');
                    }
                    when 22 {
                        repeat {
                            print "22. 6463 ÷ 101 = ";
                            $answer = get;
                            result(63100, $answer);
                        } until ($answer eq '63100');
                    }
                    when 23 {
                        repeat {
                            print "23. 7682 ÷ 59 = ";
                            $answer = get;
                            result(13012, $answer);
                        } until ($answer eq '13012');
                    }
                    when 24 {
                        repeat {
                            print "24. 6178 ÷ 451 = ";
                            $answer = get;
                            result(13315, $answer);
                        } until ($answer eq '13315');
                    }
                    when 25 {
                        repeat {
                            print "25. 5811 ÷ 67 = ";
                            $answer = get;
                            result(8649, $answer);
                        } until ($answer eq '8649');
                    }
                    when 26 {
                        repeat {
                            print "26. 15457 ÷ 11 = ";
                            $answer = get;
                            result(14052, $answer);
                        } until ($answer eq '14052');
                    }
                    when 27 {
                        repeat {
                            print "27. 4534 × 97 = ";
                            $answer = get;
                            result(4672, $answer);
                        } until ($answer eq '4672');
                    }
                    when 28 {
                        repeat {
                            print "28. 63321 ÷ 23 = ";
                            $answer = get;
                            result(27532, $answer);
                        } until ($answer eq '27532');
                    }
                    when 29 {
                        repeat {
                            print "29. 56467 ÷ 179 = ";
                            $answer = get;
                            result(31582, $answer);
                        } until ($answer eq '31582');
                    }
                    when 30 {
                        repeat {
                            print "30. 78620 ÷ 307 = ";
                            $answer = get;
                            result(25628, $answer);
                        } until ($answer eq '25628');
                    }
                    when 31 {
                        repeat {
                            print "31. 42334 ÷ 41 = ";
                            $answer = get;
                            result(103222, $answer);
                        } until ($answer eq '103222');
                    }
                    when 32 {
                        repeat {
                            print "32. 13467 ÷ 101 = ";
                            $answer = get;
                            result(13334, $answer);
                        } until ($answer eq '13334');
                    }
                    when 33 {
                        repeat {
                            print "33. 35641 ÷ 99 = ";
                            $answer = get;
                            result(3601, $answer);
                        } until ($answer eq '3601');
                    }
                    when 34 {
                        repeat {
                            print "34. 16155 ÷ 215 = ";
                            $answer = get;
                            result(7530, $answer);
                        } until ($answer eq '7530');
                    }
                    when 35 {
                        repeat {
                            print "35. 92183 × 83 = ";
                            $answer = get;
                            result(111053, $answer);
                        } until ($answer eq '111053');
                    }
                }
            }
        }
    }
}
