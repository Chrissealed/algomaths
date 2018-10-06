unit module irreducible-fraction;

use v6;

=begin pod
L'objectif de ce module est de renvoyer la fraction irréductible
de la fraction initiale dont on passe le numérateur et le dénominateur
aux attributs 'numerator' et 'denominator', le numérateur étant
un entier quelconque et le dénominateur un entier différent de 0.
Il y a un 3e champ facultatif 'pgcd-algorithm' du type string (Str)
qui permet de préciser l'argument de la méthode du module 'are-prime.pm6'
'have-common-divisor($pgcd-algorithm)'
qui sera utilisée pour effectuer les calculs en interne.
4 choix sont possibles, on a :
=item 1) 'euclide' ou ':' ou '1' (par défaut);
=item 2) 'subtract' ou '_' ou '2';
=item 3) 'factorization' ou '*' ou '3';
=item 4) 'divisors-listing' ou '#' ou '4'.

La classe 'IrreducibleFraction' utilise l'une des trois méthodes
suivantes pour effectuer la réduction :
=item 'reduce-fraction-with-euclide-algorithm()',
=item 'reduce-fraction-with-subtraction-algorithm()' et
=item 'reduce-fraction-with-factorization-algorithm()'.

Elle affiche les informations selon la méthode utilisée
et chaque méthode renvoie une paire (Pair) correspondant
pour la clé de la paire au numérateur de la fraction réduite
et pour sa valeur au dénominateur.
=end pod

use are-prime;
use pgcd;

class IrreducibleFraction is export {
    has Int $.numerator is required is rw;
    has Int $.denominator is required is rw where { $_ != 0 or die "Valeur de champ invalide! Dénominateur différent de 0 requis." };
    # Champ utilisé par la classe ArePrime dans sa méthode 'have-common-divisor($pgcd-algorithm)'
    has Str $.pgcd-algorithm is rw where { $_ ~~ / euclide || ':' || 1 || subtract || _  || 2 || factorization || '*' || 3 || divisors\-listing || '#' || 4 / 
    or die "Valeur de champ invalide! Précisez 'euclide' ou ':' ou '1'; 'subtract' ou '_' ou '2'; 'factorization' ou '*' ou '3'; 'divisors-listing' ou '#' ou '4'"; }
    = 'euclide';

    method reduce-fraction-with-euclide-algorithm(--> Pair) {
        my Int $n = self.numerator;
        my Int $d = self.denominator;
        my Pair $pair;
        if ($n == 0) { say '0'; $pair = $n => $d; return $pair; }
        if ($n == 1 || $n == -1) {
            $pair = $n => $d;
            say "La fraction $n/$d est irréductible.";
            return $pair;
        }
        if ($d == 1 || $d == -1) {
            $pair = $n => $d;
            say "La fraction $n/$d est irréductible.";
            return $pair;
        }
        my Str $algo = self.pgcd-algorithm;
        my $are-prime = ArePrime.new(
            integer1 => $n,
            integer2 => $d,
        );
        if !$are-prime.have-common-divisor($algo) {
            say "$n et $d sont premiers entre eux!";
            say "La fraction $n/$d est irréductible.";
            $pair = $n => $d; 
            return $pair;
        }

        #say "On calcule le PGCD de $n et $d par l'algorithme d'Euclide :";
        my $pgcd = PGCD.new(
            integer1 => $n,
            integer2 => $d,
        );
        my Int $p = $pgcd.euclide_algorithm();
        say "On simplifie avec le PGCD trouvé :";
        # Eviter les effets de bord des nombres négatifs
        my Int $dividend = $n div abs($p);
        my Int $divisor = $d div abs($p);
        say "$n/$d = $p × $dividend / $p × $divisor";
        say "$n/$d = $dividend/$divisor";
        if ($p == 1 || $p == -1) {
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        } else {
            repeat {
                if ($dividend == 1 || $dividend == -1) {
                    $pair = $dividend => $divisor;
                    return $pair;
                }
                if ($divisor == 1 || $divisor == -1) {
                    $pair = $dividend => $divisor;
                    return $pair;
                }
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if (!$are-prime.have-common-divisor($algo)) {
                    say "$dividend et $divisor sont premiers entre eux!";
                    say "La fraction $dividend/$divisor est irréductible.";
                    $p = 1;
                    $pair = $dividend => $divisor;
                    return $pair;
                }
                say "et la fraction $dividend/$divisor est réductible :";
                my Int $dvd = $dividend div $p;
                my Int $dvs = $divisor div $p;
                say "$dividend/$divisor = $p × $dvd / $p × $dvs";
                $pgcd.integer1 = $dvd;
                $pgcd.integer2 = $dvs;
                $p = $pgcd.euclide_algorithm();
                $dividend = $dvd;
                $divisor = $dvs;
            } until ($p == 1 || $p == -1);
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        }
    }

