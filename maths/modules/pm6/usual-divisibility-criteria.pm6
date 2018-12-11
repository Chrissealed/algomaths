unit module usual-divisibility-criteria;

use v6;

=begin pod
=NAME class B<UsualDivisibilityCriteria>
=AUTHOR Christian Béloscar
=VERSION 0.2.0

=for head1
Ce module est destiné à coder les critères de divisibilité usuels
des nombres pour lesquels ceux-ci existent :
2, 3, 4, 5, 9, (10, 100, 1000, etc.), 11 et 25.

Ceci permet d'éviter d'utiliser la méthode par modulo (mod ou %%)
directement sur le nombre lui-même et ainsi d'accélérer le traitement.
Il contient autant de méthodes de type B<divisible_by_n>(Int:D $integer --> Bool:D)
ou B<n> est l'un des nombres ci-dessus,
avec une variante : B<divisible_by_0_queue>(Int:D $integer --> Bool:D)
pour la série des multiples de 10 (finissant par une suite de 0).
Chacune de ces méthodes renvoie B<True> ou B<False>
selon que le nombre donné en argument est divisible ou pas par B<n>.

=head1 Voici les critères de divisibilité courants employés ici :

=item Critère de divisibilité par 2, le chiffre des unités
est : 0, 2, 4, 6 ou 8.
=item Critère de divisibilité par 3 :
la somme des chiffres est divisible par 3.
=item Critère de divisibilité par 4 :
le nombre formé par les deux chiffres de droite est divisible par 4.
=item Critère de divisibilité par 5 :
le chiffre des unités est 0 ou 5.
=item Pas de critère de divisibilité particulier pour 6, 7 et 8
=item Critère de divisibilité par 9 :
la somme des chiffres est divisible par 9.
=item Critère de divisibilité par 10, 100, 1000 etc. :
le nombre se termine respectivement par 0, 00, 000, etc.
=item Critère de divisibilité par 11 :
la différence entre la somme des chiffres de rang pair
et celle des chiffres de rang impair est divisible par 11.
=item Critère de divisibilité par 25 :
le nombre se termine par 00, 25, 50 ou 75.

=end pod

