unit module Irreducible-fraction;

use v6;

=begin pod
=NAME class B<IrreducibleFraction> in B<algomaths> Perl6 modules : maths/modules/pm6/B<irreducible-fraction.pm6>
=AUTHOR https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.27

=for head1
L'objectif de ce module est de renvoyer la fraction irréductible
de la fraction initiale

dont on passe le numérateur et le dénominateur
aux attributs I<numerator> et I<denominator>, le numérateur étant
un entier relatif quelconque et le dénominateur un entier différent de 0.

Il y a un 3e champ facultatif B<pgcd-algorithm> du type string (Str)
qui permet de préciser l'argument de la méthode du module B<are-prime.pm6>
B<have-common-divisor>(Str $pgcd-algorithm)
qui sera utilisée pour effectuer les calculs en interne.
4 choix sont possibles, on a :
=item 1) 'euclide' ou 'e' ou ':' ou '÷' (par défaut);
=item 2) 'subtraction' ou 's' ou '-' ou '−';
=item 3) 'factorization' ou 'f' ou '*' ou '×';
=item 4) 'divisors-listing' ou 'd' ou '#' ou '/'.

La valeur par défaut de cet attribut est B<euclide>.

La classe B<IrreducibleFraction> utilise l'une des trois méthodes
suivantes pour effectuer la réduction :
=item B<reduce-fraction-with-euclide-algorithm(Str $sign = '')>,
=item B<reduce-fraction-with-subtraction-algorithm(Str $sign = '')> et
=item B<reduce-fraction-with-factorization-algorithm(Str $sign = '')>.

Elle affiche les informations selon la méthode utilisée
et chaque méthode renvoie une B<paire> (Pair) correspondant
pour la clé de la paire au numérateur de la fraction réduite
et pour sa valeur au dénominateur.

L'argument B<$sign> de type string est destiné à gérer correctement
les fractions dont le signe est négatif; il peut prendre la valeur
'-'; le signe positif, lui, n'est pas affiché
et donc sa valeur par défaut est '', une chaîne vide.

La classe possède en outre un attribut destiné à écrire
dans un fichier les informations qui apparaissent à l'écran
et qui décrivent les différentes étapes des opérations.
Il s'agit de B<Teeput::Tput $t is required is rw> :
il faut lui passer un objet de type B<Teeput::Tput> du module
B<teeput.pm6>. Référez-vous à la doc de ce module
pour plus d'informations.
=end pod

use are-prime;
use pgcd;
use teeput;

class IrreducibleFraction is export {
    has Teeput::Tput $.t is required is rw;

