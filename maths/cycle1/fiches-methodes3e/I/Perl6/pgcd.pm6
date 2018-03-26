unit module pgcd;

use integer-divisors-listing;
use common-arrays-elements;

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

class PGCD is IntegerDivisorsListing is export {
    has Int $.integer1 is rw where {$_ > 0 or die "Valeur de champ invalide: entier > 0 requis !"};
    has Int $.integer2 is rw where {$_ > 0 or die "Valeur de champ invalide: entier > 0 requis !"};
    
    has Int $.dividend is rw where {$_ >= 0 or die "Valeur de champ invalide: dividende >= 0 requis !"};
    # Virtual method call $.dividend may not be used on partially constructed object
    # (maybe you mean $!dividend for direct attribute access here?)
    has Int $.divisor  is rw where {$_ > 0 or die "Champ de classe invalide: division par 0 interdite !"
                                 && $_ <= $!dividend or die "Champ de classe invalide: le diviseur doit être inférieur ou égal au dividende !"};

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
