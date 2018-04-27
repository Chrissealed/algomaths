unit module ppcm;

use v6;
use are-prime;
use pgcd;

=begin pod
Ce module contient une classe : PPCM qui hérite de la classe ArePrime,
qui elle-même hérite de la classe PGCD.
Cette classe comporte deux arguments : integer1 et integer2, qui sont
des entiers supérieurs à 1 à passer dans son constructeur et qui seront
utilisés par les méthodes de la classe.
Cette classe contient trois méthodes distinctes pour calculer le PPCM
(plus petit commun multiple) de deux entiers :
- 'by-larger-number-multiples' qui procède par additions du plus grand
nombre et division du résultat par le plus petit nombre.
Elle retourne le PPCM recherché qui est donc un entier.
- 'by-prime-factors' qui procède par décomposition des nombres en
facteurs premiers et qui utilise la méthode 'breakdown' du module
'prime-factors' dont il dispose du rôle par l'intermédiaire de la
classe 'PGCD' dont il hérite en deuxième parent par le module
'ArePrime'. Cette méthode dispose d'un tableau des facteurs extraits
des deux nombres qu'elle multiplie pour obtenir le PPCM recherché et retourné.
- enfin 'by-use-of-pgcd' qui comme son nom l'indique recherche d'abord
le PGCD des deux entiers avant de diviser leur multiple par celui-ci,
le résultat étant le PPCM recherché, soit un entier retourné par la méthode.
=end pod

class PPCM is ArePrime is export {
    has Int $.integer1 is rw where {$_ > 1 or die "Valeur de champ invalide: entier > 1 requis !"};
    has Int $.integer2 is rw where {$_ > 1 or die "Valeur de champ invalide: entier > 1 requis !"};

    method by-larger-number-multiples(--> Int) {
        my $int1 = self.integer1;
        my $int2 = self.integer2;
        if ($int1 < $int2) {
            # Intervertir $x et $y
            ($int1, $int2) = ($int2, $int1);
        }
        my $int = $int1;
        if $int1 == $int2 { return $int1; }
        # Vérifier si les nombres sont premiers entre eux
        my $are-prime = ArePrime.new(
            integer1 => $int1,
            integer2 => $int2,
            subtract-or-euclide-algo => ':',
        );
        my Bool $have-common-divisor = $are-prime.have-common-divisor();
        if !$have-common-divisor {
            say "Le PGCD de $int1 et $int2 est égal à 1 ce qui signifie";
            say "que $int1 et $int2 n'ont pas de diviseur commun autre que 1;";
            say "le PPCM de $int1 et $int2 est donc leur produit :";
            return $int1 * $int2;
        }
        say "Reste de la division de $int1 par $int2 : ", $int1 % $int2;
        if $int1 %% $int2 { return $int1; }
        loop {
            print "$int + $int1 = ";
            $int += $int1;
            say "$int";
            say "Reste de la division de $int par $int2 : ", $int % $int2;
            if $int %% $int2 { return $int; }
        }
    }

    method by-prime-factors(--> Int) {
        my $x = self.integer1;
        my $y = self.integer2;
        # Vérifier si les nombres sont premiers entre eux
        my $are-prime = ArePrime.new(
            integer1 => $x,
            integer2 => $y,
            subtract-or-euclide-algo => ':',
        );
        my Bool $have-common-divisor = $are-prime.have-common-divisor();
        if !$have-common-divisor {
            say "Le PGCD de $x et $y est égal à 1 ce qui signifie";
            say "que $x et $y n'ont pas de diviseur commun autre que 1;";
            say "le PPCM de $x et $y est donc leur produit :";
            return $x * $y;
        }
        # Call méthode du module 'prime-factors' qui contient un rôle inclus dans 
        # la classe PGCD héritée de ArePrime.
        my %h1 = self.breakdown(self.integer1);
        my %h2 = self.breakdown(self.integer2);
        my Int @a1 = %h1.values.sort;
        my Int @a2 = %h2.values.sort;
        my Int @a3 = ();
        my Int $f = 2;
        my Int $i = 0;
        my Int $j = 0;
        my Int $total1 = 1;
        my Int $total2 = 1;
        if @a1[@a1.end] >= @a2[@a2.end] {
            while ($f <= @a1[@a1.end]) {
                while ($i < @a1.elems) {
                    if $f == @a1[$i] {
                        $total1 = $f * $total1;
                    }
                    $i++;
                }
                while ($j < @a2.elems) {
                    if $f == @a2[$j] {
                        $total2 = $f * $total2;
                    }
                    $j++;
                }
                if ($total1 >= $total2) {
                    push @a3, $total1 if $total1 > 1;
                } else {
                    push @a3, $total2 if $total2 > 1;
                }
                repeat {
                    $f++;
                } until is-prime($f);
                $i = 0;
                $j = 0;
                $total1 = 1;
                $total2 = 1;
            }
        } else {
            while ($f <= @a2[@a2.end]) {
                while ($i < @a1.elems) {
                    if $f == @a1[$i] {
                        $total1 = $f * $total1;
                    }
                    $i++;
                }
                while ($j < @a2.elems) {
                    if $f == @a2[$j] {
                        $total2 = $f * $total2;
                    }
                    $j++;
                }
                if ($total1 >= $total2) {
                    push @a3, $total1 if $total1 > 1;
                } else {
                    push @a3, $total2 if $total2 > 1;
                }
                repeat {
                    $f++;
                } until is-prime($f);
                $i = 0;
                $j = 0;
                $total1 = 1;
                $total2 = 1;
            }
        }
        $i = 0;
        say "En prenant les plus grands facteurs de chaque liste, ";
        print "le PPCM de $x et $y équivaut donc à : ";
        while ($i < @a3.end) {
            print @a3[$i], " × ";
            $i++;
        }
        say @a3[$i], ";";
        my $ppcm = [*] @a3;
        return $ppcm;
    }

    method by-use-of-pgcd(--> Int) {
        my $x = self.integer1;
        my $y = self.integer2;
        if ($y > $x) {
            # Inversion des termes
            ($x, $y) = ($y, $x);
        }
        # On ne vérifie pas que les nombres sont premiers entre eux
        # car on serait amené à rechercher deux fois leur PGCD
        my $pgcd = PGCD.new(
            dividend => $x,
            divisor => $y,
        );
        my Int $p = $pgcd.euclide_algorithm();
        if ($p == 1) {
            say "Le PGCD de $x et $y est égal à 1 ce qui signifie";
            say "que $x et $y n'ont pas de diviseur commun autre que 1;";
            say "le PPCM de $x et $y est donc leur produit :";
            return $x * $y;
        }
        my Int $product = $x * $y;
        say "Produit de $x par $y = $product";
        my Int $ppcm = $product div $p;
        say "PPCM($x ; $y) = $product / $p";
        return $ppcm;
    }

}
