unit module pgcd;

use v6;

=begin pod
=NAME class PGCD in B<algomaths> Perl6 modules : maths/modules/pm6/pgcd.pm6
=AUTHOR https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.16

=for head1
Ce module contient la classe PGCD qui dispose du rôle 'PrimeFactors'.

Il est destiné à déterminer le PGCD (plus grand commun diviseur) de deux entiers,
B<integer1> et B<integer2> de type B<Int> non nuls qui sont des attributs requis de la classe.
Il utilise pour cela quatre méthodes distinctes au choix :
=item l'algorithme consistant à établir la liste des diviseurs de
chacun des nombres et de prendre le plus grand nombre commun :
B<divisors-listing_algorithm>(-->Int);
=item l'algorithme des soustractions : B<subtraction_algorithm>(--> Int);
=item l'algorithme d'Euclide (par divisions euclidiennes) : B<euclide_algorithm>(--> Int);
=item enfin l'algorithme consistant à décomposer les nombres
en facteurs premiers et extraire leurs facteurs communs : B<factorization_algorithm>(--> Int).
Les quatre méthodes renvoient un B<Int> qui est le PGCD trouvé.

La classe possède en outre un attribut requis
hérité du rôle B<PrimeFactors> destiné à écrire
dans un fichier les informations qui apparaissent à l'écran
et qui décrivent les différentes étapes des opérations.
Il s'agit de B<Teeput::Tput $t is required is rw> :
il faut lui passer un objet de type B<Teeput::Tput> du module
B<teeput.pm6>. Référez-vous à la doc de ce module
pour plus d'informations.
=end pod

use integer-divisors-listing;
use common-arrays-elements;
use prime-factors;

class PGCD does PrimeFactors is export {
    # Champ défini dans le rôle
    #has Teeput::Tput $.t is required is rw;

    has Int $.integer1 is required is rw where { ($_ != 0) or die "Valeur de champ invalide! Entier relatif différent de 0 requis." };
    has Int $.integer2 is required is rw where { ($_ != 0) or die "Valeur de champ invalide! Entier relatif différent de 0 requis." };

=begin pod
=for head2
Méthode divisors-listing-algorithm(--> Int) {}
=for head3
Comment déterminer le PGCD de deux nombres entiers connaissant
l'ensemble des diviseurs de chacun des deux nombres :

▲ on établit la liste des diviseurs communs des deux nombres;

▲ on repère dans cette liste le plus grand nombre, c'est le PGCD cherché.
=end pod

    method divisors-listing_algorithm(--> Int) {
        my (@a, @b, @c) = ();

        $!t.tput: "− Calcul du PGCD : Utilisation de l'algorithme de comparaison des listes de tous les diviseurs −";
        my $divisors-listing = IntegerDivisorsListing.new(
            t => $!t,
            array-or-hash => '@',
        );
        $!t.tput: "Diviseurs de $!integer1 :";
        # Palier les effets de bord des nombres négatifs
        @a = $divisors-listing.list-divisors(abs($!integer1));

        $!t.tput: "Diviseurs de $!integer2 :";
        @b = $divisors-listing.list-divisors(abs($!integer2));

        @c = common-arrays-elements(@a, @b);
        $!t.tprint: "Les diviseurs communs à $!integer1 et $!integer2 sont : ";
        $!t.tput: "@c[]";
        $!t.tprint: "\n";
        $!t.tput: "Le PGCD de $!integer1 et $!integer2 est @c[@c.end].";
        return @c[@c.end];
    }

=begin pod
=for head2
Méthode factorization_algorithm(--> Int) {}
=for head3
Comment déterminer le PGCD de deux nombres à l'aide de leur
décomposition en facteurs premiers :

▲ Deux nombres peuvent avoir des facteurs en commun. Le plus grand commun diviseur
(PGCD) est, comme son nom l'indique, leur plus grand facteur commun.
Le PGCD se déduit directement des décompositions en facteurs premiers des deux
nombres. Nous avons effectué les décompositions en facteurs premiers des nombres :
180 = 2² × 3² × 5; 585 = 3² × 5 × 13; 3003 = 3 × 7 × 11 × 13.

▲ De là, nous obtenons :
PGCD(180;585) = PGCD(2² × 3²  5;3² × 5 × 13) = 3² × 5 = 45
PGCD(180;3003) = PGCD(2² × 3² × 5;3 × 7 × 11 × 13) = 3
PGCD(585;3003) = PGCD(3² × 5 × 13;3 × 7 × 11 × 13) = 3 × 13 = 39.

▲ UNE BONNE IDEE! : il existe une méthode pour déterminer le PGCD de deux nombres
qui ne requiert pas leurs décompositions en facteurs premiers et qui souvent
s'avère plus rapide. L'idée de base est que le PGCD de deux nombres est aussi
forcément un diviseur de leur différence. Voyez-vous pourquoi il en est ainsi ?

▲ Le PGCD(4352 ; 4342) doit aussi être un facteur de 4352 – 4342 = 10. Or 10 n'a
que deux facteurs premiers, 2 et 5. Il est clair que 5 n'est pas un facteur des
deux nombres, par conséquent seul 2 l'est; d'ou PGCD(4352 ; 4342) = 2.
=end pod

