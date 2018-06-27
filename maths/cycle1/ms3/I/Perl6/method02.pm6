unit module Method02;

use v6;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
###################################################################################
# Méthode 2. Comment soustraire rapidement ?
###################################################################################
# ▲ Principe:
# L'idée est la suivante : plutôt que de calculer a – b en partant de a (ce qui
# n'est pas ce qu'il y a de plus facile), on part de b pour rejoindre a en
# essayant de trouver ce qui manque.
# L'idée étant toujours de se ramener à des dizaines proches (comme 10, 20, 30, etc.)
# ou à des centaines (100, 200, etc.) très facilement maniables.
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples02.pdf &';
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
    say '# Exercice 2 :';
    say '# -----------';
    say '# CALCUL MENTAL : SOUSTRACTIONS';
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
                print "1. 21 – 16 = ";
                $answer = get;
                result(5, $answer);
            } until ($answer eq '5');
            repeat {
                print "2. 59 – 37 = ";
                $answer = get;
                result(22, $answer);
            } until ($answer eq '22');
            repeat {
                print "3. 57 – 39 = ";
                $answer = get;
                result(18, $answer);
            } until ($answer eq '18');
            repeat {
                print "4. 119 – 21 = ";
                $answer = get;
                result(98, $answer);
            } until ($answer eq '98');
            repeat {
                print "5. 143 – 50 = ";
                $answer = get;
                result(93, $answer);
            } until ($answer eq '93');
            repeat {
                print "6. 121 – 56 = ";
                $answer = get;
                result(65, $answer);
            } until ($answer eq '65');
            repeat {
                print "7. 247 – 68 = ";
                $answer = get;
                result(179, $answer);
            } until ($answer eq '179');
            repeat {
                print "8. 233 – 134 = ";
                $answer = get;
                result(99, $answer);
            } until ($answer eq '99');
            repeat {
                print "9. 217 – 53 = ";
                $answer = get;
                result(164, $answer);
            } until ($answer eq '164');
            repeat {
                print "10. 110 – 64 = ";
                $answer = get;
                result(46, $answer);
            } until ($answer eq '46');
            repeat {
                print "11. 178 – 49 = ";
                $answer = get;
                result(129, $answer);
            } until ($answer eq '129');
            repeat {
                print "12. 327 – 88 = ";
                $answer = get;
                result(239, $answer);
            } until ($answer eq '239');
            say "Fin du niveau 1.";
        }
        when '2' {
            repeat {
                print "1. 544 – 267 = ";
                $answer = get;
                result(277, $answer);
            } until ($answer eq '277');
            repeat {
                print "2. 217 – 73 = ";
                $answer = get;
                result(144, $answer);
            } until ($answer eq '144');
            repeat {
                print "3. 321 – 39 = ";
                $answer = get;
                result(282, $answer);
            } until ($answer eq '282');
            repeat {
                print "4. 199 – 70 = ";
                $answer = get;
                result(129, $answer);
            } until ($answer eq '129');
            repeat {
                print "5. 233 – 88 = ";
                $answer = get;
                result(145, $answer);
            } until ($answer eq '145');
            repeat {
                print "6. 312 – 179 = ";
                $answer = get;
                result(133, $answer);
            } until ($answer eq '133');
            repeat {
                print "7. 414 – 367 = ";
                $answer = get;
                result(47, $answer);
            } until ($answer eq '47');
            repeat {
                print "8. 664 – 275 = ";
                $answer = get;
                result(389, $answer);
            } until ($answer eq '389');
            repeat {
                print "9. 253 – 59 = ";
                $answer = get;
                result(194, $answer);
            } until ($answer eq '194');
            repeat {
                print "10. 613 – 488 = ";
                $answer = get;
                result(125, $answer);
            } until ($answer eq '125');
            repeat {
                print "11. 222 – 145 – 16 = ";
                $answer = get;
                result(61, $answer);
            } until ($answer eq '61');
            repeat {
                print "12. 435 – 156 – 53 = ";
                $answer = get;
                result(226, $answer);
            } until ($answer eq '226');
            say "Fin du niveau 2.";
        }
        when '3' {
            repeat {
                print "1. 245 – 67 – 87 = ";
                $answer = get;
                result(91, $answer);
            } until ($answer eq '91');
            repeat {
                print "2. 199 – 88 – 13 = ";
                $answer = get;
                result(98, $answer);
            } until ($answer eq '98');
            repeat {
                print "3. 288 – 99 – 15 = ";
                $answer = get;
                result(174, $answer);
            } until ($answer eq '174');
            repeat {
                print "4. 144 – 46 – 47 = ";
                $answer = get;
                result(51, $answer);
            } until ($answer eq '51');
            repeat {
                print "5. 414 – 154 – 63 = ";
                $answer = get;
                result(197, $answer);
            } until ($answer eq '197');
            repeat {
                print "6. 132 – 63 – 15 = ";
                $answer = get;
                result(54, $answer);
            } until ($answer eq '54');
            repeat {
                print "7. 340 – 54 – 143 = ";
                $answer = get;
                result(143, $answer);
            } until ($answer eq '143');
            repeat {
                print "8. 231 – 45 – 103 = ";
                $answer = get;
                result(83, $answer);
            } until ($answer eq '83');
            repeat {
                print "9. 303 – 52 – 103 = ";
                $answer = get;
                result(148, $answer);
            } until ($answer == '148');
            repeat {
                print "10. 148 – 43 – 65 = ";
                $answer = get;
                result(40, $answer);
            } until ($answer eq '40');
            repeat {
                print "11. 502 – 352 – 48 = ";
                $answer = get;
                result(102, $answer);
            } until ($answer eq '102');
            repeat {
                print "12. 214 – 56 – 67 = ";
                $answer = get;
                result(91, $answer);
            } until ($answer eq '91');
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
                            print "1. 21 – 16 = ";
                            $answer = get;
                            result(5, $answer);
                        } until ($answer eq '5');
                    }
                    when 2 {
                        repeat {
                            print "2. 59 – 37 = ";
                            $answer = get;
                            result(22, $answer);
                        } until ($answer eq '22');
                    }
                    when 3 {
                        repeat {
                            print "3. 57 – 39 = ";
                            $answer = get;
                            result(18, $answer);
                        } until ($answer eq '18');
                    }
                    when 4 {
                        repeat {
                            print "4. 119 – 21 = ";
                            $answer = get;
                            result(98, $answer);
                        } until ($answer eq '98');
                    }
                    when 5 {
                        repeat {
                            print "5. 143 – 50 = ";
                            $answer = get;
                            result(93, $answer);
                        } until ($answer eq '93');
                    }
                    when 6 {
                        repeat {
                            print "6. 121 – 56 = ";
                            $answer = get;
                            result(65, $answer);
                        } until ($answer eq '65');
                    }
                    when 7 {
                        repeat {
                            print "7. 247 – 68 = ";
                            $answer = get;
                            result(179, $answer);
                        } until ($answer eq '179');
                    }
                    when 8 {
                        repeat {
                            print "8. 233 – 134 = ";
                            $answer = get;
                            result(99, $answer);
                        } until ($answer eq '99');
                    }
                    when 9 {
                        repeat {
                            print "9. 217 – 53 = ";
                            $answer = get;
                            result(164, $answer);
                        } until ($answer eq '164');
                    }
                    when 10 {
                        repeat {
                            print "10. 110 – 64 = ";
                            $answer = get;
                            result(46, $answer);
                        } until ($answer eq '46');
                    }
                    when 11 {
                        repeat {
                            print "11. 178 – 49 = ";
                            $answer = get;
                            result(129, $answer);
                        } until ($answer eq '129');
                    }
                    when 12 {
                        repeat {
                            print "12. 327 – 88 = ";
                            $answer = get;
                            result(239, $answer);
                        } until ($answer eq '239');
                    }
                    when 13 {
                        repeat {
                            print "13. 544 – 267 = ";
                            $answer = get;
                            result(277, $answer);
                        } until ($answer eq '277');
                    }
                    when 14 {
                        repeat {
                            print "14. 217 – 73 = ";
                            $answer = get;
                            result(144, $answer);
                        } until ($answer eq '144');
                    }
                    when 15 {
                        repeat {
                            print "15. 321 – 39 = ";
                            $answer = get;
                            result(282, $answer);
                        } until ($answer eq '282');
                    }
                    when 16 {
                        repeat {
                            print "16. 199 – 70 = ";
                            $answer = get;
                            result(129, $answer);
                        } until ($answer eq '129');
                    }
                    when 17 {
                        repeat {
                            print "17. 233 – 88 = ";
                            $answer = get;
                            result(145, $answer);
                        } until ($answer eq '145');
                    }
                    when 18 {
                        repeat {
                            print "18. 312 – 179 = ";
                            $answer = get;
                            result(133, $answer);
                        } until ($answer eq '133');
                    }
                    when 19 {
                        repeat {
                            print "19. 414 – 367 = ";
                            $answer = get;
                            result(47, $answer);
                        } until ($answer eq '47');
                    }
                    when 20 {
                        repeat {
                            print "20. 664 – 275 = ";
                            $answer = get;
                            result(389, $answer);
                        } until ($answer eq '389');
                    }
                    when 21 {
                        repeat {
                            print "21. 253 – 59 = ";
                            $answer = get;
                            result(194, $answer);
                        } until ($answer eq '194');
                    }
                    when 22 {
                        repeat {
                            print "22. 613 – 488 = ";
                            $answer = get;
                            result(125, $answer);
                        } until ($answer eq '125');
                    }
                    when 23 {
                        repeat {
                            print "23. 222 – 145 – 16 = ";
                            $answer = get;
                            result(61, $answer);
                        } until ($answer eq '61');
                    }
                    when 24 {
                        repeat {
                            print "24. 435 – 156 – 53 = ";
                            $answer = get;
                            result(226, $answer);
                        } until ($answer eq '226');
                    }
                    when 25 {
                        repeat {
                            print "25. 245 – 67 – 87 = ";
                            $answer = get;
                            result(91, $answer);
                        } until ($answer eq '91');
                    }
                    when 26 {
                        repeat {
                            print "26. 199 – 88 – 13 = ";
                            $answer = get;
                            result(98, $answer);
                        } until ($answer eq '98');
                    }
                    when 27 {
                        repeat {
                            print "27. 288 – 99 – 15 = ";
                            $answer = get;
                            result(174, $answer);
                        } until ($answer eq '174');
                    }
                    when 28 {
                        repeat {
                            print "28. 144 – 46 – 47 = ";
                            $answer = get;
                            result(51, $answer);
                        } until ($answer eq '51');
                    }
                    when 29 {
                        repeat {
                            print "29. 414 – 154 – 63 = ";
                            $answer = get;
                            result(197, $answer);
                        } until ($answer eq '197');
                    }
                    when 30 {
                        repeat {
                            print "30. 132 – 63 – 15 = ";
                            $answer = get;
                            result(54, $answer);
                        } until ($answer eq '54');
                    }
                    when 31 {
                        repeat {
                            print "31. 340 – 54 – 143 = ";
                            $answer = get;
                            result(143, $answer);
                        } until ($answer eq '143');
                    }
                    when 32 {
                        repeat {
                            print "32. 231 – 45 – 103 = ";
                            $answer = get;
                            result(83, $answer);
                        } until ($answer eq '83');
                    }
                    when 33 {
                        repeat {
                            print "33. 303 – 52 – 103 = ";
                            $answer = get;
                            result(148, $answer);
                        } until ($answer == '148');
                    }
                    when 34 {
                        repeat {
                            print "34. 148 – 43 – 65 = ";
                            $answer = get;
                            result(40, $answer);
                        } until ($answer eq '40');
                    }
                    when 35 {
                        repeat {
                            print "35. 502 – 352 – 48 = ";
                            $answer = get;
                            result(102, $answer);
                        } until ($answer eq '102');
                    }
                    when 36 {
                        repeat {
                            print "36. 214 – 56 – 67 = ";
                            $answer = get;
                            result(91, $answer);
                        } until ($answer eq '91');
                    }
                }
            }
        }
    }
}
