unit module Prime-factors;

use v6;

=begin pod
=NAME class B<PrimeFactors> in B<algomaths> Perl6 modules : maths/modules/pm6/B<prime-factors.pm6>
=AUTHOR https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.22

=for head1
Ce module contient un rôle : 'PrimeFactors'

destiné à établir la liste des facteurs premiers d'un entier 
différent de 0, c'est-à-dire de le décomposer en
facteurs premiers.

Il contient deux méthodes, la première :
=for head2
breakdown(Int:D $integer is copy where { ($integer != 0) or die "Argument invalide! Nombre entier différent de 0 requis." } --> Hash:D) {}

avec B<$integer> différent de 0 qui
renvoie un B<Hash> comprenant le mappage des nombres avec
leurs facteurs.
Il affiche ce mappage sous plusieurs formes :
en tableau associatif (Hash) clé => valeur, en facteurs successifs
puis en facteurs élevés à la puissance requise.

Le rôle possède en outre un attribut requis destiné à écrire
dans un fichier les informations qui apparaissent à l'écran
et qui décrivent les différentes étapes des opérations.
Il s'agit de B<Teeput::Tput $t is required is rw> :
il faut lui passer un objet de type B<Teeput::Tput> du module
B<teeput.pm6>. Référez-vous à la doc de ce module
pour plus d'informations.
=end pod

use teeput;

role PrimeFactors is export {
    has Teeput::Tput $.t is required is rw;

    method breakdown(Int:D $integer is copy where { ($integer != 0) or die "Argument invalide! Entier relatif différent de 0 requis." } --> Hash:D) {
        #my @prime = (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79);
        my Int $intcopy = $integer;
        my %prime{Int};
        if ($integer == 1 || $integer == -1) {
            $!t.tput: "$integer\t=>\t1";
            $!t.tput: "$integer est un nombre premier!";
            $!t.tput: "Il n'admet que 1 et lui-même comme diviseurs.";
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
            $!t.tput: "$k\t=>\t$v" if !$is-prime;
            push @a, $v;
            if $is-prime {
                $!t.tput: "$intcopy\t=>\t1";
                $!t.tput: "$intcopy est un nombre premier!";
                $!t.tput: "Il n'admet que 1 et lui-même comme diviseurs.";
            };
        }
        # Affichage de tous les facteurs premiers.
        if (! $is-prime) {
            for (0..@a.end - 1) -> $idx {
                $!t.tprint: "@a[$idx] × ";
            }
            $!t.tput: "@a[@a.end]"; # if !$is-prime;
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
                $!t.tprint: "$k^$v × ";
            }
            elsif ($k != $e) && $v == 1 && (!$is-prime) && ($display) {
                $!t.tprint: "$k × ";
            }
            elsif ($k == $e) && $v > 1 && (!$is-prime) {
                $!t.tput: "$k^$v";
            }
            elsif ($k == $e) && $v == 1 && (!$is-prime) && ($display) {
                $!t.tput: "$k";
            }
            elsif ($k == $e) && $v == 1 && ($is-prime) {
                #"$v × $k.".$!t.tput:;
                # $k ne prend pas la valeur d'un nombre négatif!
                $!t.tput: "$v × $intcopy.";
            }
        }
        return %prime;
    }

=begin pod
=for head2
La deuxième méthode :
reduce-fractions-prime-factors(Int:D @numerators is copy, Int:D @denominators is copy, Int $return-array = 1 --> Array:D) {}

qui prend 2 tableaux de B<Int> en arguments et délivre pour chacun des 2 tableaux
un troisième et quatrième tableau contenant les valeurs qui se trouvent dans l'un des tableaux
et pas dans l'autre.
Selon la valeur de l'argument B<$return-array> (1 ou 2),
le premier tableau ou le deuxième tableau sera retourné,
pour disposer des valeurs contenues dans les 2 tableaux,
il faudra faire deux appels avec une valeur différente de B<$return-array>
pour chacun d'eux. 1 est la valeur par défaut du paramètre.
=end pod

    method reduce-fractions-prime-factors(Int:D @numerators is copy, Int:D @denominators is copy, Int $return-array = 1 --> Array:D) {
        my Int @n = ();
        my Int @d = ();
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
            push @n, abs($elem) if ($elem != 0);
        }
        for @denominators -> $elem {
            push @d, abs($elem) if ($elem != 0);
        }

        if ($return-array == 1) {
            return @n;
        } else {
            return @d;
        }
    }

}
