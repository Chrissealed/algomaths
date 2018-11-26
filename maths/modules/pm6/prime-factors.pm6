unit module Prime-factors;

use v6;

=begin pod
=NAME class B<PrimeFactors>
=AUTHOR Christian Béloscar
=VERSION 0.1
=for head1
Ce module contient un rôle : 'PrimeFactors' destiné à
établir la liste des facteurs premiers d'un entier 
différent de 0, c'est-à-dire de le décomposer en
facteurs premiers.

Il contient deux méthodes, la première :
=for head2
breakdown(Int $integer is copy where { ($integer != 0) or die "Argument invalide! Nombre entier différent de 0 requis." } --> Hash) {}

avec B<$integer> différent de 0 qui
renvoie un B<Hash> comprenant le mappage des nombres avec
leurs facteurs.
Il affiche ce mappage sous plusieurs formes :
en tableau associatif (Hash) clé => valeur, en facteurs successifs
puis en facteurs élevés à la puissance requise.
=end pod

role PrimeFactors is export {

    method breakdown(Int $integer is copy where { ($integer != 0) or die "Argument invalide! Nombre entier différent de 0 requis." } --> Hash) {
        #my @prime = (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79);
        my Int $intcopy = $integer;
        my %prime{Int};
        if ($integer == 1 || $integer == -1) {
            say "$integer\t=>\t1";
            say "$integer est un nombre premier!";
            say "Il n'admet que 1 et lui-même comme diviseurs.";
            push %prime, ($integer => 1);
            return %prime;
        }
        my Int $i = 2;
        loop {
            last if ($integer == 1 || $integer == -1);
            if is-prime($i) {
                if ($integer %% $i) {
                    push %prime, ($integer => $i);
                    $integer = $integer div $i;
                    next;
                }
            }
            $i++;
        }
        # postfix ». / postfix >>.
        # Hyper method call operator. Will call a method on all elements of a List out of order
        # and return the list of return values in order
        my Int @a = ();
        my Bool $is-prime = False;
        if %prime.elems == 1 { $is-prime = True; }
        for %prime.sort(*.key).reverse>>.kv -> ($k, $v) {
            "$k\t=>\t$v".say if !$is-prime;
            push @a, $v;
            if $is-prime {
                say "$intcopy\t=>\t1";
                say "$intcopy est un nombre premier!";
                say "Il n'admet que 1 et lui-même comme diviseurs.";
            };
        }
        # Affichage de tous les facteurs premiers.
        if (! $is-prime) {
            for (0..@a.end - 1) -> $idx {
                print "@a[$idx] × ";
            }
            say @a[@a.end]; # if !$is-prime;
        }

        # Hash des nombres et de leur exposant.
        my %exponents{Int};
        $i = 1;
        my Int $j = 0;
        my Int $count = 1;
        while ($i < @a.elems) {
            if (@a[$i] == @a[$j]) {
                $count++;
            }
            if (@a[$i] != @a[$j]) {
                %exponents{@a[$j]} = $count; 
                $count = 1;
            }
            $i++;
            $j++;
        }
        %exponents{@a[$j]} = $count;
        my Int $e = %exponents.keys.sort[*-1];
        my Bool $display = False;
        for %exponents.values {
            if $_ > 1 { $display = True; }
        }
        # Affichage des nombres avec leur exposant.
        for %exponents.sort(*.key)>>.kv -> ($k, $v) {
            if ($k != $e) && ($v > 1) && (!$is-prime) {
                "$k^$v × ".print;
            }
            elsif ($k != $e) && $v == 1 && (!$is-prime) && ($display) {
                "$k × ".print;
            }
            elsif ($k == $e) && $v > 1 && (!$is-prime) {
                "$k^$v".say;
            }
            elsif ($k == $e) && $v == 1 && (!$is-prime) && ($display) {
                "$k".say;
            }
            elsif ($k == $e) && $v == 1 && ($is-prime) {
                #"$v × $k.".say;
                # $k ne prend pas la valeur d'un nombre négatif!
                "$v × $intcopy.".say;
            }
        }
        return %prime;
    }

=begin pod
=for head2
La deuxième méthode :
reduce-fractions-prime-factors(Int @numerators is copy, Int @denominators is copy, Int $return-array --> Array) {}

qui prend 2 tableaux de B<Int> en arguments et délivre pour chacun des 2 tableaux
un troisième et quatrième tableau contenant les valeurs qui se trouvent dans l'un des tableaux
et pas dans l'autre.
Selon la valeur de l'argument B<$returned-array> (1 ou 2),
le premier tableau ou le deuxième tableau sera retourné,
pour disposer des valeurs contenues dans les 2 tableaux,
il faudra faire deux appels avec une valeur différente de B<$returned-array>
pour chacun d'eux.
=end pod

    method reduce-fractions-prime-factors(Int @numerators is copy, Int @denominators is copy, Int $return-array --> Array) {
        my Int @a = ();
        my Int @b = ();
        my Int $i = 0;
        my Int $j = 0;
        if (@numerators.elems <= @denominators.elems) {
            repeat {
                repeat {
                    if @numerators[$i] == @denominators[$j] {
                        @numerators[$i] = 0;
                        @denominators[$j] = 0;
                        last;
                    }
                    $j++;
                } while ($j < @denominators.elems);
                $i++;
                $j = 0;
            } while ($i < @numerators.elems);
        }
        else {
            repeat {
                repeat {
                    if @denominators[$i] == @numerators[$j] {
                        @denominators[$i] = 0;
                        @numerators[$j] = 0;
                        last;
                    }
                    $j++;
                } while ($j < @numerators.elems);
                $i++;
                $j = 0;
            } while ($i < @denominators.elems);
        }

        for @numerators -> $elem {
            # Pallier aux effets de bord des nombres négatifs
            push @a, abs($elem) if ($elem != 0);
        }
        for @denominators -> $elem {
            push @b, abs($elem) if ($elem != 0);
        }

        if ($return-array == 1) {
            return @a;
        } else {
            return @b;
        }
    }

}
