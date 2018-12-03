unit module Are-prime;

use v6;

=begin pod
=NAME class B<ArePrime>
=AUTHOR Christian Béloscar
=VERSION 1.0

=for head1
Cette classe est destinée à dire si deux entiers relatifs
sont premiers entre eux, c'est-à-dire
qu'ils ne possèdent pas de diviseurs communs autre que 1.

Cette classe inclue le rôle B<UsualDivisibilityCriteria>
et utilise la méthode B<list-divisors> de la classe B<IntegerDivisorsListing>
dans sa méthode 1 B<have-common-divisors>
pour déterminer si deux nombres sont premiers entre eux
cherchant les diviseurs communs en comparant
les listes de diviseurs de chaque nombre.

Une deuxième méthode B<have-common-divisor> (notez le singulier) utilise
les méthodes du rôle inclus dans la classe B<UsualDivisibilityCriteria>
chargé de coder les critères usuels
de divisibilité de deux nombres (cf. doc du module B<usual-divisibility-criteria.pm6>)
ainsi que la classe PGCD.
Chaque méthode renvoie un booléen b<True> si les nombres sont premiers
entre eux ou B<False> dans le cas contraire.

La première méthode trouve tous les diviseurs communs
tandis que la deuxième trouve seulement le premier diviseur commun :
1 si les nombres sont premiers entre eux
ou un nombre supérieur à 1 s'ils ne le sont pas.
La classe possède deux attributs requis : B<integer1> et B<integer2>
qui doivent être des entiers différents de 0.
Tous les champs sont en lecture et écriture.

La méthode 2 utilise un paramètre, B<have-common-divisor($pgcd-algorithm)>
visant à spécifier quelle méthode de la classe PGCD
sera utilisée pour rechercher un diviseur commun
à partir du nombre 25 (c'est-à-dire au-delà des critères de divisibilité).
Le paramètre peut prendre l'une des valeurs suivantes
selon l'algorithme de recherche de PGCD que l'on
souhaite appliquer, c'est à dire la méthode
par divisions euclidiennes successives,
ou la méthode par soustractions, ou celle par factorization
ou encore celle par comparaison de la liste des diviseurs :

=item 1) 'euclide' ou 'e' ou ':' ou '÷' ou bien
=item 2) 'subtract' ou 's' ou '-' ou '−' ou bien
=item 3) 'factorization' ou 'f' ou '*' ou '×' ou bien
=item 4) 'divisors-listing' ou 'd' ou '#' ou '/'. 
Par défaut la valeur de ce paramètre est 'euclide'.

La classe possède en outre un attribut requis destiné à écrire
dans un fichier les informations qui apparaissent à l'écran
et qui décrivent les différentes étapes des opérations.
Il s'agit de B<Teeput::Tput $t is required is rw> :
il faut lui passer un objet de type B<Teeput::Tput> du module
B<teeput.pm6>. Référez-vous à la doc de ce module
pour plus d'informations.
=end pod

use usual-divisibility-criteria;
use teeput;
use integer-divisors-listing;
use pgcd;

class ArePrime does UsualDivisibilityCriteria is export {
    has Teeput::Tput $.t is required is rw;

    has Int $.integer1 is required is rw where { ($_ != 0) or die "Valeur de champ invalide: entier relatif différent de 0 requis !" };
    has Int $.integer2 is required is rw where { ($_ != 0) or die "Valeur de champ invalide: entier relatif différent de 0 requis !" };

    method have-common-divisors(--> Bool) {
        my Int $int1 = $!integer1;
        my Int $int2 = $!integer2;
        my Int @a = ();
        my Int @b = ();
        my Int @c = ();
        my Bool $flag = False;

        my $list = IntegerDivisorsListing.new(
            # Attribut de IntegerDivisorsListing (par défaut : array)
            array-or-hash => '@',
        );
        @a = $list.list-divisors($int1);
        $!t.tput();
        @b = $list.list-divisors($int2);
        $!t.tput();
        if (@a.elems < @b.elems || @a.elems == @b.elems) {
            for @a -> $i {
                for @b -> $j {
                    if ($i == $j && $i != 1) {
                        $!t.tput: "Les nombres $int1 et $int2 ont un diviseur commun autre que 1 : $i.";
                        $flag = True;
                        push @c, $i;
                    }
                }
            }
        } else {
            for @b -> $i {
                for @a -> $j {
                    if ($i == $j && $i != 1) {
                        $!t.tput: "Les nombres $int1 et $int2 ont un diviseur commun autre que 1 : $i.";
                        $flag = True;
                        push @c, $i;
                    }
                }
            }
        }

        if !$flag {
            $!t.tput: "Les nombres $int1 et $int2 n'ont pas de diviseurs communs autre que 1.";
            $!t.tput: @a;
            $!t.tput: @b;
            push @c, 1;
            $!t.tput: @c;
            return $flag;
        }
        $!t.tput: @a;
        $!t.tput: @b;
        $!t.tput: @c;
        return $flag;
    }

