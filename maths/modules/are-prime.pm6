unit module Are-prime;

use v6;

=begin pod
Cette classe inclue le rôle 'UsualDivisibilityCriteria'
et utilise la méthode 'list-divisors' de la classe 'IntegerDivisorsListing'
dans sa méthode 1 'have-common-divisors'
pour déterminer si deux nombres sont premiers entre eux
cherchant les diviseurs communs en comparant
les listes de diviseurs de chaque nombre.
Une deuxième méthode 'have-common-divisor' (notez le singulier) utilise
les méthodes du rôle inclus dans la classe 'UsualDivisibilityCriteria'
chargé de coder les critères usuels
de divisibilité de deux nombres (cf. doc du module 'usual-divisibility-criteria.pm6')
ainsi que la classe PGCD.
Chaque méthode renvoie un booléen True si les nombres sont premiers
entre eux ou False dans le cas contraire.
La première méthode trouve tous les diviseurs communs
tandis que la deuxième trouve seulement le premier diviseur commun :
1 (ou -1) si les nombres sont premiers entre eux
ou un nombre supérieur à 1 (ou < -1) s'ils ne le sont pas.
La classe possède deux attributs requis : integer1 et integer2
qui doivent être des entiers différents de 0.
Tous les champs sont en lecture et écriture.
La méthode 2 utilise un paramètre, '$pgcd-algorithm'
visant à spécifier quelle méthode de la classe PGCD
sera utilisée pour rechercher un diviseur commun
à partir du nombre 25 (c'est-à-dire au-delà des critères de divisibilité).
Le paramètre peut prendre l'une des valeurs suivantes
selon l'algorithme de recherche de PGCD que l'on
souhaite appliquer, c'est à dire la méthode
par divisions euclidiennes successives,
ou la méthode par soustractions, ou celle par factorization
ou encore celle par comparaison de la liste des diviseurs :
1) 'euclide' ou ':' ou '1' ou bien
2) 'subtract' ou '_' ou '2' ou bien
3) 'factorization' ou '*' ou '3' ou bien
4) 'divisors-listing' ou '#' ou '4'. 
Par défaut la valeur de ce paramètre est 'euclide'.
=end pod

use usual-divisibility-criteria;
use integer-divisors-listing;
use pgcd;

class ArePrime does UsualDivisibilityCriteria is export {
    has Int $.integer1 is required is rw where { ($_ > 1 || $_ < -1) or die "Valeur de champ invalide: entier > 1 ou < -1 requis !" };
    has Int $.integer2 is required is rw where { ($_ > 1 || $_ < -1) or die "Valeur de champ invalide: entier > 1 ou < -1 requis !" };
    #has Str $.subtract-or-euclide-algo is rw where { ($_ ~~ / subtract || euclide || <[_:]> /) or
    #die "Champ de classe invalide! Attendu : 'subtract', '_', 'euclide' ou ':'." } = 'euclide';

    method have-common-divisors(--> Bool) {
        my Int $int1 = self.integer1;
        my Int $int2 = self.integer2;
        my Int @a = ();
        my Int @b = ();
        my Int @c = ();
        my Bool $flag = False;
        my $list = IntegerDivisorsListing.new(
            # Attribut de IntegerDivisorsListing (par défaut : array)
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
                        say "Les nombres $int1 et $int2 ont un diviseur commun autre que 1 : $i.";
                        $flag = True;
                        push @c, $i;
                    }
                }
            }
        } else {
            for @b -> $i {
                for @a -> $j {
                    if ($i == $j && $i != 1) {
                        say "Les nombres $int1 et $int2 ont un diviseur commun autre que 1 : $i.";
                        $flag = True;
                        push @c, $i;
                    }
                }
            }
        }

        if !$flag {
            say "Les nombres $int1 et $int2 n'ont pas de diviseur commun autre que 1.";
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

    method have-common-divisor(Str $pgcd-algorithm = 'euclide' --> Bool) {
        my Int $dvd = self.integer1;
        my Int $dvs = self.integer2;
        my Int $i;
        my Bool $flag = True;
        
        if self.is_divisible_by_2($dvd) && self.is_divisible_by_2($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 2.";
            return $flag;
        }
        elsif self.is_divisible_by_3($dvd) && self.is_divisible_by_3($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 3.";
            return $flag;
        }
        elsif self.is_divisible_by_4($dvd) && self.is_divisible_by_4($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 4.";
            return $flag;
        }
        elsif self.is_divisible_by_5($dvd) && self.is_divisible_by_5($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 5.";
            return $flag;
        }
        else {
            # Pas de critère de divisibilité particulier pour les nombres
            # 6, 7 et 8
            $i = 6;
            until ($i == 8) {
                if ($dvd %% $i && $dvs %% $i) {
                    say "$dvd et $dvs ont un diviseur commun autre que 1 : $i.";
                    return $flag;
                }
                $i++;
            }
        }
        if self.is_divisible_by_9($dvd) && self.is_divisible_by_9($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 9.";
            return $flag;
        }
        elsif self.is_divisible_by_0_queue($dvd) && self.is_divisible_by_0_queue($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 10.";
            return $flag;
        }
        elsif self.is_divisible_by_11($dvd) && self.is_divisible_by_11($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 11.";
            return $flag;
        }
        else {
            # Pas de critère de divisibilité particulier pour les nombres
            # allant de 12 à 24
            $i = 12;
            until ($i == 24) {
                if ($dvd %% $i && $dvs %% $i) {
                    say "$dvd et $dvs ont un diviseur commun autre que 1 : $i.";
                    return $flag;
                }
                $i++;
            }
        }
        if self.is_divisible_by_25($dvd) && self.is_divisible_by_25($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 25.";
            return $flag;
        }
            
        # Pour les nombres supérieurs à 25
        my $pgcd = PGCD.new(
            integer1 => self.integer1,
            integer2 => self.integer2,
        );
        if ($pgcd-algorithm ~~ / euclide || ':' || 1 /) {
            my Int $p = $pgcd.euclide_algorithm();
            if ($p > 1 || $p < -1) {
                say "$dvd et $dvs ont un diviseur commun autre que 1 : $p.";
                return $flag;
            }
            else {
                say "$dvd et $dvs n'ont pas de diviseur commun autre que 1.";
                return $flag = False;
            }
        }
        elsif ($pgcd-algorithm ~~ / subtraction || _ || 2 /) {
            my Int $p = $pgcd.subtraction_algorithm();
            if ($p > 1 || $p < -1) {
                say "$dvd et $dvs ont un diviseur commun autre que 1 : $p.";
                return $flag;
            }
            else {
                say "$dvd et $dvs n'ont pas de diviseur commun autre que 1.";
                return $flag = False;
            }
        }
        elsif ($pgcd-algorithm ~~ / factorization || '*' || 3 /) {
            my Int $p = $pgcd.factorization_algorithm();
            if ($p > 1 || $p < -1) {
                say "$dvd et $dvs ont un diviseur commun autre que 1 : $p.";
                return $flag;
            }
            else {
                say "$dvd et $dvs n'ont pas de diviseur commun autre que 1.";
                return $flag = False;
            }
        }
        elsif ($pgcd-algorithm ~~ / 'divisors-listing' || '#' || 4 /) {
            my Int $p = $pgcd.divisors-listing_algorithm();
            if ($p > 1 || $p < -1) {
                say "$dvd et $dvs ont un diviseur commun autre que 1 : $p.";
                return $flag;
            }
            else {
                say "$dvd et $dvs n'ont pas de diviseur commun autre que 1.";
                return $flag = False;
            }
        }
    }

}