    method reduce-fraction-with-subtraction-algorithm(--> Pair) {
        my Int $n = self.numerator;
        my Int $d = self.denominator;
        my Pair $pair;
        if ($n == 0) { say '0'; $pair = $n => $d; return $pair; }
        if ($n == 1 || $n == -1) {
            $pair = $n => $d;
            say "La fraction $n/$d est irréductible.";
            return $pair;
        }
        if ($d == 1 || $d == -1) {
            $pair = $n => $d;
            say "La fraction $n/$d est irréductible.";
            return $pair;
        }
        my Str $algo = self.pgcd-algorithm;
        my $are-prime = ArePrime.new(
            integer1 => $n,
            integer2 => $d,
        );
        if !$are-prime.have-common-divisor($algo) {
            say "$n et $d sont premiers entre eux!";
            say "La fraction $n/$d est irréductible.";
            $pair = $n => $d;
            return $pair;
        }

        #say "On calcule le PGCD de $n et $d par l'algorithme des soustractions :";
        my $pgcd = PGCD.new(
            integer1 => $n,
            integer2 => $d,
        );
        my Int $p = $pgcd.subtraction_algorithm();
        say "On simplifie avec le PGCD trouvé :";
        # Eviter les effets de bord des nombres négatifs
        my Int $dividend = $n div abs($p);
        my Int $divisor = $d div abs($p);
        say "$n/$d = $p × $dividend / $p × $divisor";
        say "$n/$d = $dividend/$divisor";
        if ($p == 1 || $p == -1) {
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        } else {
            repeat {
                if ($dividend == 1 || $dividend == -1) {
                    $pair = $dividend => $divisor;
                    say "La fraction $dividend/$divisor est irréductible.";
                    return $pair;
                }
                if ($divisor == 1 || $divisor == -1) {
                    $pair = $dividend => $divisor;
                    say "La fraction $dividend/$divisor est irréductible.";
                    return $pair;
                }
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if (!$are-prime.have-common-divisor) {
                    say "$dividend et $divisor sont premiers entre eux!";
                    say "La fraction $dividend/$divisor est irréductible.";
                    $p = 1;
                    $pair = $dividend => $divisor;
                    return $pair;
                }
                say "et la fraction $dividend/$divisor est réductible :";
                my Int $dvd = $dividend div $p;
                my Int $dvs = $divisor div $p;
                say "$dividend/$divisor = $p × $dvd / $p × $dvs";
                $pgcd.integer1 = $dvd;
                $pgcd.integer2 = $dvs;
                $p = $pgcd.subtraction_algorithm();
                $dividend = $dvd;
                $divisor = $dvs;
            } until ($p == 1 || $p == -1);
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        }
    }

    method reduce-fraction-with-factorization-algorithm(--> Pair) {
        my Int $n = self.numerator;
        my Int $d = self.denominator;
        my Pair $pair;
        if ($n == 0) { say '0'; $pair = $n => $d; return $pair; }
        if ($n == 1 || $n == -1) {
            $pair = $n => $d;
            say "La fraction $n/$d est irréductible.";
            return $pair;
        }
        if ($d == 1 || $d == -1) {
            $pair = $n => $d;
            say "La fraction $n/$d est irréductible.";
            return $pair;
        }
        my Str $algo = self.pgcd-algorithm;
        my $are-prime = ArePrime.new(
            integer1 => $n,
            integer2 => $d,
        );
        if !$are-prime.have-common-divisor($algo) {
            say "$n et $d sont premiers entre eux!";
            say "La fraction $n/$d est irréductible.";
            $pair = $n => $d;
            return $pair;
        }

        #say "On calcule le PGCD de $n et $d par la décomposition en facteurs premiers :";
        my $pgcd = PGCD.new(
            integer1 => $n,
            integer2 => $d,
        );
        my Int $p = $pgcd.factorization_algorithm();
        say "On simplifie avec le PGCD trouvé :";
        # Eviter les effets de bord des nombres négatifs
        my Int $dividend = $n div abs($p);
        my Int $divisor = $d div abs($p);
        say "$n/$d = $p × $dividend / $p × $divisor";
        say "$n/$d = $dividend/$divisor";
        if ($p == 1 || $p == -1) {
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        } else {
            repeat {
                if ($dividend == 1 || $dividend == -1) {
                    $pair = $dividend => $divisor;
                    say "La fraction $dividend/$divisor est irréductible.";
                    return $pair;
                }
                if ($divisor == 1 || $divisor == -1) {
                    $pair = $dividend => $divisor;
                    say "La fraction $dividend/$divisor est irréductible.";
                    return $pair;
                }
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if !$are-prime.have-common-divisor($algo) {
                    say "$dividend et $divisor sont premiers entre eux!";
                    say "La fraction $dividend/$divisor est irréductible.";
                    $p = 1;
                    $pair = $dividend => $divisor;
                    return $pair;
                }
                say "La fraction $dividend/$divisor est réductible :";
                # Eviter les effets de bord des nombres négatifs
                my Int $dvd = $dividend div abs($p);
                my Int $dvs = $divisor div abs($p);
                say "$dividend/$divisor = $p × $dvd / $p × $dvs";
                $pgcd.integer1 = $dvd;
                $pgcd.integer2 = $dvs;
                $p = $pgcd.factorization_algorithm();
                $dividend = $dvd;
                $divisor = $dvs;
            } until ($p == 1 || $p == -1);
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        }
    }

}