    method have-common-divisor(Str $pgcd-algorithm = 'euclide' --> Bool) {
        my Int $dvd = self.integer1;
        my Int $dvs = self.integer2;
        my Int $i;
        my Int @a = ();
        my Bool $flag = True;
        
        if self.is_divisible_by_2($dvd) && self.is_divisible_by_2($dvs) {
            $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : 2.";
            return $flag;
        }
        elsif self.is_divisible_by_3($dvd) && self.is_divisible_by_3($dvs) {
            $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : 3.";
            return $flag;
        }
        elsif self.is_divisible_by_4($dvd) && self.is_divisible_by_4($dvs) {
            $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : 4.";
            return $flag;
        }
        elsif self.is_divisible_by_5($dvd) && self.is_divisible_by_5($dvs) {
            $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : 5.";
            return $flag;
        }
        else {
            # Pas de critère de divisibilité particulier pour les nombres
            # 6, 7 et 8
            $i = 6;
            until ($i == 8) {
                if ($dvd %% $i && $dvs %% $i) {
                    $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : $i.";
                    return $flag;
                }
                $i++;
            }
        }
        if self.is_divisible_by_9($dvd) && self.is_divisible_by_9($dvs) {
            $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : 9.";
            return $flag;
        }
        elsif self.is_divisible_by_0_queue($dvd) && self.is_divisible_by_0_queue($dvs) {
            $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : 10.";
            return $flag;
        }
        elsif self.is_divisible_by_11($dvd) && self.is_divisible_by_11($dvs) {
            $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : 11.";
            return $flag;
        }
        else {
            # Pas de critère de divisibilité particulier pour les nombres
            # allant de 12 à 24
            $i = 12;
            until ($i == 24) {
                if ($dvd %% $i && $dvs %% $i) {
                    $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : $i.";
                    return $flag;
                }
                $i++;
            }
        }
        if self.is_divisible_by_25($dvd) && self.is_divisible_by_25($dvs) {
            $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : 25.";
            return $flag;
        }
            
        # Pour les nombres supérieurs à 25
        my $pgcd = PGCD.new(
            t => $!t,
            integer1 => $!integer1,
            integer2 => $!integer2,
        );
        if ($pgcd-algorithm ~~ / euclide || 'e' || ':' || '÷' /) {
            my Int $p = $pgcd.euclide_algorithm();
            if ($p > 1 || $p < 1) {
                $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : $p.";
                return $flag;
            }
            else {
                $!t.tput: "$dvd et $dvs n'ont pas de diviseurs communs autre que 1.";
                return $flag = False;
            }
        }
        elsif ($pgcd-algorithm ~~ / subtraction || 's' || '-' || '−' /) {
            my Int $p = $pgcd.subtraction_algorithm();
            if ($p > 1 || $p < 1) {
                $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : $p.";
                return $flag;
            }
            else {
                $!t.tput: "$dvd et $dvs n'ont pas de diviseurs communs autre que 1.";
                return $flag = False;
            }
        }
        elsif ($pgcd-algorithm ~~ / factorization || 'f' || '*' || '×' /) {
            my Int $p = $pgcd.factorization_algorithm();
            if ($p > 1 || $p < 1) {
                $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : $p.";
                return $flag;
            }
            else {
                $!t.tput: "$dvd et $dvs n'ont pas de diviseurs communs autre que 1.";
                return $flag = False;
            }
        }
        elsif ($pgcd-algorithm ~~ / 'divisors-listing' || 'd' || '#' || '/' /) {
            my Int $p = $pgcd.divisors-listing_algorithm();
            if ($p > 1 || $p < 1) {
                $!t.tput: "$dvd et $dvs ont un diviseur commun autre que 1 : $p.";
                return $flag;
            }
            else {
                $!t.tput: "$dvd et $dvs n'ont pas de diviseurs communs autre que 1.";
                return $flag = False;
            }
        }
    }

}
