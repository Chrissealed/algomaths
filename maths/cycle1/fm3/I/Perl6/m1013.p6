#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe13, :examples;
use are-prime;

sub answering {
    my $are-prime = ArePrime.new(
        integer1 => 2929,
        integer2 => 10605,
        # Pour construire la classe 'CommonDivisorsListing'
        # pour utiliser la méthode 'list-divisors'
        array-or-hash => '@',
    );
    my Bool $have-common-divisors = $are-prime.have-common-divisors();
    if !$have-common-divisors {
        say "Les nombres 2929 et 10605 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres 2929 et 10605 ne sont donc pas premiers entre eux.";
        say "On peut dire aussi que 2929 = 29 × 101 et 10605 = 105 × 101";
        say "donc 2929 et 10605 sont divisibles par 101, 101 est un diviseur";
        say "commun de 2929 et 10605 donc PGCD(2929 ; 10605) n'est pas égal à 1";
        say "donc 2929 et 10605 ne sont pas des nombres premiers entre eux.";
    }
}

exercise_13();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