role UsualDivisibilityCriteria is export {
    # Critère de divisibilité par 2, le chiffre des unités
    # est : 0, 2, 4, 6 ou 8
    method is_divisible_by_2(Int:D $integer --> Bool:D) {
        my Int $n = abs($integer);
        #my Int $units = $n.Str.comb[$n.Str.chars-1];
        my Str $units = substr($n.Str, *-1);
        given $units {
            when / <[02468]> / { return True; }
            default            { return False; }
        }
    }

    # Critère de divisibilité par 3 :
    # la somme des chiffres est divisible par 3
    method is_divisible_by_3(Int:D $integer --> Bool:D) {
        # Pour protéger les valeurs négatives en vue de la conversion en Int
        my Int $n = abs($integer);
        # Pour un nombre à un chiffre
        if ($n.Str.chars == 1) {
            if ($n mod 3 == 0) {
                return True;
            } else {
                return False;
            }
        }
        # Pour un nombre à plusieurs chiffres, extraire chacun des chiffres
        # afin de faire leur somme
        my Int $i = 0;
        my Str @a;
        my Int $x = 0;
        loop {
            # ~ stringify its argument by calling the Str method on it
            # comb splits the string in a list of characters accessible by []
            @a[$i] = ~$n.comb[$i];
            $x = $x + Int(@a[$i]);
            $i += 1;
            last if ($i > $n.Str.chars - 1)
        }
        if ($x mod 3 == 0) {
            return True;
        } else {
            return False;
        }
    }

    # Critère de divisibilité par 4 :
    # le nombre formé par les deux chiffres de droite est divisible par 4
    method is_divisible_by_4(Int:D $integer --> Bool:D) {
        my Int $n = abs($integer);
        # Pour un nombre à un chiffre
        if $n.Str.chars == 1 {
            if ($n mod 4 == 0) {
                return True;
            } else {
                return False;
            }
        }
        # Pour un nombre à plusieurs chiffres
        #my Str @a = ();
        my Str $chars = "";
        my Int $i = 0;
        # Extraire les deux derniers chiffres (compte à partir de la fin)
        $chars = substr($n.Str, *-2);
        if ($chars.Int mod 4 == 0) {
            return True;
        } else {
            return False;
        }
    }

    # Critère de divisibilité par 5 : le chiffre des unités
    # est 0 ou 5 (cf. divisible_by_2?)
    method is_divisible_by_5(Int:D $integer --> Bool:D) {
        my Int $n = abs($integer);
        my Str $units = $n.Str.comb[$n.Str.chars - 1];
        given $units {
            when / <[05]> / { return True; }
            default         { return False; }
        }
    }

    # Pas de critère de divisibilité particulier pour 6, 7 et 8

    # Critère de divisibilité par 9 : la somme des chiffres est divisible par 9 (cf.divisible_by_3?)
    method is_divisible_by_9(Int:D $integer --> Bool:D) {
        my Int $n = abs($integer);
        # Pour un nombre à un chiffre
        if ($n.Str.chars == 1) {
            if ($n == 9) {
                return True;
            } else {
                return False;
            }
        }
        # Pour un nombre à plusieurs chiffres, extraire chacun des chiffres
        # afin d'effectuer leur somme
        my Int $i = 0;
        my Str @a;
        my Int $x = 0;
        loop {
            @a[$i] = $n.Str.comb[$i];
            $x = $x + @a[$i].Int;
            $i += 1;
            last if ($i > $n.Str.chars - 1);
        }
        if ($x mod 9 == 0) {
            return True;
        } else {
            return False;
        }
    }

    # Critère de divisibilité par 10, 100, 1000 etc. :
    # le nombre se termine respectivement par 0, 00, 000, etc.
    method is_divisible_by_0_queue(Int:D $integer --> Bool:D) {
        my Int $n = abs($integer);
        my Int $i = 1;
        my Str $j = '0';
        my Bool $flag = False;
        if ($n == 0) {
            $flag = True;
        }
        else {
            while (substr(($n.Str), *-$i).Int == 0) {
                $flag = True;
                $i++;
            }
        }
        #`((
            until ($n.Str.comb[$n.Str.chars - $i] != '0') {
                if ($n.Str[($n.Str.chars - $i)..($n.Str.chars - 1)] == $j) {
                    $i += 1;
                    # Concatène les 0
                    $j += '0';
                    $flag = True;
                }
                else {
                    $flag = False;
                }
            }
        }
        ))
        return $flag;
    }

    # Critère de divisibilité par 11 : la différence entre la somme des chiffres
    # de rang pair et celle des chiffres de rang impair est divisible par 11.
    method is_divisible_by_11(Int:D $integer --> Bool:D) {
        my Int $n = abs($integer);
        my Str @evens;
        my Str @odds;
        my Bool $flag = False;
        if ($n < 11) {
            $flag = False;
        }
        my Int $i = 1;
        my Int ($j, $k) = 0;
        repeat {
            # Tableau des nombres pairs
            if ($i mod 2 == 0) {
                @evens[$j] = $n.Str.comb[$n.Str.chars - $i];
                $j += 1;
            }
            else {
                # Tableau des nombres impairs
                @odds[$j] = $n.Str.comb[$n.Str.chars - $i];
                $k += 1;
            }
            $i += 1;
        } while ($i <= $n.Str.chars);
        $i = 0;
        my Int $n0 = 0;
        my Int $n1 = 0;
        # Somme des nombres pairs
        while ($i < @evens.elems) {
            $n0 += @evens[$i].Int;
            $i += 1;
        }
        # Somme des nombres impairs
        $i = 0;
        while ($i < @odds.elems) {
            $n1 += @odds[$i].Int;
            $i += 1;
        }
        # Différence entre les pairs et les impairs
        if (($n0 - $n1) mod 11 == 0) {
            $flag = True;
        } else {
            $flag = False;
        }
        return $flag;
    }

    # Critère de divisibilité par 25 :
    # le nombre se termine par 00, 25, 50 ou 75
    method is_divisible_by_25(Int:D $integer --> Bool:D) {
        my Int $n = abs($integer);
        my Bool $flag = False;
        if ($n < 25) { $flag = False; return $flag }
        if ($n == 25) { $flag = True; return $flag }
        # Utilise | (the any junction operator) pour éviter une clause when multiple
        # dans un bloc given ... when
        my $strdigits = '00' | '25' | '50' | '75';
        $flag = True if (substr $n.Str, *-2) eq $strdigits;
        return $flag;
    }
}
