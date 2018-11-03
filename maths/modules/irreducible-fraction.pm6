unit module Irreducible-fraction;

use v6;

=begin pod
=NAME class B<IrreducibleFraction>.
=AUTHOR Christian Béloscar.
=VERSION 0.1.
=for head1
L'objectif de ce module est de renvoyer la fraction irréductible
de la fraction initiale dont on passe le numérateur et le dénominateur
aux attributs B<numerator> et B<denominator>, le numérateur étant
un entier quelconque et le dénominateur un entier différent de 0.

Il y a un 3e champ facultatif B<pgcd-algorithm> du type string (Str)
qui permet de préciser l'argument de la méthode du module B<are-prime.pm6>
B<have-common-divisor>($pgcd-algorithm)
qui sera utilisée pour effectuer les calculs en interne.
4 choix sont possibles, on a :
=item 1) 'euclide' ou 'e' ou ':' ou '÷' (par défaut);
=item 2) 'subtraction' ou 's' ou '-' ou '−';
=item 3) 'factorization' ou 'f' ou '*' ou '×';
=item 4) 'divisors-listing' ou 'd' ou '#' ou '/'.

La classe B<IrreducibleFraction> utilise l'une des trois méthodes
suivantes pour effectuer la réduction :
=item B<reduce-fraction-with-euclide-algorithm>(Str $sign = ''),
=item B<reduce-fraction-with-subtraction-algorithm>(Str $sign = '') et
=item B<reduce-fraction-with-factorization-algorithm>(Str $sign = '').

Elle affiche les informations selon la méthode utilisée
et chaque méthode renvoie une B<paire> (Pair) correspondant
pour la clé de la paire au numérateur de la fraction réduite
et pour sa valeur au dénominateur.

L'argument B<$sign> de type string est destiné à gérer correctement
les fractions dont le signe est négatif; il peut prendre la valeur
'-'; le signe positif, lui, n'est pas affiché
et donc sa valeur par défaut est '', une chaîne vide.

=end pod

use are-prime;
use pgcd;

class IrreducibleFraction is export {
    has Int $.numerator is required is rw;
    has Int $.denominator is required is rw where { $_ != 0 or die "Valeur de champ invalide! Dénominateur différent de 0 requis." };
    # Champ utilisé par la classe ArePrime dans sa méthode 'have-common-divisor($pgcd-algorithm)'
    has Str $.pgcd-algorithm is rw where { $_ ~~ / euclide || e || ':' || '÷' || subtraction || s || '-' || '−' || factorization || f || '*' || '×' || divisors\-listing || 'd' || '#' || '/' / 
    or die "Valeur de champ invalide! Précisez 'euclide' ou 'e' ou ':' ou '÷'; 'subtraction' ou 's' ou '-'; 'factorization' ou 'f' ou '*' ou '×'; 'divisors-listing' ou 'd' ou '#' ou '/'"; }
    = 'euclide';

