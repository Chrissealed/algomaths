unit module Method01;

use v6;

=begin pod
=NAME B<Method01> : Perl 6 module in B<algomaths>/maths/cycle1/ms3/I/Perl6/B<method01.pm6>
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
# Méthode 1. Comment additionner rapidement ?
###################################################################################
# ▲ Chercher la dizaine, la centaine... la plus proche et décomposer.
# ▲ Principe:
# L'idée est de se ramener aux nombres 10, 20, 30... (ou 100, 200, etc.) les plus
# proches en décomposant (par exemple +7 en +3+4).
# On calcule bien plus rapidement ensuite.
###################################################################################

EOM
    $t.filepath = 'output/method01.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples01.pdf &';
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

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m01.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1 :';
    $t.closefile = False;
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.tput: '# -----------';
    $t.tput: '# CALCUL MENTAL : ADDITIONS';
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
                $t.tprint: "1. 17 + 4 = ";
                $answer = get;
                result(21, $answer);
            } until ($answer eq '21');
            repeat {
                $t.tprint: "2. 23 + 16 = ";
                $answer = get;
                result(39, $answer);
            } until ($answer eq '39');
            repeat {
                $t.tprint: "3. 23 + 18 = ";
                $answer = get;
                result(41, $answer);
            } until ($answer eq '41');
            repeat {
                $t.tprint: "4. 63 + 19 = ";
                $answer = get;
                result(82, $answer);
            } until ($answer eq '82');
            repeat {
                $t.tprint: "5. 278 + 31 = ";
                $answer = get;
                result(309, $answer);
            } until ($answer eq '309');
            repeat {
                $t.tprint: "6. 127 + 47 = ";
                $answer = get;
                result(174, $answer);
            } until ($answer eq '174');
            repeat {
                $t.tprint: "7. 253 + 371 = ";
                $answer = get;
                result(624, $answer);
            } until ($answer eq '624');
            repeat {
                $t.tprint: "8. 3478 + 88 = ";
                $answer = get;
                result(3566, $answer);
            } until ($answer eq '3566');
            repeat {
                $t.tprint: "9. 2456 + 653 = ";
                $answer = get;
                result(3109, $answer);
            } until ($answer eq '3109');
            repeat {
                $t.tprint: "10. 1433 + 377 = ";
                $answer = get;
                result(1810, $answer);
            } until ($answer eq '1810');
            repeat {
                $t.tprint: "11. 67 + 144 = ";
                $answer = get;
                result(211, $answer);
            } until ($answer eq '211');
            repeat {
                $t.tprint: "12. 170 + 430 = ";
                $answer = get;
                result(600, $answer);
            } until ($answer eq '600');
            $t.tput: "Fin du niveau 1.";
        }
        when '2' {
            repeat {
                $t.tprint: "1. 269 + 69 = ";
                $answer = get;
                result(338, $answer);
            } until ($answer eq '338');
            repeat {
                $t.tprint: "2. 1768 +42 = ";
                $answer = get;
                result(1810, $answer);
            } until ($answer eq '1810');
            repeat {
                $t.tprint: "3. 173 + 18 = ";
                $answer = get;
                result(191, $answer);
            } until ($answer eq '191');
            repeat {
                $t.tprint: "4. 1001 + 2999 = ";
                $answer = get;
                result(4000, $answer);
            } until ($answer eq '4000');
            repeat {
                $t.tprint: "5. 999 + 27 = ";
                $answer = get;
                result(1026, $answer);
            } until ($answer eq '1026');
            repeat {
                $t.tprint: "6. 249 + 351 = ";
                $answer = get;
                result(600, $answer);
            } until ($answer eq '600');
            repeat {
                $t.tprint: "7. 63 + 59 = ";
                $answer = get;
                result(122, $answer);
            } until ($answer eq '122');
            repeat {
                $t.tprint: "8. 173 + 78 = ";
                $answer = get;
                result(251, $answer);
            } until ($answer eq '251');
            repeat {
                $t.tprint: "9. 2337 + 244 = ";
                $answer = get;
                result(2581, $answer);
            } until ($answer eq '2581');
            repeat {
                $t.tprint: "10. 388 + 32 = ";
                $answer = get;
                result(420, $answer);
            } until ($answer eq '420');
            repeat {
                $t.tprint: "11. 21 + 16 + 5 = ";
                $answer = get;
                result(42, $answer);
            } until ($answer eq '42');
            repeat {
                $t.tprint: "12. 203 + 189 + 17 = ";
                $answer = get;
                result(409, $answer);
            } until ($answer eq '409');
            $t.tput: "Fin du niveau 2.";
        }
        when '3' {
            repeat {
                $t.tprint: "1. 314 + 178 + 29 = ";
                $answer = get;
                result(521, $answer);
            } until ($answer eq '521');
            repeat {
                $t.tprint: "2. 34 + 219 + 372 = ";
                $answer = get;
                result(625, $answer);
            } until ($answer eq '625');
            repeat {
                $t.tprint: "3. 56 + 67 + 78 = ";
                $answer = get;
                result(201, $answer);
            } until ($answer eq '201');
            repeat {
                $t.tprint: "4. 12 + 45 + 89 = ";
                $answer = get;
                result(146, $answer);
            } until ($answer eq '146');
            repeat {
                $t.tprint: "5. 139 + 24 + 46 = ";
                $answer = get;
                result(209, $answer);
            } until ($answer eq '209');
            repeat {
                $t.tprint: "6. 235 + 236 + 68 = ";
                $answer = get;
                result(539, $answer);
            } until ($answer eq '539');
            repeat {
                $t.tprint: "7. 120 + 55 + 62 = ";
                $answer = get;
                result(237, $answer);
            } until ($answer eq '237');
            repeat {
                $t.tprint: "8. 173 + 111 + 25 = ";
                $answer = get;
                result(309, $answer);
            } until ($answer eq '309');
            repeat {
                $t.tprint: "9. 293 + 99 + 31 = ";
                $answer = get;
                result(423, $answer);
            } until ($answer == '423');
            repeat {
                $t.tprint: "10. 256 + 35 + 57 = ";
                $answer = get;
                result(348, $answer);
            } until ($answer eq '348');
            repeat {
                $t.tprint: "11. 163 + 264 + 365 = ";
                $answer = get;
                result(792, $answer);
            } until ($answer eq '792');
            repeat {
                $t.tprint: "12. 111 + 99 + 24 = ";
                $answer = get;
                result(234, $answer);
            } until ($answer eq '234');
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
                            $t.tprint: "1. 17 + 4 = ";
                            $answer = get;
                            result(21, $answer);
                        } until ($answer eq '21');
                    }
                    when 2 {
                        repeat {
                            $t.tprint: "2. 23 + 16 = ";
                            $answer = get;
                            result(39, $answer);
                        } until ($answer eq '39');
                    }
                    when 3 {
                        repeat {
                            $t.tprint: "3. 23 + 18 = ";
                            $answer = get;
                            result(41, $answer);
                        } until ($answer eq '41');
                    }
                    when 4 {
                        repeat {
                            $t.tprint: "4. 63 + 19 = ";
                            $answer = get;
                            result(82, $answer);
                        } until ($answer eq '82');
                    }
                    when 5 {
                        repeat {
                            $t.tprint: "5. 278 + 31 = ";
                            $answer = get;
                            result(309, $answer);
                        } until ($answer eq '309');
                    }
                    when 6 {
                        repeat {
                            $t.tprint: "6. 127 + 47 = ";
                            $answer = get;
                            result(174, $answer);
                        } until ($answer eq '174');
                    }
                    when 7 {
                        repeat {
                            $t.tprint: "7. 253 + 371 = ";
                            $answer = get;
                            result(624, $answer);
                        } until ($answer eq '624');
                    }
                    when 8 {
                        repeat {
                            $t.tprint: "8. 3478 + 88 = ";
                            $answer = get;
                            result(3566, $answer);
                        } until ($answer eq '3566');
                    }
                    when 9 {
                        repeat {
                            $t.tprint: "9. 2456 + 653 = ";
                            $answer = get;
                            result(3109, $answer);
                        } until ($answer eq '3109');
                    }
                    when 10 {
                        repeat {
                            $t.tprint: "10. 1433 + 377 = ";
                            $answer = get;
                            result(1810, $answer);
                        } until ($answer eq '1810');
                    }
                    when 11 {
                        repeat {
                            $t.tprint: "11. 67 + 144 = ";
                            $answer = get;
                            result(211, $answer);
                        } until ($answer eq '211');
                    }
                    when 12 {
                        repeat {
                            $t.tprint: "12. 170 + 430 = ";
                            $answer = get;
                            result(600, $answer);
                        } until ($answer eq '600');
                    }
                    when 13 {
                        repeat {
                            $t.tprint: "13. 269 + 69 = ";
                            $answer = get;
                            result(338, $answer);
                        } until ($answer eq '338');
                    }
                    when 14 {
                        repeat {
                            $t.tprint: "14. 1768 +42 = ";
                            $answer = get;
                            result(1810, $answer);
                        } until ($answer eq '1810');
                    }
                    when 15 {
                        repeat {
                            $t.tprint: "15. 173 + 18 = ";
                            $answer = get;
                            result(191, $answer);
                        } until ($answer eq '191');
                    }
                    when 16 {
                        repeat {
                            $t.tprint: "16. 1001 + 2999 = ";
                            $answer = get;
                            result(4000, $answer);
                        } until ($answer eq '4000');
                    }
                    when 17 {
                        repeat {
                            $t.tprint: "17. 999 + 27 = ";
                            $answer = get;
                            result(1026, $answer);
                        } until ($answer eq '1026');
                    }
                    when 18 {
                        repeat {
                            $t.tprint: "18. 249 + 351 = ";
                            $answer = get;
                            result(600, $answer);
                        } until ($answer eq '600');
                    }
                    when 19 {
                        repeat {
                            $t.tprint: "19. 63 + 59 = ";
                            $answer = get;
                            result(122, $answer);
                        } until ($answer eq '122');
                    }
                    when 20 {
                        repeat {
                            $t.tprint: "20. 173 + 78 = ";
                            $answer = get;
                            result(251, $answer);
                        } until ($answer eq '251');
                    }
                    when 21 {
                        repeat {
                            $t.tprint: "21. 2337 + 244 = ";
                            $answer = get;
                            result(2581, $answer);
                        } until ($answer eq '2581');
                    }
                    when 22 {
                        repeat {
                            $t.tprint: "22. 388 + 32 = ";
                            $answer = get;
                            result(420, $answer);
                        } until ($answer eq '420');
                    }
                    when 23 {
                        repeat {
                            $t.tprint: "23. 21 + 16 + 5 = ";
                            $answer = get;
                            result(42, $answer);
                        } until ($answer eq '42');
                    }
                    when 24 {
                        repeat {
                            $t.tprint: "24. 203 + 189 + 17 = ";
                            $answer = get;
                            result(409, $answer);
                        } until ($answer eq '409');
                    }
                    when 25 {
                        repeat {
                            $t.tprint: "25. 314 + 178 + 29 = ";
                            $answer = get;
                            result(521, $answer);
                        } until ($answer eq '521');
                    }
                    when 26 {
                        repeat {
                            $t.tprint: "26. 34 + 219 + 372 = ";
                            $answer = get;
                            result(625, $answer);
                        } until ($answer eq '625');
                    }
                    when 27 {
                        repeat {
                            $t.tprint: "27. 56 + 67 + 78 = ";
                            $answer = get;
                            result(201, $answer);
                        } until ($answer eq '201');
                    }
                    when 28 {
                        repeat {
                            $t.tprint: "28. 12 + 45 + 89 = ";
                            $answer = get;
                            result(146, $answer);
                        } until ($answer eq '146');
                    }
                    when 29 {
                        repeat {
                            $t.tprint: "29. 139 + 24 + 46 = ";
                            $answer = get;
                            result(209, $answer);
                        } until ($answer eq '209');
                    }
                    when 30 {
                        repeat {
                            $t.tprint: "30. 235 + 236 + 68 = ";
                            $answer = get;
                            result(539, $answer);
                        } until ($answer eq '539');
                    }
                    when 31 {
                        repeat {
                            $t.tprint: "31. 120 + 55 + 62 = ";
                            $answer = get;
                            result(237, $answer);
                        } until ($answer eq '237');
                    }
                    when 32 {
                        repeat {
                            $t.tprint: "32. 173 + 111 + 25 = ";
                            $answer = get;
                            result(309, $answer);
                        } until ($answer eq '309');
                    }
                    when 33 {
                        repeat {
                            $t.tprint: "33. 293 + 99 + 31 = ";
                            $answer = get;
                            result(423, $answer);
                        } until ($answer == '423');
                    }
                    when 34 {
                        repeat {
                            $t.tprint: "34. 256 + 35 + 57 = ";
                            $answer = get;
                            result(348, $answer);
                        } until ($answer eq '348');
                    }
                    when 35 {
                        repeat {
                            $t.tprint: "35. 163 + 264 + 365 = ";
                            $answer = get;
                            result(792, $answer);
                        } until ($answer eq '792');
                    }
                    when 36 {
                        repeat {
                            $t.tprint: "36. 111 + 99 + 24 = ";
                            $answer = get;
                            result(234, $answer);
                        } until ($answer eq '234');
                    }
                }
            }
        }
    }
}