    has Int $.numerator is required is rw;
    has Int $.denominator is required is rw where { $_ != 0 or die "Valeur de champ invalide! Dénominateur différent de 0 requis." };
    # Champ utilisé par la classe ArePrime dans sa méthode 'have-common-divisor($pgcd-algorithm)'
    my $pgcd-algorithm-one-junction = 'euclide' ^ 'e' ^ ':' ^ '÷' ^
                                      'subtraction' ^ 's' ^ '-' ^ '−' ^
                                      'factorization' ^ 'f' ^ '*' ^ '×' ^
                                      'divisors-listing' ^ 'd' ^ '#' ^ '/';
    has Str $.pgcd-algorithm is rw where { $_ ~~ $pgcd-algorithm-one-junction or
        die "Valeur de champ invalide! Précisez
        'euclide' ou 'e' ou ':' ou '÷';
        'subtraction' ou 's' ou '-' ou '−';
        'factorization' ou 'f' ou '*' ou '×';
        'divisors-listing' ou 'd' ou '#' ou '/'"; }
    = 'euclide';

    method reduce-fraction-with-euclide-algorithm(Str $sign = '' --> Pair) {
        my Int $n = abs($!numerator);
        my Int $d = abs($!denominator);
        my Pair $pair;
        if ($n == $d+1) || ($n == $d-1) {
            $!t.tput: "La fraction $!numerator/$!denominator est irréductible.";
            $pair = $!numerator => $!denominator;
            return $pair;
        }
        if ($!numerator == 0) { $!t.tput: '0'; $pair = $!numerator => $!denominator; return $pair; }
        if $!numerator == (1 || -1) && $!denominator == (1 || -1) {
            $pair = $!numerator => $!denominator;
            $!t.tput: "La fraction $!numerator/$!denominator est irréductible.";
            $!t.tput: "Fraction résolue : {$sign ~ $pair.key}.";
            return $pair;
        }
        if ($n == 1 || $n == -1) {
            $pair = $sign ~ $n => $d;
            $!t.tput: "La fraction $!numerator/$!denominator est irréductible.";
            return $pair;
        }
        if ($d == 1 || $d == -1) {
            $pair = $sign ~ $n => $d;
            $!t.tput: "La fraction $!numerator/$!denominator est irréductible.";
            $!t.tput: "Fraction résolue : {$sign ~ $pair.key}.";
            return $pair;
        }
        my Str $algo = $!pgcd-algorithm;
        my $are-prime = ArePrime.new(
            t => $!t,
            integer1 => $n,
            integer2 => $d,
        );
        if ! $are-prime.have-common-divisor($algo) {
            $!t.tput: "$!numerator et $!denominator sont premiers entre eux!";
            $!t.tput: "La fraction $!numerator/$!denominator est irréductible.";
            $pair = $!numerator => $!denominator;
            return $pair;
        }

        # On calcule le PGCD de $n et $d par l'algorithme d'Euclide :";
        my $pgcd = PGCD.new(
            t => $!t,
            integer1 => $n,
            integer2 => $d,
        );
        my Int $PGCD = $pgcd.euclide_algorithm();
        $!t.tput: "On simplifie avec le PGCD trouvé :";
        my Int $dividend = $n div $PGCD;
        my Int $divisor = $d div $PGCD;
        $!t.tput: "$sign$n/$d = $PGCD × $sign$dividend / $PGCD × $divisor";
        $!t.tput: "$sign$n/$d = $sign$dividend/$divisor";

        if ($PGCD == 1 || $PGCD == -1) {
            $!t.tput: "La fraction $sign$dividend/$divisor est irréductible.";
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
                    $!t.tput: "Fraction résolue : {$sign ~ $pair.key}.";
                    return $pair;
                }
                # Redéfinition de la classe ArePrime déclarée plus haut
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if (! $are-prime.have-common-divisor($algo)) {
                    $!t.tput: "$dividend et $divisor sont premiers entre eux!";
                    $!t.tput: "La fraction $sign$dividend/$divisor est irréductible.";
                    $PGCD = 1;
                    $pair = $sign ~ $dividend => $divisor;
                    return $pair;
                }
                $!t.tput: "et la fraction $dividend/$divisor est réductible :";
                my Int $dvd = $dividend div $PGCD;
                my Int $dvs = $divisor div $PGCD;
                $!t.tput: "$dividend/$divisor = $PGCD × $dvd / $PGCD × $dvs";
                $pgcd.integer1 = $dvd;
                $pgcd.integer2 = $dvs;
                $PGCD = $pgcd.euclide_algorithm();
                $dividend = $dvd;
                $divisor = $dvs;
            } until ($PGCD == 1 || $PGCD == -1);
            $!t.tput: "La fraction $sign$dividend/$divisor est irréductible.";
            $pair = $sign ~ $dividend => $divisor;
            return $pair;
        }
    }

    method reduce-fraction-with-subtraction-algorithm(Str $sign = '' --> Pair) {
        my Int $n = abs($!numerator);
        my Int $d = abs($!denominator);
        my Pair $pair;
        if ($n == $d+1) || ($n == $d-1) {
            $!t.tput: "La fraction $!numerator/$!denominator est irréductible.";
            $pair = $!numerator => $!denominator;
            return $pair;
        }
        if ($n == 0) { $!t.tput: '0'; $pair = $n => $d; return $pair; }
        if $n == (1 || -1) && $d == (1 || -1) {
            $pair = $sign ~ $n => $d;
            $!t.tput: "La fraction $n/$d est irréductible.";
            $!t.tput: "Fraction résolue : $sign ~ {$pair.key.Int div $pair.value}.";
            return $pair;
        }
        if ($n == 1 || $n == -1) {
            $pair = $sign ~ $n => $d;
            $!t.tput: "La fraction $n/$d est irréductible.";
            return $pair;
        }
        if ($d == 1 || $d == -1) {
            $pair = $sign ~ $n => $d;
            $!t.tput: "La fraction $n/$d est irréductible.";
            $!t.tput: "Fraction résolue : $sign ~ {$pair.key}.";
            return $pair;
        }
        my Str $algo = $!pgcd-algorithm;
        my $are-prime = ArePrime.new(
            t => $!t,
            integer1 => $n,
            integer2 => $d,
        );
        if ! $are-prime.have-common-divisor($algo) {
            $!t.tput: "$n et $d sont premiers entre eux!";
            $!t.tput: "La fraction $n/$d est irréductible.";
            $pair = $sign ~ $n => $d;
            return $pair;
        }

        # On calcule le PGCD de $n et $d par l'algorithme des soustractions 
        my $pgcd = PGCD.new(
            t => $!t,
            integer1 => $n,
            integer2 => $d,
        );
        my Int $PGCD = $pgcd.subtraction_algorithm();
        $!t.tput: "On simplifie avec le PGCD trouvé :";
        my Int $dividend = $n div $PGCD;
        my Int $divisor = $d div $PGCD;
        $!t.tput: "$n/$d = $PGCD × $dividend / $PGCD × $divisor";
        $!t.tput: "$n/$d = $dividend/$divisor";
        if ($PGCD == 1 || $PGCD == -1) {
            $!t.tput: "La fraction $dividend/$divisor est irréductible.";
            $pair = $sign ~ $dividend => $divisor;
            return $pair;
        } else {
            repeat {
                if ($dividend == 1 || $dividend == -1) {
                    $pair = $dividend => $divisor;
                    $!t.tput: "La fraction $dividend/$divisor est irréductible.";
                    return $pair;
                }
                if ($divisor == 1 || $divisor == -1) {
                    $pair = $sign ~ $dividend => $divisor;
                    $!t.tput: "La fraction $dividend/$divisor est irréductible.";
                    $!t.tput: "Fraction résolue : {$pair.key.Int div $pair.value}.";
                    return $pair;
                }
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if ! $are-prime.have-common-divisor($algo) {
                    $!t.tput: "$dividend et $divisor sont premiers entre eux!";
                    $!t.tput: "La fraction $dividend/$divisor est irréductible.";
                    $PGCD = 1;
                    $pair = $sign ~ $dividend => $divisor;
                    return $pair;
                }
                $!t.tput: "et la fraction $sign$dividend/$divisor est réductible :";
                my Int $dvd = $dividend div $PGCD;
                my Int $dvs = $divisor div $PGCD;
                $!t.tput: "$sign$dividend/$divisor = $PGCD × $dvd / $PGCD × $dvs";
                $pgcd.integer1 = $dvd;
                $pgcd.integer2 = $dvs;
                $PGCD = $pgcd.subtraction_algorithm();
                $dividend = $dvd;
                $divisor = $dvs;
            } until ($PGCD == 1 || $PGCD == -1);
            $!t.tput: "La fraction $dividend/$divisor est irréductible.";
            $pair = $sign ~ $dividend => $divisor;
            return $pair;
        }
    }

    method reduce-fraction-with-factorization-algorithm(Str $sign = '' --> Pair) {
        my Int $n = abs($!numerator);
        my Int $d = abs($!denominator);
        my Pair $pair;
        if ($n == $d+1) || ($n == $d-1) {
            $!t.tput: "La fraction $!numerator/$!denominator est irréductible.";
            $pair = $!numerator => $!denominator;
            return $pair;
        }
        if ($n == 0) { $!t.tput: '0'; $pair = $!numerator => $!denominator; return $pair; }
        if $n == (1 || -1) && $d == (1 || -1) {
            $pair = $sign ~ $n => $d;
            $!t.tput: "La fraction $sign$n/$d est irréductible.";
            $!t.tput: "Fraction résolue : {$pair.key.Int div $pair.value}.";
            return $pair;
        }
        if ($n == 1 || $n == -1) {
            $pair = $sign ~ $n => $d;
            $!t.tput: "La fraction $sign$n/$d est irréductible.";
            return $pair;
        }
        if ($d == 1 || $d == -1) {
            $pair = $sign ~ $n => $d;
            $!t.tput: "La fraction $sign$n/$d est irréductible.";
            return $pair;
        }
        my Str $algo = $!pgcd-algorithm;
        my $are-prime = ArePrime.new(
            t => $!t,
            integer1 => $n,
            integer2 => $d,
        );
        if ! $are-prime.have-common-divisor($algo) {
            $!t.tput: "$n et $d sont premiers entre eux!";
            $!t.tput: "La fraction $sign$n/$d est irréductible.";
            $pair = $sign ~ $n => $d;
            return $pair;
        }

        # On calcule le PGCD de $n et $d par la décomposition en facteurs premiers
        my $pgcd = PGCD.new(
            t => $!t,
            integer1 => $n,
            integer2 => $d,
        );
        my Int $PGCD = $pgcd.factorization_algorithm();
        $!t.tput: "On simplifie avec le PGCD trouvé :";
        my Int $dividend = $n div $PGCD;
        my Int $divisor = $d div $PGCD;
        $!t.tput: "$n/$d = $PGCD × $sign$dividend / $PGCD × $divisor";
        $!t.tput: "$n/$d = $sign$dividend/$divisor";
        if ($PGCD == 1 || $PGCD == -1) {
            $pair = $sign ~ $dividend => $divisor;
            $!t.tput: "La fraction $sign$dividend/$divisor est irréductible.";
            return $pair;
        } else {
            repeat {
                if ($dividend == 1 || $dividend == -1) {
                    $pair = $dividend => $divisor;
                    $!t.tput: "La fraction $dividend/$divisor est irréductible.";
                    return $pair;
                }
                if ($divisor == 1 || $divisor == -1) {
                    $pair = $sign ~ $dividend => $divisor;
                    $!t.tput: "La fraction $sign$dividend/$divisor est irréductible.";
                    return $pair;
                }
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if ! $are-prime.have-common-divisor($algo) {
                    $!t.tput: "$dividend et $divisor sont premiers entre eux!";
                    $!t.tput: "La fraction $sign$dividend/$divisor est irréductible.";
                    $PGCD = 1;
                    $pair = $sign ~ $dividend => $divisor;
                    return $pair;
                }
                $!t.tput: "La fraction $dividend/$divisor est réductible :";
                my Int $dvd = $dividend div $PGCD;
                my Int $dvs = $divisor div $PGCD;
                $!t.tput: "$dividend/$divisor = $PGCD × $dvd / $PGCD × $dvs";
                $pgcd.integer1 = $dvd;
                $pgcd.integer2 = $dvs;
                $PGCD = $pgcd.factorization_algorithm();
                $dividend = $dvd;
                $divisor = $dvs;
            } until ($PGCD == 1 || $PGCD == -1);
            $!t.tput: "La fraction $sign$dividend/$divisor est irréductible.";
            $pair = $sign ~ $dividend => $divisor;
            return $pair;
        }
    }

}
