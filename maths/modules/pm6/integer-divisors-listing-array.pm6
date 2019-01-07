unit module Integer-divisors-listing-array;

use v6;

=begin pod
=NAME B<IntegerDivisorsListingA> : B<algomaths> Perl 6 module in /maths/modules/pm6/B<integer-divisors-listing.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.01.06

=head1 Cette classe est destinée à établir la liste des diviseurs d'un entier naturel non nul.

Elle contient deux méthodes, l'une publique : B<list-divisors>(Int $integer where \{$integer > 0\})
qui prend en argument un entier supérieur à 0 dont on souhaite établir la liste des diviseurs
et renvoie un tableau des diviseurs trouvés, et l'autre privée
destinée à l'affichage d'informations.

Elle utilise le module B<usual-divisibility-criteria.pm6> pour calculer la divisibilité
des nombres 2, 3, 4, 5, 9, (10, 100, 1000, etc.), 11 et 25
en utilisant les critères de divisibilité les plus usuels (voir la doc du fichier
B<usual-divisibility-criteria.pm6>).
Pour les autres nombres, elle utilise l'opérateur B<modulo> (mod) ou %%.
Il existe deux autres modules implémentant l'algorithme de ce module avec un B<Hash>.
Le premier B<integer-divisors-listing-hash.pm6> qui renvoie systématiquement une hash,
et le second B<integer-divisors-listing.pm6> qui renvoie au choix un hash ou un tableau.

Ce dernier peut dans tous les cas remplacer chacun des deux modules.

L'autre attribut requis cette fois et en lecture écriture est un objet
de type B<Teeput::Tput>.
Consultez la doc du module B<teeput.pm6> pour plus de détails.
=end pod

use usual-divisibility-criteria;
use teeput;

class IntegerDivisorsListingA does UsualDivisibilityCriteria is export {
    has Teeput::Tput $.t is required is rw;

