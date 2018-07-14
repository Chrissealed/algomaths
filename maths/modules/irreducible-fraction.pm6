unit module irreducible-fraction;

use v6;
use are-prime;
use pgcd;

=begin pod
L'objectif de ce module est de renvoyer la fraction irréductible
de la fraction initiale dont on passe le numérateur et le dénominateur
aux attributs 'numerator' et 'denominator', le numérateur étant
au moins égal à 0 et le dénominateur supérieur à 0.
La classe 'IrreducibleFraction' utilise l'une des trois méthodes
suivantes pour effectuer la réduction : 'reduce-fraction-with-euclide-algorithm()',
'reduce-fraction-with-subtraction-algorithm()' et 'reduce-fraction-with-factorization-algorithm()'.
Elle affiche les informations selon la méthode utilisée
et chaque méthode renvoie une paire (Pair) correspondant
pour la clé de la paire au numérateur de la fraction réduite
et pour sa valeur au dénominateur.
=end pod

class IrreducibleFraction is export {
    has Int $.numerator is required is rw where { $_ > -1 or die "Valeur de champ invalide! Numérateur supérieur à -1 requis." };
    has Int $.denominator is required is rw where { $_ > 0 or die "Valeur de champ invalide! Dénominateur supérieur à 0 requis." };

    method reduce-fraction-with-euclide-algorithm(--> Pair) {
        my Int $n = self.numerator;
        my Int $d = self.denominator;
        my Pair $pair;
        my $are-prime = ArePrime.new(
            integer1 => $n,
            integer2 => $d,
            # subtract-or-euclide-algo => ':',
        );
        if (!$are-prime.have-common-divisor) {
            say "$n et $d sont premiers entre eux!";
            say "La fraction $n/$d est irréductible.";
            $pair = $n => $d; 
            return $pair;
        }

        say "On calcule le PGCD de $n et $d par l'algorithme d'Euclide :";
        my $pgcd = PGCD.new(
            integer1 => $n,
            integer2 => $d,
        );
        my Int $p = $pgcd.euclide_algorithm();
        say "On simplifie avec le PGCD trouvé :";
        my Int $dividend = $n div $p;
        my Int $divisor = $d div $p;
        say "$n/$d = $p × $dividend / $p × $divisor";
        say "$n/$d = $dividend/$divisor";
        if ($p == 1) {
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        } else {
            repeat {
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
                $p = $pgcd.euclide_algorithm();
                $dividend = $dvd;
                $divisor = $dvs;
            } until ($p == 1);
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        }
    }

    method reduce-fraction-with-subtraction-algorithm(--> Pair) {
        my Int $n = self.numerator;
        my Int $d = self.denominator;
        my Pair $pair;
        my $are-prime = ArePrime.new(
            integer1 => $n,
            integer2 => $d,
            # subtract-or-euclide-algo => ':',
        );
        if (!$are-prime.have-common-divisor) {
            say "$n et $d sont premiers entre eux!";
            say "La fraction $n/$d est irréductible.";
            $pair = $n => $d;
            return $pair;
        }

        say "On calcule le PGCD de $n et $d par l'algorithme des soustractions :";
        my $pgcd = PGCD.new(
            integer1 => $n,
            integer2 => $d,
        );
        my Int $p = $pgcd.subtraction_algorithm();
        say "On simplifie avec le PGCD trouvé :";
        my Int $dividend = $n div $p;
        my Int $divisor = $d div $p;
        say "$n/$d = $p × $dividend / $p × $divisor";
        say "$n/$d = $dividend/$divisor";
        if ($p == 1) {
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        } else {
            repeat {
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
            } until ($p == 1);
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        }
    }

    method reduce-fraction-with-factorization-algorithm(--> Pair) {
        my Int $n = self.numerator;
        my Int $d = self.denominator;
        my Pair $pair;
        my $are-prime = ArePrime.new(
            integer1 => $n,
            integer2 => $d,
            # subtract-or-euclide-algo => ':',
        );
        if (!$are-prime.have-common-divisor) {
            say "$n et $d sont premiers entre eux!";
            say "La fraction $n/$d est irréductible.";
            $pair = $n => $d;
            return $pair;
        }

        say "On calcule le PGCD de $n et $d par la décomposition en facteurs premiers :";
        my $pgcd = PGCD.new(
            integer1 => $n,
            integer2 => $d,
        );
        my Int $p = $pgcd.factorization_algorithm();
        say "On simplifie avec le PGCD trouvé :";
        my Int $dividend = $n div $p;
        my Int $divisor = $d div $p;
        say "$n/$d = $p × $dividend / $p × $divisor";
        say "$n/$d = $dividend/$divisor";
        if ($p == 1) {
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        } else {
            repeat {
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if (!$are-prime.have-common-divisor) {
                    say "$dividend et $divisor sont premiers entre eux!";
                    say "La fraction $dividend/$divisor est irréductible.";
                    $p = 1;
                    $pair = $dividend => $divisor;
                    return $pair;
                }
                say "La fraction $dividend/$divisor est réductible :";
                my Int $dvd = $dividend div $p;
                my Int $dvs = $divisor div $p;
                say "$dividend/$divisor = $p × $dvd / $p × $dvs";
                $pgcd.integer1 = $dvd;
                $pgcd.integer2 = $dvs;
                $p = $pgcd.factorization_algorithm();
                $dividend = $dvd;
                $divisor = $dvs;
            } until ($p == 1);
            say "La fraction $dividend/$divisor est irréductible.";
            $pair = $dividend => $divisor;
            return $pair;
        }
    }

}
