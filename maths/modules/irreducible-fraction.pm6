unit module irreducible-fraction;

use v6;
use are-prime;
use pgcd;

class IrreducibleFraction is ArePrime is export {
    has Int $.numerator is rw where { $_ > -1 or die "Valeur de champ invalide! Numérateur supérieur à -1 requis." };
    has Int $.denominator is rw where { $_ > 0 or die "Valeur de champ invalide! Dénominateur supérieur à 0 requis." };

    method reduce-fraction-with-euclide-algorithm() {
        my $are-prime = ArePrime.new(
            integer1 => $!numerator,
            integer2 => $!denominator,
            subtract-or-euclide-algo => ':',
        );
        if (!$are-prime.have-common-divisor) {
            say "$!numerator et $!denominator sont premiers entre eux!";
            say "La fraction $!numerator/$!denominator est irréductible.";
            return True;
        }

        say "On calcule le PGCD de $!numerator et $!denominator par l'algorithme d'Euclide";
        say "(voir méthodes 7 et 8 de fm3).";
        my $pgcd = PGCD.new(
            integer1 => $!numerator,
            integer2 => $!denominator,
        );
        my Int $p = $pgcd.euclide_algorithm();
        say "On simplifie avec le PGCD trouvé :";
        my Int $dividend = $!numerator div $p;
        my Int $divisor = $!denominator div $p;
        say "$!numerator/$!denominator = $p × $dividend / $p × $divisor";
        say "$!numerator/$!denominator = $dividend/$divisor";
        if ($p == 1) {
            say "La fraction $dividend/$divisor est irréductible.";
        } else {
            repeat {
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if (!$are-prime.have-common-divisor) {
                    say "$dividend et $divisor sont premiers entre eux!";
                    say "La fraction $dividend/$divisor est irréductible.";
                    $p = 1;
                    return True;
                }
                say "et la fraction $dividend/$divisor est réductible";
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
        }
    }

    method reduce-fraction-with-subtraction-algorithm() {
        my $are-prime = ArePrime.new(
            integer1 => $!numerator,
            integer2 => $!denominator,
            subtract-or-euclide-algo => ':',
        );
        if (!$are-prime.have-common-divisor) {
            say "$!numerator et $!denominator sont premiers entre eux!";
            say "La fraction $!numerator/$!denominator est irréductible.";
            return True;
        }

        say "On calcule le PGCD de $!numerator et $!denominator par l'algorithme des soustractions";
        say "(voir méthodes 5 et 6 de fm3).";
        my $pgcd = PGCD.new(
            integer1 => $!numerator,
            integer2 => $!denominator,
        );
        my Int $p = $pgcd.subtraction_algorithm();
        say "On simplifie avec le PGCD trouvé :";
        my Int $dividend = $!numerator div $p;
        my Int $divisor = $!denominator div $p;
        say "$!numerator/$!denominator = $p × $dividend / $p × $divisor";
        say "$!numerator/$!denominator = $dividend/$divisor";
        if ($p == 1) {
            say "La fraction $dividend/$divisor est irréductible.";
        } else {
            repeat {
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if (!$are-prime.have-common-divisor) {
                    say "$dividend et $divisor sont premiers entre eux!";
                    say "La fraction $dividend/$divisor est irréductible.";
                    $p = 1;
                    return True;
                }
                say "et la fraction $dividend/$divisor est réductible";
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
        }
    }

    method reduce-fraction-with-factorization-algorithm() {
        my $are-prime = ArePrime.new(
            integer1 => $!numerator,
            integer2 => $!denominator,
            subtract-or-euclide-algo => ':',
        );
        if (!$are-prime.have-common-divisor) {
            say "$!numerator et $!denominator sont premiers entre eux!";
            say "La fraction $!numerator/$!denominator est irréductible.";
            return True;
        }

        say "On calcule le PGCD de $!numerator et $!denominator par la décomposition en facteurs premiers";
        say "(voir méthode 7 de bbw).";
        my $pgcd = PGCD.new(
            integer1 => $!numerator,
            integer2 => $!denominator,
        );
        my Int $p = $pgcd.factorization_algorithm();
        say "On simplifie avec le PGCD trouvé :";
        my Int $dividend = $!numerator div $p;
        my Int $divisor = $!denominator div $p;
        say "$!numerator/$!denominator = $p × $dividend / $p × $divisor";
        say "$!numerator/$!denominator = $dividend/$divisor";
        if ($p == 1) {
            say "La fraction $dividend/$divisor est irréductible.";
        } else {
            repeat {
                $are-prime.integer1 = $dividend;
                $are-prime.integer2 = $divisor;
                if (!$are-prime.have-common-divisor) {
                    say "$dividend et $divisor sont premiers entre eux!";
                    say "La fraction $dividend/$divisor est irréductible.";
                    $p = 1;
                    return True;
                }
                say "La fraction $dividend/$divisor est réductible.";
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
            return True;
        }
    }

}