    method reduce-fraction-with-euclide-algorithm(Str $sign = '' --> Pair) {
        my Int $n = self.numerator;
        my Int $d = self.denominator;
        my Pair $pair;
        if ($n == 0) { say '0'; $pair = $n => $d; return $pair; }
        if ($n == 1 || $n == -1) {
            $pair = $sign ~ $n => $d;
            say "La fraction $sign$n/$d est irréductible.";
            return $pair;
        }
        if ($d == 1 || $d == -1) {
            $pair = $sign ~ $n => $d;
            say "La fraction $sign$n/$d est irréductible.";
            return $pair;
        }
        my Str $algo = self.pgcd-algorithm;
        my $are-prime = ArePrime.new(
            integer1 => $n,
            integer2 => $d,
        );
        if !$are-prime.have-common-divisor($algo) {
            say "$sign$n et $d sont premiers entre eux!";
            say "La fraction $sign$n/$d est irréductible.";
            $pair = $sign ~ $n => $d; 
            return $pair;
        }

        #say "On calcule le PGCD de $n et $d par l'algorithme d'Euclide :";
        my $pgcd = PGCD.new(
            integer1 => $n,
            integer2 => $d,
        );
        my Int $p = $pgcd.euclide_algorithm();
        say "On simplifie avec le PGCD trouvé :";
        my Int $dividend = $n div $p;
        my Int $divisor = $d div $p;
        say "$n/$d = $p × $dividend / $p × $divisor";
        say "$n/$d = $sign$dividend/$divisor";
        if ($p == 1 || $p == -1) {
            say "La fraction $sign$dividend/$divisor est irréductible.";
            $pair = $sign ~ $dividend => $divisor;
            return $pair;
        } else {
            repeat {
                if ($dividend == 1 || $dividend == -1) {
                    $pair = $sign ~ $dividend => $divisor;
                    return $pair;
                }
                if ($divisor == 1 || $divisor == -1) {
                    $pair = $sign ~ $dividend => $divisor;
                    return $pair;
                }
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if (!$are-prime.have-common-divisor($algo)) {
                    say "$dividend et $divisor sont premiers entre eux!";
                    say "La fraction $dividend/$divisor est irréductible.";
                    $p = 1;
                    $pair = $sign ~ $dividend => $divisor;
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
            say "La fraction $sign$dividend/$divisor est irréductible.";
            $pair = $sign ~ $dividend => $divisor;
            return $pair;
        }
    }

    method reduce-fraction-with-subtraction-algorithm(Str $sign = '' --> Pair) {
        my Int $n = self.numerator;
        my Int $d = self.denominator;
        my Pair $pair;
        if ($n == 0) { say '0'; $pair = $n => $d; return $pair; }
        if ($n == 1 || $n == -1) {
            $pair = $sign ~ $n => $d;
            say "La fraction $sign$n/$d est irréductible.";
            return $pair;
        }
        if ($d == 1 || $d == -1) {
            $pair = $sign ~ $n => $d;
            say "La fraction $sign$n/$d est irréductible.";
            return $pair;
        }
        my Str $algo = self.pgcd-algorithm;
        my $are-prime = ArePrime.new(
            integer1 => $n,
            integer2 => $d,
        );
        if !$are-prime.have-common-divisor($algo) {
            say "$n et $d sont premiers entre eux!";
            say "La fraction $sign$n/$d est irréductible.";
            $pair = $sign ~ $n => $d;
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
        #my Int $dividend = $n div abs($p);
        my Int $dividend = $n div $p;
        #my Int $divisor = $d div abs($p);
        my Int $divisor = $d div $p;
        say "$n/$d = $p × $dividend / $p × $divisor";
        say "$n/$d = $sign$dividend/$divisor";
        if ($p == 1 || $p == -1) {
            say "La fraction $sign$dividend/$divisor est irréductible.";
            $pair = $sign ~ $dividend => $divisor;
            return $pair;
        } else {
            repeat {
                if ($dividend == 1 || $dividend == -1) {
                    $pair = $dividend => $divisor;
                    say "La fraction $dividend/$divisor est irréductible.";
                    return $pair;
                }
                if ($divisor == 1 || $divisor == -1) {
                    $pair = $sign ~ $dividend => $divisor;
                    say "La fraction $sign$dividend/$divisor est irréductible.";
                    return $pair;
                }
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if (!$are-prime.have-common-divisor) {
                    say "$dividend et $divisor sont premiers entre eux!";
                    say "La fraction $sign$dividend/$divisor est irréductible.";
                    $p = 1;
                    $pair = $sign ~ $dividend => $divisor;
                    return $pair;
                }
                say "et la fraction $dividend/$divisor est réductible :";
                my Int $dvd = $dividend div $p;
                my Int $dvs = $divisor div $p;
                say "$sign$dividend/$divisor = $p × $dvd / $p × $dvs";
                $pgcd.integer1 = $dvd;
                $pgcd.integer2 = $dvs;
                $p = $pgcd.subtraction_algorithm();
                $dividend = $dvd;
                $divisor = $dvs;
            } until ($p == 1 || $p == -1);
            say "La fraction $sign$dividend/$divisor est irréductible.";
            $pair = $sign ~ $dividend => $divisor;
            return $pair;
        }
    }

    method reduce-fraction-with-factorization-algorithm(Str $sign = '' --> Pair) {
        my Int $n = self.numerator;
        my Int $d = self.denominator;
        my Pair $pair;
        if ($n == 0) { say '0'; $pair = $n => $d; return $pair; }
        if ($n == 1 || $n == -1) {
            $pair = $sign ~ $n => $d;
            say "La fraction $sign$n/$d est irréductible.";
            return $pair;
        }
        if ($d == 1 || $d == -1) {
            $pair = $sign ~ $n => $d;
            say "La fraction $sign$n/$d est irréductible.";
            return $pair;
        }
        my Str $algo = self.pgcd-algorithm;
        my $are-prime = ArePrime.new(
            integer1 => $n,
            integer2 => $d,
        );
        if !$are-prime.have-common-divisor($algo) {
            say "$n et $d sont premiers entre eux!";
            say "La fraction $sign$n/$d est irréductible.";
            $pair = $sign ~ $n => $d;
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
        #my Int $dividend = $n div abs($p);
        my Int $dividend = $n div $p;
        #my Int $divisor = $d div abs($p);
        my Int $divisor = $d div $p;
        say "$n/$d = $p × $sign$dividend / $p × $divisor";
        say "$n/$d = $sign$dividend/$divisor";
        if ($p == 1 || $p == -1) {
            #$pair = $dividend => $divisor;
            $pair = $sign ~ $dividend => $divisor;
            say "La fraction $sign$dividend/$divisor est irréductible.";
            return $pair;
        } else {
            repeat {
                if ($dividend == 1 || $dividend == -1) {
                    $pair = $dividend => $divisor;
                    #$pair = $sign ~ $dividend => $divisor;
                    say "La fraction $dividend/$divisor est irréductible.";
                    return $pair;
                }
                if ($divisor == 1 || $divisor == -1) {
                    $pair = $sign ~ $dividend => $divisor;
                    say "La fraction $sign$dividend/$divisor est irréductible.";
                    return $pair;
                }
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if !$are-prime.have-common-divisor($algo) {
                    say "$dividend et $divisor sont premiers entre eux!";
                    say "La fraction $sign$dividend/$divisor est irréductible.";
                    $p = 1;
                    $pair = $sign ~ $dividend => $divisor;
                    return $pair;
                }
                say "La fraction $dividend/$divisor est réductible :";
                # Eviter les effets de bord des nombres négatifs
                #my Int $dvd = $dividend div abs($p);
                my Int $dvd = $dividend div $p;
                #my Int $dvs = $divisor div abs($p);
                my Int $dvs = $divisor div $p;
                say "$dividend/$divisor = $p × $dvd / $p × $dvs";
                $pgcd.integer1 = $dvd;
                $pgcd.integer2 = $dvs;
                $p = $pgcd.factorization_algorithm();
                $dividend = $dvd;
                $divisor = $dvs;
            } until ($p == 1 || $p == -1);
            say "La fraction $sign$dividend/$divisor est irréductible.";
            $pair = $sign ~ $dividend => $divisor;
            return $pair;
        }
    }

}
