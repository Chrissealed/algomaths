unit module Common-arrays-elements;

use v6;

=begin pod
=NAME module B<Common-arrays-elements> in B<algomaths> Perl6 modules : maths/modules/pm6/B<common-arrays-elements.pm6>
=AUTHOR https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.16

Ce module contient une seule méthode : B<common-arrays-elements(@array1, @array2)>
qui prend 2 tableaux quelconques en arguments et délivre un troisième tableau
en valeur de retour contenant les éléments communs des deux tableaux précédents.
=end pod

sub common-arrays-elements(@array1, @array2) is export {
    my @array3 = ();
    if (@array1.elems <= @array2.elems) {
        for @array1 -> $i {
            for @array2 -> $j {
                # Value identity operator. Returns True if both arguments are the same object.
                if ($i === $j) {
                    push @array3, $i;
                }
            }
        }
    }
    else {
        for @array2 -> $i {
            for @array1 -> $j {
                if ($i === $j) {
                    push @array3, $i;
                }
            }
        }
    }
    return @array3;
}
