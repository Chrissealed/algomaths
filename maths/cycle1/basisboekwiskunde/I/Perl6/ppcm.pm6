unit module ppcm;

use v6;
use are-prime;
use pgcd;

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

    method by-prime-factors(--> Array) {
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
        return @a3;
    }

    method by-use-of-pgcd() {
        my $x = self.integer1;
        my $y = self.integer2;
        if ($y > $x) {
            # Inversion des termes
            ($x, $y) = ($y, $x);
        }
        my $pgcd = PGCD.new(
            dividend => $x,
            divisor => $y,
        );
        my Int $p = $pgcd.euclide_algorithm();
        my Int $product = $x * $y;
        say "Produit de $x par $y = $product";
        my Int $ppcm = $product div $p;
        say "PPCM = $product / PGCD";
        return $ppcm;
    }

}
