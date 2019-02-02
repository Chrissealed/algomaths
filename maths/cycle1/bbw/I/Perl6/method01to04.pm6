unit module Method01to04;

use v6;

=begin pod
=NAME B<Method01to04> : Perl 6 module in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<method01to04.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.02
=end pod

use corrective;
use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
    # Chemin provisoire ou de recours
    filepath => './teeput.logout',
);

class DoOperations is export {

    method put-up-method(Str:D $method-text-file, Str:D $method-wording) {
        my $io = IO::Path.new("$*CWD/init.p6");
        if $io ~~ / 'bbw/init.p6' / {
            $t.filepath = "I/Perl6/output/$method-text-file";
        } else {
            $t.filepath = "output/$method-text-file";
        }
        $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
        $t.tput($method-wording);
    }

    method show-examples(Str:D $pdf-file) {
        my $io = IO::Path.new("$*CWD/init.p6");
        if $io ~~ / 'bbw/init.p6' / {
            shell "xdg-open I/$pdf-file &";
        } else {
            shell "xdg-open ../$pdf-file &";
        }
    }

    method stop(--> Bool:D) {
        my Bool $confirm = False;
        my Str $answer = prompt "Voulez-vous vraiment quitter ? O/n > ";
        if $answer ~~ / <[oO]> / { $confirm = True; }
        return $confirm;
    }

    method result(Int:D $int, Str:D $strint, Bool:D $last = False, --> Bool:D) {
        state Int $true-answers = 0;
        state Int $false-answers = 0;
        my Bool $confirm = False;
        my Bool $final = $last;
        $t.tput: $strint;
        my Bool $status = False;
        try {
            if $int == Int($strint) {
                $t.tput: "Vrai";
                $true-answers++;
                $status = True;
            } else {
                $t.tput: "Faux. Recommencez.";
                $false-answers++;
                $final = False;
            }
        }
        if $! {
            if ($strint ~~ / <[qQ]> /) {
                $confirm = self.stop(); 
                if $confirm {
                    $t.tput: "Réponses correctes : $true-answers.";
                    $t.tput: "Réponses incorrectes : $false-answers.";
                    return $status;
                }
            }
            put "Donnée incorrecte ! Recommencez.";
            $! = Any;
        }
        if $final {
            $t.tput: "Réponses correctes : $true-answers.";
            $t.tput: "Réponses incorrectes : $false-answers.";
        }
        return $status;
    }

