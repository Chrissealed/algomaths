unit module Integer-divisors-listing-hash;

use v6;

use teeput;

=begin pod
=NAME B<IntegerDivisorsListingH> : B<algomaths> Perl 6 module in /maths/modules/pm6/B<integer-divisors-listing-hash.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.01.06

=head1 Cette classe est destinée à établir la liste des diviseurs d'un entier naturel non nul.

Elle contient deux méthodes, l'une publique : B<list-divisors(Int $integer where \{$integer != 0\})> 
et l'autre privée destinée à l'affichage d'informations.
Elle utilise le module B<usual-divisibility-criteria.pm6> pour calculer la divisibilité
des nombres 2, 3, 4, 5, 9, (10, 100, 1000, etc.), 11 et 25
en utilisant les critères de divisibilité les plus usuels (voir la doc du fichier
B<usual-divisibility-criteria.pm6>).

Pour les autres nombres, elle utilise l'opérateur modulo (mod) ou %%.
Contrairement au module du fichier B<integer-divisors-listing-array.pm6>
implémenté par l'emploi de tableau, et qui renvoie un tableau,
celui-ci est implémenté par l'emploi de hash et renvoie un hash.
Le module B<integer-divisors-listing.pm6> permet quant à lui de renvoyer
au choix un tableau ou un hash selon l'argument donné au constructeur
(cf. doc du fichier B<integer-divisors-listing.pm6>).

L'autre attribut requis cette fois et en lecture écriture est un objet
de type B<Teeput::Tput>.
Consultez la doc du module B<teeput.pm6> pour plus de détails.
=end pod

use usual-divisibility-criteria;
use teeput;

class IntegerDivisorsListingH does UsualDivisibilityCriteria is export {
    has Teeput::Tput $.t is required is rw;

    method list-divisors(Int $integer where {$integer != 0}) {
        my Int $n = abs($integer);
        # Compteur des diviseurs successifs
        my Int $i = 1;
        # Pour stocker le résultat de la division du nombre par i
        my Int $x = 1;
        # Pour stocker un carré parfait
        my Int $square = 0;
        # Hash en retour de fonction
        my %hr;
        my Bool $last = False;
        my %h{Int};

        # 1 est le premier diviseur commun à tous les nombres
        #%h<$i> = $n;
        if ($integer > 0) {
            %h{$i} = $n;
        }
        if ($integer < 0) {
            %h{$i} = -$n;
        }
        if ($n == 1 || $n == -1) {
            %hr = self!display($n, $square, %h);
            return %hr;
        }

        # Critère de divisibilité par 2, le chiffre des unités
        # est : 0, 2, 4, 6 ou 8
        $i += 1;
        if self.is_divisible_by_2($n) {
            $x = $n div $i;
            if ($integer > 0) {
                %h{$i} = $x;
            }
            if ($integer < 0) {
                %h{$i} = -$x;
            }
            $last = True if grep { $_ == $i || $_ == -$i }, %h.values;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            # Ôte le doublon sauf s'il s'agit d'un carré parfait
            %h{$i}:delete unless $square > 0;
            %hr = self!display($n, $square, %h);
            return %hr;
        }

        # Critère de divisibilité par 3 :
        # la somme des chiffres est divisible par 3
        $i += 1;
        if self.is_divisible_by_3($n) {
            $x = $n div $i;
            if ($integer > 0) {
                %h{$i} = $x;
            }
            if ($integer < 0) {
                %h{$i} = -$x;
            }
            $last = True if grep { $_ == $i || $_ == -$i }, %h.values;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            %h{$i}:delete unless $square > 0;
            %hr = self!display($n, $square, %h);
            return %hr;
        }

        # Critère de divisibilité par 4 :
        # le nombre formé par les deux chiffres de droite est divisible par 4
        $i += 1;
        if self.is_divisible_by_4($n) {
            $x = $n div $i;
            if ($integer > 0) {
                %h{$i} = $x;
            }
            if ($integer < 0) {
                %h{$i} = -$x;
            }
            $last = True if grep { $_ == $i || $_ == -$i }, %h.values;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            %h{$i}:delete unless $square > 0;
            %hr = self!display($n, $square, %h);
            return %hr;
        }

        # Critère de divisibilité par 5 :
        # le chiffre des unités est 0 ou 5
        $i += 1;
        if self.is_divisible_by_5($n) {
            $x = $n div $i;
            if ($integer > 0) {
                %h{$i} = $x;
            }
            if ($integer < 0) {
                %h{$i} = -$x;
            }
            $last = True if grep { $_ == $i || $_ == -$i }, %h.values;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            %h{$i}:delete unless $square > 0;
            %hr = self!display($n, $square, %h);
            return %hr;
        }

        # Pas de critère de divisibilité particulier pour les chiffres
        # 6, 7 et 8
        until ($i == 8) {
            $i += 1;
            if ($n mod $i == 0) {
                $x = $n div $i;
                if ($integer > 0) {
                    %h{$i} = $x;
                }
                if ($integer < 0) {
                    %h{$i} = -$x;
                }
                $last = True if grep { $_ == $i || $_ == -$i }, %h.values;
                if ($i == $x) { $square = $i; $last = True; }
            }

            if ($last) {
                %h{$i}:delete unless $square > 0;
                %hr = self!display($n, $square, %h);
                return %hr;
            }
        }

        # Critère de divisibilité par 9 :
        # la somme des chiffres est divisible par 9
        $i += 1;
        if self.is_divisible_by_9($n) {
            $x = $n div $i;
            if ($integer > 0) {
                %h{$i} = $x;
            }
            if ($integer < 0) {
                %h{$i} = -$x;
            }
            $last = True if grep { $_ == $i || $_ == -$i }, %h.values;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            %h{$i}:delete unless $square > 0;
            %hr = self!display($n, $square, %h);
            return %hr;
        }

        # Critère de divisibilité par 10, 100, 1000, etc. :
        # le nombre se termine respectivement par 0, 00, 000, etc.
        $i += 1;
        if self.is_divisible_by_0_queue($n) {
            $x = $n div $i;
            if ($integer > 0) {
                %h{$i} = $x;
            }
            if ($integer < 0) {
                %h{$i} = -$x;
            }
            $last = True if grep { $_ == $i || $_ == -$i }, %h.values;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            %h{$i}:delete unless $square > 0;
            %hr = self!display($n, $square, %h);
            return %hr;
        }

        # Critère de divisibilité par 11 : la différence entre la somme des chiffres
        # de rang pair et celle des chiffres de rang impair est divisible par 11.
        $i += 1;
        if self.is_divisible_by_11($n) {
            $x = $n div $i;
            if ($integer > 0) {
                %h{$i} = $x;
            }
            if ($integer < 0) {
                %h{$i} = -$x;
            }
            $last = True if grep { $_ == $i || $_ == -$i }, %h.values;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            %h{$i}:delete unless $square > 0;
            %hr = self!display($n, $square, %h);
            return %hr;
        }

        # Divisibilité par 12 jusqu'à 24
        # pas de critère particulier
        until ($i == 24) {
            $i += 1;
            if ($n mod $i == 0) {
                $x = $n div $i;
                if ($integer > 0) {
                    %h{$i} = $x;
                }
                if ($integer < 0) {
                    %h{$i} = -$x;
                }
                $last = True if grep { $_ == $i || $_ == -$i }, %h.values;
                if ($i == $x) { $square = $i; $last = True; }
            }

            if ($last) {
                %h{$i}:delete unless $square > 0;
                %hr = self!display($n, $square, %h);
                return %hr;
            }
        }

        # Critère de divisibilité par 25
        $i += 1;
        if self.is_divisible_by_25($n) {
            $x = $n div $i;
            if ($integer > 0) {
                %h{$i} = $x;
            }
            if ($integer < 0) {
                %h{$i} = -$x;
            }
            $last = True if grep { $_ == $i || $_ == -$i }, %h.values;
            if ($i == $x) { $square = $i; $last = True; }
        }

        if ($last) {
            %h{$i}:delete unless $square > 0;
            %hr = self!display($n, $square, %h);
            return %hr;
        }

        # Divisibilité par 26 jusqu'à n
        # pas de critère particulier
        until ($i == $n) {
            $i += 1;
            if ($n mod $i == 0) {
                $x = $n div $i;
                if ($integer > 0) {
                    %h{$i} = $x;
                }
                if ($integer < 0) {
                    %h{$i} = -$x;
                }
                $last = True if grep { $_ == $i || $_ == -$i }, %h.values;
                if ($i == $x) { $square = $i; $last = True; }
            }
        
            if ($last) {
                %h{$i}:delete unless $square > 0;
                %hr = self!display($n, $square, %h);
                return %hr;
            }
        }
    }

