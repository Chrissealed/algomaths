unit module Are-prime;

use pgcd;

=begin pod
Cette classe hérite de la classe PGCD et utilise la méthode
'list-divisors' de la classe 'IntegerDivisorsListing'
(dont hérite la classe PGCD) dans sa méthode 1 'have-common-divisors'
pour déterminer si deux nombres sont premiers entre eux
cherchant les diviseurs communs en comparant
les listes de diviseurs de chaque nombre.
Une deuxième méthode 'have-common-divisor' utilise
les méthodes du rôle inclus dans la classe IntegerDivisorsListing
'UsualDivisibilityCriteria' chargé de coder les critères usuels
de divisibilité de deux nombres (cf. doc de 'UsualDivisibilityCriteria).
La première méthode renvoie un tableau de tous les diviseurs communs
tandis que la deuxième renvoie le premier diviseur commun trouvé :
1 si les nombres sont premiers entre eux
ou un nombre supérieur à 1 s'ils ne le sont pas.
Elle possède deux attributs : integer1 et integer2
qui doivent être des entiers supérieurs à 0
et un attribut subtract-or-euclide-algo qui peut prendre
l'une des valeurs 'subtract' ou '_' ou bien
'euclide' ou ':' selon l'algorithme de recherche de PGCD que l'on
souhaite appliquer, c'est à dire la méthode par soustractions
successives ou la méthode par divisions euclidiennes successives.
Les champs sont en lecture et écriture et les deux premiers
sont requis pour construire la classe tandis que le troisième
est facultatif, requis uniquement pour utiliser la méthode
'have-common-divisor' qui utilise ces algorithmes à partir
du nombre 26 s'il n'a pas été trouvé de diviseur commun parmi
les nombres précédant celui-ci, ces nombres étant soit calculés directement
soit calculés en utilisant les critères de divisibilité usuels
pour ceux qui en possèdent.
=end pod

class ArePrime is PGCD is export {
    has Int $.integer1 is rw where {$_ > 0 or die "Valeur de champ invalide: entier supérieur à 0 requis !"};
    has Int $.integer2 is rw where {$_ > 0 or die "Valeur de champ invalide: entier supérieur à 0 requis !"};
    has Str $.subtract-or-euclide-algo is rw where { ($_ ~~ / subtract || euclide || <[_:]> /) or
    die "Champ de classe invalide! Attendu : 'subtract', '_', 'euclide' ou ':'." };

    method have-common-divisors(--> Array) {
        my $int1 = self.integer1;
        my $int2 = self.integer2;
        my Int @a = ();
        my Int @b = ();
        my Int @c = ();
        my $flag = True;
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
                        say "ils ne sont donc pas premiers entre eux.";
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
                        say "ils ne sont donc pas premiers entre eux.";
                        push @c, $i;
                    }
                }
            }
        }

        if $flag {
            say "Les nombres $int1 et $int2 n'ont pas de diviseur commun autre que 1;";
            say @a;
            say @b;
            say "ils sont donc premiers entre eux.";
            push @c, 1;
            return @c;
        }
        say @a;
        say @b;
        return @c;
    }

    method have-common-divisor(--> Int) {
        my Int $dvd = self.integer1;
        my Int $dvs = self.integer2;
        my Int $i;
        my $pgcd = PGCD.new(
            integer1 => $dvd,
            integer2 => $dvs,
            dividend => $dvd,
            divisor => $dvs,
        );
        if $pgcd.is_divisible_by_2($dvd) && $pgcd.is_divisible_by_2($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 2;";
            say "$dvd et $dvs ne sont donc pas premiers entre eux.";
            return 2;
        }
        elsif $pgcd.is_divisible_by_3($dvd) && $pgcd.is_divisible_by_3($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 3;";
            say "$dvd et $dvs ne sont donc pas premiers entre eux.";
            return 3;
        }
        elsif $pgcd.is_divisible_by_4($dvd) && $pgcd.is_divisible_by_4($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 4;";
            say "$dvd et $dvs ne sont donc pas premiers entre eux.";
            return 4;
        }
        elsif $pgcd.is_divisible_by_5($dvd) && $pgcd.is_divisible_by_5($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 5;";
            say "$dvd et $dvs ne sont donc pas premiers entre eux.";
            return 5;
        }
        else {
            # Pas de critère de divisibilité particulier pour les chiffres
            # 6, 7 et 8
            $i = 6;
            until ($i == 8) {
                if ($dvd %% $i && $dvs %% $i) {
                    say "$dvd et $dvs ont un diviseur commun autre que 1 : $i;";
                    say "$dvd et $dvs ne sont donc pas premiers entre eux.";
                    return $i;
                }
                $i++;
            }
        }
        if $pgcd.is_divisible_by_9($dvd) && $pgcd.is_divisible_by_9($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 9;";
            say "$dvd et $dvs ne sont donc pas premiers entre eux.";
            return 9;
        }
        elsif $pgcd.is_divisible_by_0_queue($dvd) && $pgcd.is_divisible_by_0_queue($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 10;";
            say "$dvd et $dvs ne sont donc pas premiers entre eux.";
            return 10;
        }
        elsif $pgcd.is_divisible_by_11($dvd) && $pgcd.is_divisible_by_11($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 11;";
            say "$dvd et $dvs ne sont donc pas premiers entre eux.";
            return 11;
        }
        else {
            # Pas de critère de divisibilité particulier pour les chiffres
            # allant de 12 à 24
            $i = 12;
            until ($i == 24) {
                if ($dvd %% $i && $dvs %% $i) {
                    say "$dvd et $dvs ont un diviseur commun autre que 1 : $i;";
                    say "$dvd et $dvs ne sont donc pas premiers entre eux.";
                    return $i;
                }
                $i++;
            }
        }
        if $pgcd.is_divisible_by_25($dvd) && $pgcd.is_divisible_by_25($dvs) {
            say "$dvd et $dvs ont un diviseur commun autre que 1 : 25;";
            say "$dvd et $dvs ne sont donc pas premiers entre eux.";
            return 25;
        }
            
        if (self.subtract-or-euclide-algo ~~ / subtract || _ /) {
            my Int $p = $pgcd.subtraction_algorithm();
            if ($p > 1) {
                say "$dvd et $dvs ont un diviseur commun autre que 1 : $p;";
                say "$dvd et $dvs ne sont donc pas premiers entre eux.";
                return $p;
            }
            elsif ($p == 1) {
                say "$dvd et $dvs sont premiers entre eux car ils n'ont pas de diviseur commun autre que 1.";
                return $p;
            }
        }
        elsif (self.subtract-or-euclide-algo ~~ / euclide || \: /) {
            my Int $p = $pgcd.euclide_algorithm();
            if ($p > 1) {
                say "$dvd et $dvs ont un diviseur commun autre que 1 : $p;";
                say "$dvd et $dvs ne sont donc pas premiers entre eux.";
                return $p;
            }
            elsif ($p == 1) {
                say "$dvd et $dvs sont premiers entre eux car ils n'ont pas de diviseur commun autre que 1.";
                return $p;
            }
        }
    }
}
