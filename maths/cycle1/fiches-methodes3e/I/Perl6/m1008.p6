#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe08;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 121,
        integer2 => 450,
        # Pour construire la classe 'CommonDivisorsListing'
        # pour utiliser la méthode 'list-divisors'
        array-or-hash => '@',
    );
    my Bool $are-prime = $prime.have-common-divisors();
    if $are-prime {
        say "Les nombres 121 et 450 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
        say "On peut dire aussi que les diviseurs de 121 sont 1, 11 et 121";
        say "qui ne sont pas diviseurs de 450, donc 1 est leur seul diviseur";
        say "commun donc PGCD(121 ; 450) = 1 donc 121 et 450 sont des";
        say "nombres premiers entre eux.";
    } else {
        say "Les nombres 121 et 450 ne sont donc pas premiers entre eux.";
    }
}

exercise_08();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

