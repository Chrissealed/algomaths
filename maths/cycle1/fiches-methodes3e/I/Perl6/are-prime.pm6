unit module Are-prime;

use v6;
use pgcd;

=begin pod
Cette classe hérite de la classe PGCD et utilise la méthode
'list-divisors' de la classe 'IntegerDivisorsListing'
(dont hérite la classe PGCD) dans sa méthode 1 'have-common-divisors'
pour déterminer si deux nombres sont premiers entre eux
cherchant les diviseurs communs en comparant
les listes de diviseurs de chaque nombre.
Une deuxième méthode 'have-common-divisor' (notez le singulier) utilise
les méthodes du rôle inclus dans la classe 'IntegerDivisorsListing' :
'UsualDivisibilityCriteria' chargé de coder les critères usuels
de divisibilité de deux nombres (cf. doc de 'UsualDivisibilityCriteria).
Chaque méthode renvoie un booléen True si les nombres sont premiers
entre eux ou False dans le cas contraire.
La première méthode trouve tous les diviseurs communs
tandis que la deuxième trouve seulement le premier diviseur commun :
1 si les nombres sont premiers entre eux
ou un nombre supérieur à 1 s'ils ne le sont pas.
La classe possède deux attributs : integer1 et integer2
qui doivent être des entiers supérieurs à 0
et un attribut subtract-or-euclide-algo qui peut prendre
l'une des valeurs 'subtract' ou '_' ou bien
'euclide' ou ':' selon l'algorithme de recherche de PGCD que l'on
souhaite appliquer, c'est à dire la méthode par soustractions
successives ou la méthode par divisions euclidiennes successives,
ceci pour la méthode 2 'have-common-divisor' uniquement.
Tous les champs sont en lecture et écriture.
=end pod

class ArePrime is PGCD is export {
    has Int $.integer1 is rw where {$_ > 0 or die "Valeur de champ invalide: entier supérieur à 0 requis !"};
    has Int $.integer2 is rw where {$_ > 0 or die "Valeur de champ invalide: entier supérieur à 0 requis !"};
    has Str $.subtract-or-euclide-algo is rw where { ($_ ~~ / subtract || euclide || <[_:]> /) or
    die "Champ de classe invalide! Attendu : 'subtract', '_', 'euclide' ou ':'." };

    method have-common-divisors(--> Bool) {
        my $int1 = self.integer1;
        my $int2 = self.integer2;
        my Int @a = ();
        my Int @b = ();
        my Int @c = ();
        my Bool $flag = True;
        my $list = PGCD.new(
            array-or-hash => '@',
        );
        @a = $list.list-divisors($int1);
        say();
        @b = $list.list-divisors($int2);
        say();
        if (@a.elems < @b.elems || @a.elems == @b.elems) {
            for @a -> $i {
                for @b -> $j {
                    if ($i == $j && $i != 1) {
                        $flag = False;
                        say "Les nombres $int1 et $int2 ont un diviseur commun autre que 1 : $i;";
                        push @c, $i;
                    }
                }
            }
        } else {
            for @b -> $i {
                for @a -> $j {
                    if ($i == $j && $i != 1) {
                        $flag = False;
                        say "Les nombres $int1 et $int2 ont un diviseur commun autre que 1 : $i;";
                        push @c, $i;
                    }
                }
            }
        }

        if $flag {
            say "Les nombres $int1 et $int2 n'ont pas de diviseur commun autre que 1;";
            say @a;
            say @b;
            push @c, 1;
            say @c;
            return $flag;
        }
        say @a;
        say @b;
        say @c;
        return $flag;
    }

    method have-common-divisor(--> Bool) {
        my Int $dvd = self.integer1;
        my Int $dvs = self.integer2;
        my Int $i;
        my Bool $flag = True;
        my $pgcd = PGCD.new(
            integer1 => $dvd,
            integer2 => $dvs,
            dividend => $dvd,
            divisor => $dvs,
        );
        if $pgcd.is_divisible_by_2($dvd) && $pgcd.is_divisible_by_2($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 2;";
            return $flag = False;
        }
        elsif $pgcd.is_divisible_by_3($dvd) && $pgcd.is_divisible_by_3($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 3;";
            return $flag = False;
        }
        elsif $pgcd.is_divisible_by_4($dvd) && $pgcd.is_divisible_by_4($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 4;";
            return $flag = False;
        }
        elsif $pgcd.is_divisible_by_5($dvd) && $pgcd.is_divisible_by_5($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 5;";
            return $flag = False;
        }
        else {
            # Pas de critère de divisibilité particulier pour les chiffres
            # 6, 7 et 8
            $i = 6;
            until ($i == 8) {
                if ($dvd %% $i && $dvs %% $i) {
                    say "$dvd et $dvs ont un diviseur commun autre que 1 : $i;";
                    return $flag = False;
                }
                $i++;
            }
        }
        if $pgcd.is_divisible_by_9($dvd) && $pgcd.is_divisible_by_9($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 9;";
            return $flag = False;
        }
        elsif $pgcd.is_divisible_by_0_queue($dvd) && $pgcd.is_divisible_by_0_queue($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 10;";
            return $flag = False;
        }
        elsif $pgcd.is_divisible_by_11($dvd) && $pgcd.is_divisible_by_11($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 11;";
            return $flag = False;
        }
        else {
            # Pas de critère de divisibilité particulier pour les chiffres
            # allant de 12 à 24
            $i = 12;
            until ($i == 24) {
                if ($dvd %% $i && $dvs %% $i) {
                    say "$dvd et $dvs ont un diviseur commun autre que 1 : $i;";
                    return $flag = False;
                }
                $i++;
            }
        }
        if $pgcd.is_divisible_by_25($dvd) && $pgcd.is_divisible_by_25($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 25;";
            return $flag = False;
        }
            
        if (self.subtract-or-euclide-algo ~~ / subtract || _ /) {
            my Int $p = $pgcd.subtraction_algorithm();
            if ($p > 1) {
                say "$dvd et $dvs ont un diviseur commun autre que 1 : $p;";
                return $flag = False;
            }
            elsif ($p == 1) {
                return $flag = True;
            }
        }
        elsif (self.subtract-or-euclide-algo ~~ / euclide || \: /) {
            my Int $p = $pgcd.euclide_algorithm();
            if ($p > 1) {
                say "$dvd et $dvs ont un diviseur commun autre que 1 : $p;";
                return $flag = False;
            }
            elsif ($p == 1) {
                return $flag = True;
            }
        }
    }
}