    method !display(Int $integer, Int $perfectsquare, %hash) {
        my %reverse-hash{Int};
        my %my-hash;
        my @a;
        my @b;
        my Int @array;

        @a = %hash.keys;
        @b = %hash.values;
        # Contrairement à push qui ajoute le tableau entier,
        # append ajoute chaque élément du tableau.
        @a.append: (@b);
        for @a -> $elem {
            @array.push(Int($elem));
        }
        # Par défaut, === est utilisé pour la comparaison, == (Numeric equality operator) suffit
        @array = @array.unique(:with(&[==])).sort;
        #say @array;
        %reverse-hash = %hash.kv.reverse;
        # postfix ». / postfix >>.
        # Hyper method call operator. Will call a method on all elements of a List out of order
        # and return the list of return values in order
        for %hash.sort(*.key.Int)>>.kv -> ($k, $v) {
            $!t.tput: "$k\t<=>\t$v";
        }
        # Le nombre de diviseurs d'un entier non nul est pair
        # sauf si ce nombre est un carré parfait
        #if (@array.elems mod 2 != 0) {
        if $perfectsquare > 0 {
            $!t.tput: "$integer est un carré parfait! : $perfectsquare × $perfectsquare";
        }
        # Un nombre premier est divisible par 1 et par lui même
        if @array.elems == 2 {
            $!t.tput: "$integer est un nombre premier!";
        }
        push %hash, %reverse-hash;
        for %hash -> $pair {
            # Unlike unique, this function (squish) only removes adjacent duplicates; identical values further apart are still kept
            # Par défaut, === est utilisé pour la comparaison, == (Numeric equality operator) suffit
            push %my-hash, ($pair.key => $pair.value.squish(:with(&[=])));
        }
        return %my-hash;
    }
    
}
