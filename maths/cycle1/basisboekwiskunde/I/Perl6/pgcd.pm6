unit module pgcd;

use integer-divisors-listing;
use common-arrays-elements;
use prime-factors;

=begin pod
Ce module contient la classe PGCD qui hérite de IntegerDivisorsListing du fichier
du module 'integer-divisors-listing.pm6' et utilise le module 'common-arrays-elements.pm6'.
Il est destiné à déterminer le PGCD (plus grand commun diviseur) de deux entiers,
integer1 et integer2 de type Int qui sont des attributs de la classe
devant être supérieur ou égal à 0.
Il utilise pour cela trois méthodes distinctes au choix :
l'algorithme consistant à établir la liste des diviseurs de
chacun des nombres et de prendre le plus grand nombre commun;
l'algorithme des soustractions.
Enfin l'algorithme d'Euclide (par divisions euclidiennes)
pour lequel sont prévus deux attributs dédiés : dividend et divisor de type Int
le diviseur devant être supérieur à 0 et inférieur ou égal au dividende.
=end pod

class PGCD is IntegerDivisorsListing does PrimeFactors is export {
    has Int $.integer1 is rw where {$_ > 0 or die "Valeur de champ invalide: entier > 0 requis !"};
    has Int $.integer2 is rw where {$_ > 0 or die "Valeur de champ invalide: entier > 0 requis !"};
    
    has Int $.dividend is rw where {$_ >= 0 or die "Valeur de champ invalide: dividende >= 0 requis !"};
    # Virtual method call $.dividend may not be used on partially constructed object
    # (maybe you mean $!dividend for direct attribute access here?)
    has Int $.divisor  is rw where {$_ > 0 or die "Champ de classe invalide: division par 0 interdite !"};

=begin pod
###################################################################################
Comment déterminer le PGCD de deux nombres entiers connaissant
l'ensemble des diviseurs de chacun des deux nombres :
###################################################################################
▲ on établit la liste des diviseurs communs des deux nombres;
▲ on repère dans cette liste le plus grand nombre, c'est le PGCD cherché.
###################################################################################
=end pod

    method divisors-listing_algorithm(--> Int) is export(:divlistalgo) {
        my (@a, @b, @c) = ();

        my $divisors-listing = IntegerDivisorsListing.new(
            array-or-hash => '@',
        );
        say "Diviseurs de $!integer1 :";
        @a = $divisors-listing.list-divisors(self.integer1);

        say "Diviseurs de $!integer2 :";
        @b = $divisors-listing.list-divisors(self.integer2);

        @c = common-arrays-elements(@a, @b);
        say "Les diviseurs communs à $!integer1 et $!integer2 sont :";
        say @c;
        say "Le PGCD de $!integer1 et $!integer2 est ", @c[@c.end], ".";
        return @c.end;
    }

=begin pod
###################################################################################
Comment déterminer le PGCD de deux nombres à l'aide de leur décomposi-
tion en facteurs premiers :
###################################################################################
▲ Deux nombres peuvent avoir des facteurs en commun. Le plus grand commun diviseur
(PGCD) est, comme son nom l'indique, leur plus grand facteur commun.
Le PGCD se déduit directement des décompositions en facteurs premiers des deux
nombres. Nous avons effectué les décompositions en facteurs premiers des nombres :
180 = 2² × 3² × 5; 585 = 3² × 5 × 13; 3003 = 3 × 7 × 11 × 13.
▲ De là, nous obtenons :
PGCD(180;585) = PGCD(2² × 3²  5;3² × 5 × 13) = 3² × 5 = 45
PGCD(180;3003) = PGCD(2² × 3² × 5;3 × 7 × 11 × 13) = 3
PGCD(585;3003) = PGCD(3² × 5 × 13;3 × 7 × 11 × 13) = 3 × 13 = 39.
###################################################################################
▲ UNE BONNE IDEE! : il existe une méthode pour déterminer le PGCD de deux nombres
qui ne requiert pas leurs décompositions en facteurs premiers et qui souvent
s'avère plus rapide. L'idée de base est que le PGCD de deux nombres est aussi
forcément un diviseur de leur différence. Voyez-vous pourquoi il en est ainsi ?
▲ Le PGCD(4352 ; 4342) doit aussi être un facteur de 4352 – 4342 = 10. Or 10 n'a
que deux facteurs premiers, 2 et 5. Il est clair que 5 n'est pas un facteur des
deux nombres, par conséquent seul 2 l'est; d'ou PGCD(4352 ; 4342) = 2.
=end pod

