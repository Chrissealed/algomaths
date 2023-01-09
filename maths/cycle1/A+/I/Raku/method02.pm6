unit module Method02;

use v6;

=begin pod
=NAME B<Method02> : Perl 6 module in B<algomaths>/maths/cycle1/ms3/I/Perl6/B<method02.pm6>
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
# Méthode 2. Comment soustraire rapidement ?
###################################################################################
# ▲ Principe:
# L'idée est la suivante : plutôt que de calculer a – b en partant de a (ce qui
# n'est pas ce qu'il y a de plus facile), on part de b pour rejoindre a en
# es$t.tput:ant de trouver ce qui manque.
# L'idée étant toujours de se ramener à des dizaines proches (comme 10, 20, 30, etc.)
# ou à des centaines (100, 200, etc.) très facilement maniables.
###################################################################################

EOM
    $t.filepath = 'output/method02.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples02.pdf &';
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

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m02.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2 :';
    $t.closefile = False;
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.tput: '# -----------';
    $t.tput: '# CALCUL MENTAL : SOUSTRACTIONS';
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
                $t.tprint: "1. 21 – 16 = ";
                $answer = get;
                result(5, $answer);
            } until ($answer eq '5');
            repeat {
                $t.tprint: "2. 59 – 37 = ";
                $answer = get;
                result(22, $answer);
            } until ($answer eq '22');
            repeat {
                $t.tprint: "3. 57 – 39 = ";
                $answer = get;
                result(18, $answer);
            } until ($answer eq '18');
            repeat {
                $t.tprint: "4. 119 – 21 = ";
                $answer = get;
                result(98, $answer);
            } until ($answer eq '98');
            repeat {
                $t.tprint: "5. 143 – 50 = ";
                $answer = get;
                result(93, $answer);
            } until ($answer eq '93');
            repeat {
                $t.tprint: "6. 121 – 56 = ";
                $answer = get;
                result(65, $answer);
            } until ($answer eq '65');
            repeat {
                $t.tprint: "7. 247 – 68 = ";
                $answer = get;
                result(179, $answer);
            } until ($answer eq '179');
            repeat {
                $t.tprint: "8. 233 – 134 = ";
                $answer = get;
                result(99, $answer);
            } until ($answer eq '99');
            repeat {
                $t.tprint: "9. 217 – 53 = ";
                $answer = get;
                result(164, $answer);
            } until ($answer eq '164');
            repeat {
                $t.tprint: "10. 110 – 64 = ";
                $answer = get;
                result(46, $answer);
            } until ($answer eq '46');
            repeat {
                $t.tprint: "11. 178 – 49 = ";
                $answer = get;
                result(129, $answer);
            } until ($answer eq '129');
            repeat {
                $t.tprint: "12. 327 – 88 = ";
                $answer = get;
                result(239, $answer);
            } until ($answer eq '239');
            $t.tput: "Fin du niveau 1.";
        }
        when '2' {
            repeat {
                $t.tprint: "1. 544 – 267 = ";
                $answer = get;
                result(277, $answer);
            } until ($answer eq '277');
            repeat {
                $t.tprint: "2. 217 – 73 = ";
                $answer = get;
                result(144, $answer);
            } until ($answer eq '144');
            repeat {
                $t.tprint: "3. 321 – 39 = ";
                $answer = get;
                result(282, $answer);
            } until ($answer eq '282');
            repeat {
                $t.tprint: "4. 199 – 70 = ";
                $answer = get;
                result(129, $answer);
            } until ($answer eq '129');
            repeat {
                $t.tprint: "5. 233 – 88 = ";
                $answer = get;
                result(145, $answer);
            } until ($answer eq '145');
            repeat {
                $t.tprint: "6. 312 – 179 = ";
                $answer = get;
                result(133, $answer);
            } until ($answer eq '133');
            repeat {
                $t.tprint: "7. 414 – 367 = ";
                $answer = get;
                result(47, $answer);
            } until ($answer eq '47');
            repeat {
                $t.tprint: "8. 664 – 275 = ";
                $answer = get;
                result(389, $answer);
            } until ($answer eq '389');
            repeat {
                $t.tprint: "9. 253 – 59 = ";
                $answer = get;
                result(194, $answer);
            } until ($answer eq '194');
            repeat {
                $t.tprint: "10. 613 – 488 = ";
                $answer = get;
                result(125, $answer);
            } until ($answer eq '125');
            repeat {
                $t.tprint: "11. 222 – 145 – 16 = ";
                $answer = get;
                result(61, $answer);
            } until ($answer eq '61');
            repeat {
                $t.tprint: "12. 435 – 156 – 53 = ";
                $answer = get;
                result(226, $answer);
            } until ($answer eq '226');
            $t.tput: "Fin du niveau 2.";
        }
        when '3' {
            repeat {
                $t.tprint: "1. 245 – 67 – 87 = ";
                $answer = get;
                result(91, $answer);
            } until ($answer eq '91');
            repeat {
                $t.tprint: "2. 199 – 88 – 13 = ";
                $answer = get;
                result(98, $answer);
            } until ($answer eq '98');
            repeat {
                $t.tprint: "3. 288 – 99 – 15 = ";
                $answer = get;
                result(174, $answer);
            } until ($answer eq '174');
            repeat {
                $t.tprint: "4. 144 – 46 – 47 = ";
                $answer = get;
                result(51, $answer);
            } until ($answer eq '51');
            repeat {
                $t.tprint: "5. 414 – 154 – 63 = ";
                $answer = get;
                result(197, $answer);
            } until ($answer eq '197');
            repeat {
                $t.tprint: "6. 132 – 63 – 15 = ";
                $answer = get;
                result(54, $answer);
            } until ($answer eq '54');
            repeat {
                $t.tprint: "7. 340 – 54 – 143 = ";
                $answer = get;
                result(143, $answer);
            } until ($answer eq '143');
            repeat {
                $t.tprint: "8. 231 – 45 – 103 = ";
                $answer = get;
                result(83, $answer);
            } until ($answer eq '83');
            repeat {
                $t.tprint: "9. 303 – 52 – 103 = ";
                $answer = get;
                result(148, $answer);
            } until ($answer == '148');
            repeat {
                $t.tprint: "10. 148 – 43 – 65 = ";
                $answer = get;
                result(40, $answer);
            } until ($answer eq '40');
            repeat {
                $t.tprint: "11. 502 – 352 – 48 = ";
                $answer = get;
                result(102, $answer);
            } until ($answer eq '102');
            repeat {
                $t.tprint: "12. 214 – 56 – 67 = ";
                $answer = get;
                result(91, $answer);
            } until ($answer eq '91');
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
                            $t.tprint: "1. 21 – 16 = ";
                            $answer = get;
                            result(5, $answer);
                        } until ($answer eq '5');
                    }
                    when 2 {
                        repeat {
                            $t.tprint: "2. 59 – 37 = ";
                            $answer = get;
                            result(22, $answer);
                        } until ($answer eq '22');
                    }
                    when 3 {
                        repeat {
                            $t.tprint: "3. 57 – 39 = ";
                            $answer = get;
                            result(18, $answer);
                        } until ($answer eq '18');
                    }
                    when 4 {
                        repeat {
                            $t.tprint: "4. 119 – 21 = ";
                            $answer = get;
                            result(98, $answer);
                        } until ($answer eq '98');
                    }
                    when 5 {
                        repeat {
                            $t.tprint: "5. 143 – 50 = ";
                            $answer = get;
                            result(93, $answer);
                        } until ($answer eq '93');
                    }
                    when 6 {
                        repeat {
                            $t.tprint: "6. 121 – 56 = ";
                            $answer = get;
                            result(65, $answer);
                        } until ($answer eq '65');
                    }
                    when 7 {
                        repeat {
                            $t.tprint: "7. 247 – 68 = ";
                            $answer = get;
                            result(179, $answer);
                        } until ($answer eq '179');
                    }
                    when 8 {
                        repeat {
                            $t.tprint: "8. 233 – 134 = ";
                            $answer = get;
                            result(99, $answer);
                        } until ($answer eq '99');
                    }
                    when 9 {
                        repeat {
                            $t.tprint: "9. 217 – 53 = ";
                            $answer = get;
                            result(164, $answer);
                        } until ($answer eq '164');
                    }
                    when 10 {
                        repeat {
                            $t.tprint: "10. 110 – 64 = ";
                            $answer = get;
                            result(46, $answer);
                        } until ($answer eq '46');
                    }
                    when 11 {
                        repeat {
                            $t.tprint: "11. 178 – 49 = ";
                            $answer = get;
                            result(129, $answer);
                        } until ($answer eq '129');
                    }
                    when 12 {
                        repeat {
                            $t.tprint: "12. 327 – 88 = ";
                            $answer = get;
                            result(239, $answer);
                        } until ($answer eq '239');
                    }
                    when 13 {
                        repeat {
                            $t.tprint: "13. 544 – 267 = ";
                            $answer = get;
                            result(277, $answer);
                        } until ($answer eq '277');
                    }
                    when 14 {
                        repeat {
                            $t.tprint: "14. 217 – 73 = ";
                            $answer = get;
                            result(144, $answer);
                        } until ($answer eq '144');
                    }
                    when 15 {
                        repeat {
                            $t.tprint: "15. 321 – 39 = ";
                            $answer = get;
                            result(282, $answer);
                        } until ($answer eq '282');
                    }
                    when 16 {
                        repeat {
                            $t.tprint: "16. 199 – 70 = ";
                            $answer = get;
                            result(129, $answer);
                        } until ($answer eq '129');
                    }
                    when 17 {
                        repeat {
                            $t.tprint: "17. 233 – 88 = ";
                            $answer = get;
                            result(145, $answer);
                        } until ($answer eq '145');
                    }
                    when 18 {
                        repeat {
                            $t.tprint: "18. 312 – 179 = ";
                            $answer = get;
                            result(133, $answer);
                        } until ($answer eq '133');
                    }
                    when 19 {
                        repeat {
                            $t.tprint: "19. 414 – 367 = ";
                            $answer = get;
                            result(47, $answer);
                        } until ($answer eq '47');
                    }
                    when 20 {
                        repeat {
                            $t.tprint: "20. 664 – 275 = ";
                            $answer = get;
                            result(389, $answer);
                        } until ($answer eq '389');
                    }
                    when 21 {
                        repeat {
                            $t.tprint: "21. 253 – 59 = ";
                            $answer = get;
                            result(194, $answer);
                        } until ($answer eq '194');
                    }
                    when 22 {
                        repeat {
                            $t.tprint: "22. 613 – 488 = ";
                            $answer = get;
                            result(125, $answer);
                        } until ($answer eq '125');
                    }
                    when 23 {
                        repeat {
                            $t.tprint: "23. 222 – 145 – 16 = ";
                            $answer = get;
                            result(61, $answer);
                        } until ($answer eq '61');
                    }
                    when 24 {
                        repeat {
                            $t.tprint: "24. 435 – 156 – 53 = ";
                            $answer = get;
                            result(226, $answer);
                        } until ($answer eq '226');
                    }
                    when 25 {
                        repeat {
                            $t.tprint: "25. 245 – 67 – 87 = ";
                            $answer = get;
                            result(91, $answer);
                        } until ($answer eq '91');
                    }
                    when 26 {
                        repeat {
                            $t.tprint: "26. 199 – 88 – 13 = ";
                            $answer = get;
                            result(98, $answer);
                        } until ($answer eq '98');
                    }
                    when 27 {
                        repeat {
                            $t.tprint: "27. 288 – 99 – 15 = ";
                            $answer = get;
                            result(174, $answer);
                        } until ($answer eq '174');
                    }
                    when 28 {
                        repeat {
                            $t.tprint: "28. 144 – 46 – 47 = ";
                            $answer = get;
                            result(51, $answer);
                        } until ($answer eq '51');
                    }
                    when 29 {
                        repeat {
                            $t.tprint: "29. 414 – 154 – 63 = ";
                            $answer = get;
                            result(197, $answer);
                        } until ($answer eq '197');
                    }
                    when 30 {
                        repeat {
                            $t.tprint: "30. 132 – 63 – 15 = ";
                            $answer = get;
                            result(54, $answer);
                        } until ($answer eq '54');
                    }
                    when 31 {
                        repeat {
                            $t.tprint: "31. 340 – 54 – 143 = ";
                            $answer = get;
                            result(143, $answer);
                        } until ($answer eq '143');
                    }
                    when 32 {
                        repeat {
                            $t.tprint: "32. 231 – 45 – 103 = ";
                            $answer = get;
                            result(83, $answer);
                        } until ($answer eq '83');
                    }
                    when 33 {
                        repeat {
                            $t.tprint: "33. 303 – 52 – 103 = ";
                            $answer = get;
                            result(148, $answer);
                        } until ($answer == '148');
                    }
                    when 34 {
                        repeat {
                            $t.tprint: "34. 148 – 43 – 65 = ";
                            $answer = get;
                            result(40, $answer);
                        } until ($answer eq '40');
                    }
                    when 35 {
                        repeat {
                            $t.tprint: "35. 502 – 352 – 48 = ";
                            $answer = get;
                            result(102, $answer);
                        } until ($answer eq '102');
                    }
                    when 36 {
                        repeat {
                            $t.tprint: "36. 214 – 56 – 67 = ";
                            $answer = get;
                            result(91, $answer);
                        } until ($answer eq '91');
                    }
                }
            }
        }
    }
}