    method list-divisors(Int $integer where {$integer > 0}) {
        my Int $n = $integer;
        # if ($n == 0) { exit 0; }
        # Compteur des diviseurs successifs
        my Int $i = 1;
        # Pour stocker le résultat de la division du nombre par i
        my Int $x = 0;
        # Pour stocker la liste des diviseurs du nombre en retour de fonction
        my Int @a;
        # Pour stocker un carré parfait
        my Int $square = 0;
        # Pour stocker la liste de gauche relative à celle de droite des diviseurs de $n
        my Int @list1;
        my Int @list2;
        # Index des tableaux @list1 et @list2
        my Int $idx = 0;
        my Bool $last = False;

        # 1 est le premier diviseur commun à tous les nombres
        @list1[$idx] = $i;
        @list2[$idx] = $n; 
        $idx++;
        if ($n == 1) {
            $square = 1;
            @a = self!display($n, $square, @list1, @list2);
            return @a;
        }

        # Critère de divisibilité par 2, le chiffre des unités
        # est : 0, 2, 4, 6 ou 8
        $i += 1;
        if self.is_divisible_by_2($n) {
            $x = $n div $i;
            @list1[$idx] = $i;
            @list2[$idx] = $x; 
            if ($i == @list2[$idx-1]) { $last = True; }
            $idx++;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            if $square == 0 { @list1.pop; }
            if $square == 0 { @list2.pop; }
            @list2 = reverse @list2;
            @a = self!display($n, $square, @list1, @list2);
            return @a;
        }

        # Critère de divisibilité par 3 :
        # la somme des chiffres est divisible par 3
        $i += 1;
        if self.is_divisible_by_3($n) {
            $x = $n div $i;
            @list1[$idx] = $i;
            @list2[$idx] = $x; 
            if ($i == @list2[$idx-1]) { $last = True; }
            $idx++;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            if $square == 0 { @list1.pop; }
            if $square == 0 { @list2.pop; }
            @list2 = reverse @list2;
            @a = self!display($n, $square, @list2);
            return @a;
        }

        # Critère de divisibilité par 4 :
        # le nombre formé par les deux chiffres de droite est divisible par 4
        $i += 1;
        if self.is_divisible_by_4($n) {
            $x = $n div $i;
            @list1[$idx] = $i;
            @list2[$idx] = $x; 
            if ($i == @list2[$idx-1]) { $last = True; }
            $idx++;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            if $square == 0 { @list1.pop; }
            if $square == 0 { @list2.pop; }
            @list2 = reverse @list2;
            @a = self!display($n, $square, @list2);
            return @a;
        }

        # Critère de divisibilité par 5 :
        # le chiffre des unités est 0 ou 5
        $i += 1;
        if self.is_divisible_by_5($n) {
            $x = $n div $i;
            @list1[$idx] = $i;
            @list2[$idx] = $x; 
            if ($i == @list2[$idx-1]) { $last = True; }
            $idx++;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            if $square = 0 { @list1.pop; }
            if $square = 0 { @list2.pop; }
            @list2 = reverse @list2;
            @a = self!display($n, $square, @list1, @list2);
            return @a;
        }

        # Pas de critère de divisibilité particulier pour les chiffres
        # 6, 7 et 8
        until ($i == 8) {
            $i += 1;
            if ($n mod $i == 0) {
                $x = $n div $i;
                @list1[$idx] = $i;
                @list2[$idx] = $x; 
                if ($i == @list2[$idx-1]) { $last = True; }
                $idx++;
                if ($i == $x) { $square = $i; $last = True; }
            }

            if ($last) {
                if $square == 0 { @list1.pop; }
                if $square == 0 { @list2.pop; }
                @list2 = reverse @list2;
                @a = self!display($n, $square, @list1, @list2);
                return @a;
            }
        }

        # Critère de divisibilité par 9 :
        # la somme des chiffres est divisible par 9
        $i += 1;
        if self.is_divisible_by_9($n) {
            $x = $n div $i;
            @list1[$idx] = $i;
            @list2[$idx] = $x; 
            if ($i == @list2[$idx-1]) { $last = True; }
            $idx++;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            if $square == 0 { @list1.pop; }
            if $square == 0 { @list2.pop; }
            @list2 = reverse @list2;
            @a = self!display($n, $square, @list1, @list2);
            return @a;
        }

        # Critère de divisibilité par 10, 100, 1000, etc. :
        # le nombre se termine respectivement par 0, 00, 000, etc.
        $i += 1;
        if self.is_divisible_by_0_queue($n) {
            $x = $n div $i;
            @list1[$idx] = $i;
            @list2[$idx] = $x; 
            if ($i == @list2[$idx-1]) { $last = True; }
            $idx++;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            if $square == 0 { @list1.pop; }
            if $square == 0 { @list2.pop; }
            @list2 = reverse @list2;
            @a = self!display($n, $square, @list1, @list2);
            return @a;
        }

        # Critère de divisibilité par 11 : la différence entre la somme des chiffres
        # de rang pair et celle des chiffres de rang impair est divisible par 11.
        $i += 1;
        if self.is_divisible_by_11($n) {
            $x = $n div $i;
            @list1[$idx] = $i;
            @list2[$idx] = $x; 
            if ($i == @list2[$idx-1]) { $last = True; }
            $idx++;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            if $square == 0 { @list1.pop; }
            if $square == 0 { @list2.pop; }
            @list2 = reverse @list2;
            @a = self!display($n, $square, @list1, @list2);
            return @a;
        }

        # Divisibilité par 12 jusqu'à 24
        # pas de critère particulier
        until ($i == 24) {
            $i += 1;
            if ($n mod $i == 0) {
                $x = $n div $i;
                @list1[$idx] = $i;
                @list2[$idx] = $x; 
                if ($i == @list2[$idx-1]) { $last = True; }
                $idx++;
                if ($i == $x) { $square = $i; $last = True; }
            }

            if ($last) {
                if $square == 0 { @list1.pop; }
                if $square == 0 { @list2.pop; }
                @list2 = reverse @list2;
                @a = self!display($n, $square, @list1, @list2);
                return @a;
            }
        }

        # Critère de divisibilité par 25
        $i += 1;
        if self.is_divisible_by_25($n) {
            $x = $n div $i;
            @list1[$idx] = $i;
            @list2[$idx] = $x; 
            if ($i == @list2[$idx-1]) { $last = True; }
            $idx++;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            if $square == 0 { @list1.pop; }
            if $square == 0 { @list2.pop; }
            @list2 = reverse @list2;
            @a = self!display($n, $square, @list1, @list2);
            return @a;
        }

        # Divisibilité par 26 jusqu'à n
        # pas de critère particulier
        until ($i == $n) {
            $i += 1;
            if ($n mod $i == 0) {
                $x = $n div $i;
                @list1[$idx] = $i;
                @list2[$idx] = $x; 
                if ($i == @list2[$idx-1]) { $last = True; }
                $idx++;
                if ($i == $x) { $square = $i; $last = True; }
            }
        
            if ($last) {
                if $square == 0 { @list1.pop; }
                if $square == 0 { @list2.pop; }
                @list2 = reverse @list2;
                @a = self!display($n, $square, @list1, @list2);
                return @a;
            }
        }
    }

    method !display(Int $integer, Int $perfectsquare, Int @array1, Int @array2) {
        my $z = 0;
        my @array = @array1.append(@array2);
        # On fait en sorte que chaque élément soit unique sans compromettre
        # l'indexation de @array
        if $perfectsquare > 0 {
            # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
            # Par défaut, === est utilisé pour la comparaison, == (Numeric equality operator) suffit
            @array = @array.unique(:with(&[==]));
        }
        for @array -> $elem {
            $!t.tput: "$elem est un diviseur de $integer : $integer = $elem × {@array[@array.end-$z]}";
            $z++;
        }
        #say @array;
        # Le nombre de diviseurs d'un entier non nul est pair
        # sauf si ce nombre est un carré parfait
        #if (@array.elems mod 2 != 0) {
        if $perfectsquare > 0 {
            $!t.tput: "$integer est un carré parfait! : $perfectsquare × $perfectsquare";
        }
        # Un nombre premier est divisible par 1 et par lui même
        if (@array.elems == 2) {
            $!t.tput: "$integer est un nombre premier!";
        }
        return @array;
    }
    
}