    method factorization_algorithm(--> Array) is export(:factoralgo) {
        my Int $i = $!integer1;
        my Int $j = $!integer2;
        my %factors1{Int};
        my %factors2{Int};
        my Int @keys1 = ();
        my Int @keys2 = ();
        say "Facteurs premiers de $!integer1 :";
        # Méthode de prime-factors.
        %factors1 = self.breakdown($i);
        @keys1 = %factors1.values.sort;
        say "Facteurs premiers de $!integer2 :";
        %factors2 = self.breakdown($j);
        @keys2 = %factors2.values.sort;
        my Int @factors = ();
        my Int $idx1 = 0;
        my Int $idx2 = 0;
        my Bool $next = False;
        if (@keys1.elems >= @keys2.elems) {
            while ($idx2 < @keys2.elems) {
                while ($idx1 < @keys1.elems) {
                    if (@keys2[$idx2] == @keys1[$idx1]) {
                        push @factors, @keys2[$idx2] if (@keys2[$idx2] == @keys1[$idx1]) && ($next == False);
                        $next = True;
                    }
                    $idx1++;
                }
                $idx2++;
                $idx1 = $idx2;
                $next = False;
            }
        }
        else {
            while ($idx1 < @keys1.elems) {
                while ($idx2 < @keys2.elems) {
                    if (@keys1[$idx1] == @keys2[$idx2]) {
                        push @factors, @keys1[$idx1] if (@keys1[$idx1] == @keys2[$idx2]) && ($next == False);
                        $next = True;
                    }
                    $idx2++;
                }
                $idx1++;
                $idx2 = $idx1;
                $next = False;
            }
        }
        say "Facteurs communs à $!integer1 et $!integer2 :";
        say @factors;
        say "PGCD($i ; $j) :";
        my $idx = 0;
        while $idx < @factors.elems - 1 {
            print @factors[$idx], " × ";
            $idx++;
        }
        print @factors[$idx];
        $idx = 0;
        my Int $factor = 1;
        while $idx < @factors.elems {
            $factor *= @factors[$idx];
            $idx++;
        }
        say " = $factor.";
        return @factors;
    }

=begin pod    
###################################################################################
Pour déterminer le PGCD de deux nombres entiers par l'algorithme
des soustractions :
###################################################################################
▲ on calcule la différence des deux nombres;
▲ on garde le plus petit des deux nombres et la différence trouvée et on écrit
que le PGCD cherché est leur PGCD;
▲ on recommence le même procédé avec les deux nouveaux nombres jusqu'à l'obtention
de deux nombres égaux, le PGCD est égal à leur valeur.
La méthode s'appuie sur les propriétés suivantes : a et b désignant deux entiers,
si a = b, alors PGCD(a;b) = a = b et si a > b, PGCD(a;b) = PGCD(b;a-b).
###################################################################################
=end pod

    method subtraction_algorithm(--> Int) is export(:subtractalgo) {
        my Int $x = self.integer1;
        my Int $y = self.integer2;
        if ($x < $y) {
            # Intervertir $x et $y
            ($x, $y) = ($y, $x);
        }
        my Int $z = $x - $y;
        # Si le dividende et le diviseur sont égaux
        if ($x == $y) {
            say "PGCD($x ; $y) = $x.";
            return $x;
        }
        loop {
            if ($y > $z) {
                say "$x - $y = $z d'où PGCD($x ; $y) = PGCD($y ; $z)";
                $x = $y; $y = $z;
            }
            elsif ($y < $z) {
                say "$x - $y = $z d'où PGCD($x ; $y) = PGCD($z ; $y)";
                $x = $z;
            }
            elsif ($y == $z) {
                say "$x - $y = $z d'où PGCD($x ; $y) = PGCD($y ; $z)";
                say "or PGCD($y ; $z) = $z";
                say "On est arrivé à deux nombres égaux, donc PGCD($.integer1 ; $.integer2) = $z.";
                return $z;
            }
            $z = $x - $y;
        }
    }

=begin pod
###################################################################################
Comment déterminer le PGCD de deux nombres entiers par l'algorithme
d'Euclide ?
###################################################################################
▲ on effectue la division euclidienne du plus grand nombre par le plus petit;
▲ on conserve le plus petit des deux nombres et le reste trouvé et on écrit que
le PGCD cherché est leur PGCD;
▲ on continue ainsi jusqu'à l'obtention d'un reste nul, le PGCD est le dernier
reste non nul.
La méthode s'appuie sur la propriété suivante : a et b désignant deux entiers,
si a > b, PGCD(a;b) = PGCD(b;r) où r est le reste de la division euclidienne de
a par b
###################################################################################
=end pod

    method euclide_algorithm(--> Int) is export(:euclidealgo) {
        my Int $dividend = self.dividend;
        my Int $divisor = self.divisor;
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
            say "PGCD($dividend ; $divisor) = $dividend.";
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
                say "PGCD($dividend ; $divisor) = PGCD($div ; $r)";
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
                say "PGCD($dividend ; $divisor) = PGCD($div ; $r)";
                $dividend = $r;
                $divisor = $div;
            }
            elsif ($divisor == $rest) {
                $rest = 0;
                $pgcd = 1;
            }
        } until ($rest == 0);

        say "PGCD($dividend ; $divisor) = $divisor.";
        say "Le reste de la division de $dividend par $divisor est nul,";
        say "donc PGCD(", self.dividend, " ; ", self.divisor, ") = $pgcd.";
        return $pgcd;
    }
}