    method factorization_algorithm(--> Int) {
        # Palier les effets de bord des nombres négatifs
        my Int $int1 = $!integer1;
        my Int $int2 = $!integer2;
        my %factors1{Int};
        my %factors2{Int};
        my Int @values1 = ();
        my Int @values2 = ();
        $!t.tput: "− Calcul du PGCD : Utilisation de l'algorithme de factorisation en facteurs premiers −";
        $!t.tput: "Facteurs premiers de $int1 :";
        # Méthode de prime-factors.
        %factors1 = $.breakdown($int1);
        @values1 = %factors1.values.sort;
        $!t.tput: "Facteurs premiers de $int2 :";
        %factors2 = $.breakdown($int2);
        @values2 = %factors2.values.sort;
        my Int @factors = ();
        my Int $i = 0;
        my Int $count = 0;
        my Int $int = 1;

        if (@values1.elems > @values2.elems) {
            repeat {
                $int = @values2[$count] if ($count < @values2.elems);

                $i = 0;
                my Int $count1 = 0;
                while ($i < @values2.elems) {
                    if (@values2[$i] == $int) {
                        $count1++;
                    }
                    $i++;
                }
                $count += $count1;
                $i = 0;
                my Int $count2 = 0;
                while ($i < @values1.elems) {
                    if (@values1[$i] == $int) {
                        $count2++;
                    }
                    $i++;
                }
                $i = 0;
                if ($count1 <= $count2) {
                    loop ($i = 1; $i <= $count1; $i++) {
                        push @factors, $int;
                    }
                } 
                else {
                    loop ($i = 1; $i <= $count2; $i++) {
                        push @factors, $int;
                    }
                }
            } until ($count >= @values2.elems);
        }
        else {
            repeat {
                $int = @values1[$count] if ($count < @values1.elems);
            
                $i = 0;
                my Int $count1 = 0;
                while ($i < @values1.elems) {
                    if (@values1[$i] == $int) {
                        $count1++;
                    }
                    $i++;
                }
                $count += $count1;
                $i = 0;
                my Int $count2 = 0;
                while ($i < @values2.elems) {
                    if (@values2[$i] == $int) {
                        $count2++;
                    }
                    $i++;
                }
                $i = 0;
                if ($count1 <= $count2) {
                    loop ($i = 1; $i <= $count1; $i++) {
                        push @factors, $int;
                    }
                } 
                else {
                    loop ($i = 1; $i <= $count2; $i++) {
                        push @factors, $int;
                    }
                }
            } until ($count >= @values1.elems);
        }
        
        $!t.tprint: "Facteurs communs à $int1 et $int2 : ";
        $!t.tput: "@factors[]";
        $!t.tprint: "PGCD($int1 ; $int2) : " if (@factors.elems > 1);
        $i = 0;
        while $i < @factors.elems - 1 {
            $!t.tprint: "@factors[$i] × ";
            $i++;
        }
        if (@factors.elems == 1) {
            $!t.tprint: "PGCD($int1 ; $int2)";
        }
        elsif (@factors.elems == 0) {
            $!t.tput: "pas de facteurs communs.";
        }
        else {
            $!t.tprint: "@factors[$i]";
        }
        $i = 0;
        my Int $factor = 1;
        while $i < @factors.elems {
            $factor *= @factors[$i];
            $i++;
        }
        $!t.tput: " = $factor." if ($factor > 1);
        return $factor;
    }

=begin pod    
=for head2
Méthode subtraction_algorithm(--> Int) {}
=for head3
Pour déterminer le PGCD de deux nombres entiers par l'algorithme
des soustractions :

▲ on calcule la différence des deux nombres;

▲ on garde le plus petit des deux nombres et la différence trouvée et on écrit
que le PGCD cherché est leur PGCD;

▲ on recommence le même procédé avec les deux nouveaux nombres jusqu'à l'obtention
de deux nombres égaux, le PGCD est égal à leur valeur.
La méthode s'appuie sur les propriétés suivantes : a et b désignant deux entiers,
si a = b, alors PGCD(a;b) = a = b et si a > b, PGCD(a;b) = PGCD(b;a-b).
=end pod