    method additions(--> Bool:D) {
        my Str $examples-file = 'method01.pdf';
        my Str $output-file = 'method01.txt';
        my Str $wording = qq:to/EOM/;
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
    
        my Bool $boolean = False;
        $boolean = do-put-up-method;
        if $boolean { self.put-up-method($output-file, $wording); }
        $boolean = do-put-up-examples;
        if $boolean { self.show-examples($examples-file); }
        $t.tput: "ADDITIONS";
        $t.tprint: "\n";
        my Str $answer = '';
        my Bool $last = False;
        my Bool $status = False;
        repeat {
            $t.tput: "a.";
            $t.tput: "   873";
            $t.tput: "   112";
            $t.tput: "  1718";
            $t.tput: "   157";
            $t.tput: "+ 3461";
            $t.tput: "  ----";
            $t.tprint: "  ... = ";
            $answer = get;
            $status = self.result(6321, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '6321');
        repeat {
            $t.tput: "b.";
            $t.tput: "  1578";
            $t.tput: "  9553";
            $t.tput: "  7218";
            $t.tput: "   212";
            $t.tput: "+ 4139";
            $t.tput: "  ----";
            $t.tprint: "  ... = ";
            $answer = get;
            $last = True;
            $status = self.result(22700, $answer, $last);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '22700');
        $t.closefile = True;
        $t.tput: "Fin des opérations avec les additions.";
        return $status;
    }

    method subtractions(--> Bool:D) {
        my Str $examples-file = 'method02.pdf';
        my Str $output-file = 'method02.txt';
        my Str $wording = qq:to/EOM/;
    ###################################################################################
    # Méthode 2. Comment soustraire rapidement ?
    ###################################################################################
    # ▲ Principe:
    # L'idée est la suivante : plutôt que de calculer a – b en partant de a (ce qui
    # n'est pas ce qu'il y a de plus facile), on part de b pour rejoindre a en
    # essayant de trouver ce qui manque.
    ###################################################################################

    EOM

        my Bool $boolean = False;
        $boolean = do-put-up-method;
        if $boolean { self.put-up-method($output-file, $wording); }
        $boolean = do-put-up-examples;
        if $boolean { self.show-examples($examples-file); }
        $t.tput: "SOUSTRACTIONS";
        $t.tprint: "\n";
        my Str $answer = '';
        my Bool $last = False;
        my Bool $status = False;
        repeat {
            $t.tput: "a.";
            $t.tput: "  9134";
            $t.tput: "– 4319";
            $t.tput: "  ----";
            $t.tprint: "  ... = ";
            $answer = get;
            $status = self.result(4815, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '4815');
        repeat {
            $t.tput: "b.";
            $t.tput: "  4585";
            $t.tput: "– 3287";
            $t.tput: "  ----";
            $t.tprint: "  ... = ";
            $answer = get;
            $status = self.result(1298, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '1298');
        repeat {
            $t.tput: "c.";
            $t.tput: "  7033";
            $t.tput: "– 1398";
            $t.tput: "  ----";
            $t.tprint: "  ... = ";
            $answer = get;
            $last = True;
            $status = self.result(5635, $answer, $last);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '5635');
        $t.closefile = True;
        $t.tput: "Fin des opérations avec les soustractions.";
        return $status;
    }

    method multiplications(--> Bool:D) {
        my Str $examples-file = 'method03.pdf';
        my Str $output-file = 'method03.txt';
        my Str $wording = qq:to/EOM/;
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

        my Bool $boolean = False;
        $boolean = do-put-up-method;
        if $boolean { self.put-up-method($output-file, $wording); }
        $boolean = do-put-up-examples;
        if $boolean { self.show-examples($examples-file); }

        $t.tput: "MULTIPLICATIONS";
        $t.tprint: "\n";
        my Str $answer = '';
        my Bool $last = False;
        my Bool $status = False;
        repeat {
            $t.tprint: "1. 34 × 89 = ";
            $answer = get;
            $status = self.result(3026, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '3026');
        repeat {
            $t.tprint: "2. 67 × 46 = ";
            $answer = get;
            $status = self.result(3082, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '3082');
        repeat {
            $t.tprint: "3. 61 × 93 = ";
            $answer = get;
            $status = self.result(5673, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '5673');
        repeat {
            $t.tprint: "4. 55 × 11 = ";
            $answer = get;
            $status = self.result(605, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '605');
        repeat {
            $t.tprint: "5. 78 × 38 = ";
            $answer = get;
            $status = self.result(2964, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '2964');
        repeat {
            $t.tprint: "6. 354 × 83 = ";
            $answer = get;
            $status = self.result(29382, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '29382');
        repeat {
            $t.tprint: "7. 67 × 546 = ";
            $answer = get;
            $status = self.result(36582, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '36582');
        repeat {
            $t.tprint: "8. 461 × 79 = ";
            $answer = get;
            $status = self.result(36419, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '36419');
        repeat {
            $t.tprint: "9. 655 × 102 = ";
            $answer = get;
            $status = self.result(66810, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '66810');
        repeat {
            $t.tprint: "10. 178 × 398 = ";
            $answer = get;
            $last = True;
            $status = self.result(70844, $answer, $last);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '70844');
        $t.closefile = True;
        $t.tput: "Fin des opérations avec les multiplications.";
        return $status;
    }

    method divisions(--> Bool:D) {
        my Str $examples-file = 'method04.pdf';
        my Str $output-file = 'method04.txt';
        my Str $wording = qq:to/EOM/;
    ###################################################################################
    # Méthode 4 : Comment diviser rapidement ?
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

        my Bool $boolean = False;
        $boolean = do-put-up-method;
        if $boolean { self.put-up-method($output-file, $wording); }
        $boolean = do-put-up-examples;
        if $boolean { self.show-examples($examples-file); }
        $t.tput: "DIVISIONS";
        $t.tprint: "\n";
        my Str $answer = '';
        my Bool $last = False;
        my Bool $status = False;
        
        $t.tput: "Attention! Donnez le quotient et le reste concaténés (c-à-d. sans espace entre eux).";
        repeat {
            $t.tprint: "1. 154 ÷ 13 = ";
            $answer = get;
            $status = self.result(1111, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '1111');
        repeat {
            $t.tprint: "2. 435 ÷ 27 = ";
            $answer = get;
            $status = self.result(163, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '163');
        repeat {
            $t.tprint: "3. 631 ÷ 23 = ";
            $answer = get;
            $status = self.result(2710, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '2710');
        repeat {
            $t.tprint: "4. 467 ÷ 17 = ";
            $answer = get;
            $status = self.result(278, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '278');
        repeat {
            $t.tprint: "5. 780 ÷ 37 = ";
            $answer = get;
            $status = self.result(213, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '213');
        repeat {
            $t.tprint: "6. 2334 ÷ 53 = ";
            $answer = get;
            $status = self.result(442, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '442');
        repeat {
            $t.tprint: "7. 6463 ÷ 101 = ";
            $answer = get;
            $status = self.result(63100, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '63100');
        repeat {
            $t.tprint: "8. 7682 ÷ 59 = ";
            $answer = get;
            $status = self.result(13012, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '13012');
        repeat {
            $t.tprint: "9. 6178 ÷ 451 = ";
            $answer = get;
            $status = self.result(13315, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '13315');
        repeat {
            $t.tprint: "10. 5811 ÷ 67 = ";
            $answer = get;
            $status = self.result(8649, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '8649');
        repeat {
            $t.tprint: "11. 15457 ÷ 11 = ";
            $answer = get;
            $status = self.result(14052, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '14052');
        repeat {
            $t.tprint: "12. 4534 × 97 = ";
            $answer = get;
            $status = self.result(4672, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '4672');
        repeat {
            $t.tprint: "13. 63321 ÷ 23 = ";
            $answer = get;
            $status = self.result(27532, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '27532');
        repeat {
            $t.tprint: "14. 56467 ÷ 179 = ";
            $answer = get;
            $status = self.result(31582, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '31582');
        repeat {
            $t.tprint: "15. 78620 ÷ 307 = ";
            $answer = get;
            $status = self.result(25628, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '25628');
        repeat {
            $t.tprint: "16. 42334 ÷ 41 = ";
            $answer = get;
            $status = self.result(103222, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '103222');
        repeat {
            $t.tprint: "17. 13467 ÷ 101 = ";
            $answer = get;
            $status = self.result(13334, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '13334');
        repeat {
            $t.tprint: "18. 35641 ÷ 99 = ";
            $answer = get;
            $status = self.result(3601, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '3601');
        repeat {
            $t.tprint: "19. 16155 ÷ 215 = ";
            $answer = get;
            $status = self.result(7530, $answer);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '7530');
        repeat {
            $t.tprint: "20. 92183 × 83 = ";
            $answer = get;
            $last = True;
            $status = self.result(111053, $answer, $last);
            if ($answer ~~ / <[qQ]> /) { return $status; }
        } until ($answer eq '111053');
        $t.closefile = True;
        $t.tput: "Fin des opérations avec les divisions.";
        return $status;
    }

    method four-operations(--> Bool:D) {
        my Str $examples-file = 'method01to04.pdf';
        my Str $output-file = 'method01to04-sum-up.txt';
        my Str $wording = qq:to/EOM/;
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
    # NOTE: Ecrivez le quotient et le reste concaténés (c-à-d. sans espace entre eux).
    # ---------------------------------------------------------------------------------
    # BONUS : PRIORITÉ DES OPÉRATIONS
    # 5. Comment simplifier une ligne de calculs ?
    # a. Les calculs entre parenthèses en premier.
    # b. Les multiplications et les divisions en deuxième.
    # c. Les additions et les soustractions en troisième.
    ###################################################################################

    EOM

        my Bool $boolean = False;
        $boolean = do-put-up-method;
        if $boolean { self.put-up-method($output-file, $wording); }
        $boolean = do-put-up-examples;
        if $boolean { self.show-examples($examples-file); }
        $t.tput: "QUATRE OPÉRATIONS";
        $t.tprint: "\n";

        my Int $randomop = 0;
        my Int $lastrandomop = 0;
        my Str $answer = '';
        my Bool $status = False;

        repeat {
            $randomop = 35.rand.ceiling;
        }
        until ($randomop != $lastrandomop);
        $lastrandomop = $randomop;
        given $randomop {
            when 1 {
                repeat {
                    $t.tput: "1.";
                    $t.tput: "   873";
                    $t.tput: "   112";
                    $t.tput: "  1718";
                    $t.tput: "   157";
                    $t.tput: "+ 3461";
                    $t.tput: "  ----";
                    $t.tprint: "  ... = ";
                    $answer = get;
                    $status = self.result(6321, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '6321');
            }
            when 2 {
                repeat {
                    $t.tput: "2.";
                    $t.tput: "  1578";
                    $t.tput: "  9553";
                    $t.tput: "  7218";
                    $t.tput: "   212";
                    $t.tput: "+ 4139";
                    $t.tput: "  ----";
                    $t.tprint: "  ... = ";
                    $answer = get;
                    $status = self.result(22700, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '22700');
            }
            when 3 {
                repeat {
                    $t.tput: "3.";
                    $t.tput: "  9134";
                    $t.tput: "– 4319";
                    $t.tput: "  ----";
                    $t.tprint: "  ... = ";
                    $answer = get;
                    $status = self.result(4815, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '4815');
            }
            when 4 {
                repeat {
                    $t.tput: "4.";
                    $t.tput: "  4585";
                    $t.tput: "– 3287";
                    $t.tput: "  ----";
                    $t.tprint: "  ... = ";
                    $answer = get;
                    $status = self.result(1298, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '1298');
            }
            when 5 {
                repeat {
                    $t.tput: "5.";
                    $t.tput: "  7033";
                    $t.tput: "– 1398";
                    $t.tput: "  ----";
                    $t.tprint: "  ... = ";
                    $answer = get;
                    $status = self.result(5635, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '5635');
            }
            when 6 {
                repeat {
                    $t.tprint: "6. 34 × 89 = ";
                    $answer = get;
                    $status = self.result(3026, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '3026');
            }
            when 7 {
                repeat {
                    $t.tprint: "7. 67 × 46 = ";
                    $answer = get;
                    $status = self.result(3082, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '3082');
            }
            when 8 {
                repeat {
                    $t.tprint: "8. 61 × 93 = ";
                    $answer = get;
                    $status = self.result(5673, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '5673');
            }
            when 9 {
                repeat {
                    $t.tprint: "9. 55 × 11 = ";
                    $answer = get;
                    $status = self.result(605, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '605');
            }
            when 10 {
                repeat {
                    $t.tprint: "10. 78 × 38 = ";
                    $answer = get;
                    $status = self.result(2964, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '2964');
            }
            when 11 {
                repeat {
                    $t.tprint: "11. 354 × 83 = ";
                    $answer = get;
                    $status = self.result(29382, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '29382');
            }
            when 12 {
                repeat {
                    $t.tprint: "12. 67 × 546 = ";
                    $answer = get;
                    $status = self.result(36582, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '36582');
            }
            when 13 {
                repeat {
                    $t.tprint: "13. 461 × 79 = ";
                    $answer = get;
                    $status = self.result(36419, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '36419');
            }
            when 14 {
                repeat {
                    $t.tprint: "14. 655 × 102 = ";
                    $answer = get;
                    $status = self.result(66810, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '66810');
            }
            when 15 {
                repeat {
                    $t.tprint: "15. 178 × 398 = ";
                    $answer = get;
                    $status = self.result(70844, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '70844');
            }
            when 16 {
                repeat {
                    $t.tprint: "16. 154 ÷ 13 = ";
                    $answer = get;
                    $status = self.result(1111, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '1111');
            }
            when 17 {
                repeat {
                    $t.tprint: "17. 435 ÷ 27 = ";
                    $answer = get;
                    $status = self.result(163, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '163');
            }
            when 18 {
                repeat {
                    $t.tprint: "18. 631 ÷ 23 = ";
                    $answer = get;
                    $status = self.result(2710, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '2710');
            }
            when 19 {
                repeat {
                    $t.tprint: "19. 467 ÷ 17 = ";
                    $answer = get;
                    $status = self.result(278, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '278');
            }
            when 20 {
                repeat {
                    $t.tprint: "20. 780 ÷ 37 = ";
                    $answer = get;
                    $status = self.result(213, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '213');
            }
            when 21 {
                repeat {
                    $t.tprint: "21. 2334 ÷ 53 = ";
                    $answer = get;
                    $status = self.result(442, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '442');
            }
            when 22 {
                repeat {
                    $t.tprint: "22. 6463 ÷ 101 = ";
                    $answer = get;
                    $status = self.result(63100, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '63100');
            }
            when 23 {
                repeat {
                    $t.tprint: "23. 7682 ÷ 59 = ";
                    $answer = get;
                    $status = self.result(13012, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '13012');
            }
            when 24 {
                repeat {
                    $t.tprint: "24. 6178 ÷ 451 = ";
                    $answer = get;
                    $status = self.result(13315, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '13315');
            }
            when 25 {
                repeat {
                    $t.tprint: "25. 5811 ÷ 67 = ";
                    $answer = get;
                    $status = self.result(8649, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '8649');
            }
            when 26 {
                repeat {
                    $t.tprint: "26. 15457 ÷ 11 = ";
                    $answer = get;
                    $status = self.result(14052, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '14052');
            }
            when 27 {
                repeat {
                    $t.tprint: "27. 4534 × 97 = ";
                    $answer = get;
                    $status = self.result(4672, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '4672');
            }
            when 28 {
                repeat {
                    $t.tprint: "28. 63321 ÷ 23 = ";
                    $answer = get;
                    $status = self.result(27532, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '27532');
            }
            when 29 {
                repeat {
                    $t.tprint: "29. 56467 ÷ 179 = ";
                    $answer = get;
                    $status = self.result(31582, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '31582');
            }
            when 30 {
                repeat {
                    $t.tprint: "30. 78620 ÷ 307 = ";
                    $answer = get;
                    $status = self.result(25628, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '25628');
            }
            when 31 {
                repeat {
                    $t.tprint: "31. 42334 ÷ 41 = ";
                    $answer = get;
                    $status = self.result(103222, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '103222');
            }
            when 32 {
                repeat {
                    $t.tprint: "32. 13467 ÷ 101 = ";
                    $answer = get;
                    $status = self.result(13334, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '13334');
            }
            when 33 {
                repeat {
                    $t.tprint: "33. 35641 ÷ 99 = ";
                    $answer = get;
                    $status = self.result(3601, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '3601');
            }
            when 34 {
                repeat {
                    $t.tprint: "34. 16155 ÷ 215 = ";
                    $answer = get;
                    $status = self.result(7530, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '7530');
            }
            when 35 {
                repeat {
                    $t.tprint: "35. 92183 × 83 = ";
                    $answer = get;
                    $status = self.result(111053, $answer);
                    if ($answer ~~ / <[qQ]> /) { return $status; }
                } until ($answer eq '111053');
            }
            return $status;
        }
    }
}

class ChooseX is export {

    method set-output-file-mode() {
        $t.filemode = ':w'; # :mode<wo>, :create, :truncate
        $t.tput: '# Exercices :';
        $t.filemode = ':a'; # :mode<wo>, :create, :append
        $t.closefile = False;
        $t.tput: '# ---------';
        $t.tput: '# CALCUL MENTAL : OPERATIONS';
        $t.tprint: "\n";
    }

    method exercises_01to04(Junction:D $exercise-label --> Bool:D) {
        my $io = IO::Path.new("$*CWD/init.p6");
        my Bool $local-call = False;
        my Bool $remote-call = True;
        my Bool $confirm = False;
        my Str $answer = '';
        my Bool $status = False;
        my $operations = DoOperations.new();

        given $exercise-label {
            when 1|'a'|'A' {
                if $io ~~ / 'bbw/init.p6' / {
                    $t.filepath = 'I/Perl6/output/m0101.txt';
                } else {
                    $t.filepath = './output/m0101.txt';
                    $local-call = True;
                    $remote-call = False;
                }
                self.set-output-file-mode();
                $status = $operations.additions();
                return $status;
            }
            when 2|'s'|'S' {
                if $io ~~ / 'bbw/init.p6' / {
                    $t.filepath = 'I/Perl6/output/m0102.txt';
                } else {
                    $t.filepath = './output/m0102.txt';
                    $local-call = True;
                    $remote-call = False;
                }
                self.set-output-file-mode();
                $status = $operations.subtractions();
                return $status;
            }
            when 3|'m'|'M' {
                if $io ~~ / 'bbw/init.p6' / {
                    $t.filepath = 'I/Perl6/output/m0103.txt';
                } else {
                    $t.filepath = './output/m0103.txt';
                    $local-call = True;
                    $remote-call = False;
                }
                self.set-output-file-mode();
                $status = $operations.multiplications();
                return $status;
            }
            when 4|'d'|'D' {
                if $io ~~ / 'bbw/init.p6' / {
                    $t.filepath = 'I/Perl6/output/m0104.txt';
                } else {
                    $t.filepath = './output/m0104.txt';
                    $local-call = True;
                    $remote-call = False;
                }
                self.set-output-file-mode();
                $status = $operations.divisions();
                return $status;
            }
            when 0|'0'|'O' {
                if $io ~~ / 'bbw/init.p6' / {
                    $t.filepath = 'I/Perl6/output/m01to04.txt';
                } else {
                    $t.filepath = './output/m01to04.txt';
                    $local-call = True;
                    $remote-call = False;
                }
                self.set-output-file-mode();
                $t.tput: "Choix aléatoire";
                $t.tprint: "\n";
                $status = $operations.four-operations();
                return $status;
            }
            default {
                if $_ ~~ / <[qQ]> / {
                    $confirm = self.stop();
                    if ($confirm) { return $status; }
                }
                else { put 'Donnée incorrecte!'; return $status; }
            }
        }
    }
}

END {
    #put "Fermeture du fichier {$t.filepath} dans le module method01to04.pm6.";
    $t.closefile = True;
    $t.tprint: "\n";
}
