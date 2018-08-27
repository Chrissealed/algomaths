unit module Prime-factors;

use v6;

=begin pod
Ce module contient un role : PrimeFactors destiné à
établir la liste des facteurs premiers d'un entier > 1
ou < -1.
Il a une seule méthode : breakdown(Int $integer) qui
renvoie un Hash comprenant le mappage des nombres avec
leurs facteurs.
Il affiche ce mappage sous plusieurs formes :
en tableau clé => valeur, en facteurs successifs
puis en facteurs élevés à la puissance requise.
=end pod

role PrimeFactors is export {

    method breakdown(Int $integer is copy where { ($integer > 1 || $integer < -1) or die "Argument invalide! Nombre entier > 1 ou < -1 requis." } --> Hash) {
        #my @prime = (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79);
        my Int $intcopy = $integer;
        my %prime{Int};
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
        for %prime.sort(*.key.Int).reverse>>.kv -> ($k, $v) {
            "$k\t=>\t$v".say if !$is-prime;
            push @a, $v;
            if $is-prime {
                say "$intcopy\t=>\t1";
                say "$intcopy est un nombre premier!";
                say "Il n'admet que 1 et lui-même comme diviseurs.";
            };
        }
        # Affichage de tous les facteurs premiers.
        for (0..@a.end - 1) -> $idx {
            print "@a[$idx] × ";
        }
        say @a[@a.end] if !$is-prime;

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
        for %exponents.sort(*.key.Int)>>.kv -> ($k, $v) {
            if ($k != $e) && ($v > 1) && (!$is-prime) {
                "$k^$v × ".print;
            }
            elsif ($k != $e) && ($v == 1) && (!$is-prime) && ($display) {
                "$k × ".print;
            }
            elsif ($k == $e) && ($v > 1) && (!$is-prime) {
                "$k^$v".say;
            }
            elsif ($k == $e) && ($v == 1) && (!$is-prime) && ($display) {
                "$k".say;
            }
            elsif ($k == $e) && ($v == 1) && ($is-prime) {
                "1 × $k".say;
            }
        }
        return %prime;
    }

}