    method subtraction_algorithm(--> Int) {
        # Parer les nombres négatifs avec leurs effets de bord
        my Int $x = abs($!integer1);
        my Int $y = abs($!integer2);
        $!t.tput: "− Calcul du PGCD : Utilisation de l'algorithme des soustractions −";
        if ($x < $y) {
            # Intervertir $x et $y
            ($x, $y) = ($y, $x);
        }
        my Int $z = $x - $y;
        # Si le dividende et le diviseur sont égaux
        if ($x == $y) {
            $!t.tput: "PGCD($x ; $y) = $x.";
            return $x;
        }
        loop {
            if ($y > $z) {
                $!t.tput: "$x - $y = $z d'où PGCD($x ; $y) = PGCD($y ; $z)";
                $x = $y; $y = $z;
            }
            elsif ($y < $z) {
                $!t.tput: "$x - $y = $z d'où PGCD($x ; $y) = PGCD($z ; $y)";
                $x = $z;
            }
            elsif ($y == $z) {
                $!t.tput: "$x - $y = $z d'où PGCD($x ; $y) = PGCD($y ; $z)";
                $!t.tput: "or PGCD($y ; $z) = $z";
                $!t.tput: "On est arrivé à deux nombres égaux, donc PGCD($.integer1 ; $.integer2) = $z.";
                return $z;
            }
            $z = $x - $y;
        }
    }

=begin pod
=for head2
Méthode euclide_algorithm(--> Int) {}
=for head3
Comment déterminer le PGCD de deux nombres entiers par l'algorithme
d'Euclide ?

▲ on effectue la division euclidienne du plus grand nombre par le plus petit;

▲ on conserve le plus petit des deux nombres et le reste trouvé et on écrit que
le PGCD cherché est leur PGCD;

▲ on continue ainsi jusqu'à l'obtention d'un reste nul, le PGCD est le dernier
reste non nul.
La méthode s'appuie sur la propriété suivante : a et b désignant deux entiers,
si a > b, PGCD(a;b) = PGCD(b;r) où r est le reste de la division euclidienne de
a par b.
=end pod

    method euclide_algorithm(--> Int) {
        # Palier les effets de bord des nombres négatifs
        my Int $dividend = abs($!integer1);
        my Int $divisor = abs($!integer2);
        $!t.tput: "− Calcul du PGCD : Utilisation de l'algorithme d'Euclide −";
        if ($dividend < $divisor) {
            # Intervertir $x et $y
            ($dividend, $divisor) = ($divisor, $dividend);
        }
        my Int $quotient = $dividend div $divisor;
        my Int $rest = $dividend mod $divisor;
        my Int $div = $divisor;
        my Int $r = $rest;
        my Int $pgcd;
        # Si le dividende et le diviseur sont égaux
        if $dividend == $divisor {
            $!t.tput: "PGCD($dividend ; $divisor) = $dividend.";
            return $dividend;
        }
        repeat {
            if ($rest == 0) {
                $pgcd = $divisor;
            }
            elsif ($div > $r) {
                $div = $divisor;
                $r = $rest;
                $quotient = $div div $r;
                $rest = $div mod $r;
                if ($rest != 0) {
                    $pgcd = $rest;
                } else {
                    $pgcd = $r;
                }
                $!t.tput: "PGCD($dividend ; $divisor) = PGCD($div ; $r)";
                $dividend = $div;
                $divisor = $r;
            }
            elsif ($r > $div) {
                $div = $rest;
                $r = $divisor;
                $quotient = $r div $div;
                $rest = $r mod $div;
                if ($rest != 0) {
                    $pgcd = $rest;
                } else {
                    $pgcd = $div;
                }
                $!t.tput: "PGCD($dividend ; $divisor) = PGCD($div ; $r)";
                $dividend = $r;
                $divisor = $div;
            }
            elsif ($divisor == $rest) {
                $rest = 0;
                $pgcd = 1;
            }
        } until ($rest == 0);

        $!t.tput: "Le reste de la division de $dividend par $divisor est nul,";
        $!t.tput: "donc PGCD($!integer1 ; $!integer2) = $pgcd.";
        return $pgcd;
    }
}
