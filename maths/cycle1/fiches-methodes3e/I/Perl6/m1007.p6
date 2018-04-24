#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe07;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 14,
        integer2 => 55,
        # Pour construire la classe 'CommonDivisorsListing'
        # pour utiliser la méthode 'list-divisors'
        array-or-hash => '@',
    );
    my Bool $are-prime = $prime.have-common-divisors();
    if $are-prime {
        say "Les nombres 14 et 55 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres 14 et 55 ne sont donc pas premiers entre eux.";
    }
}

exercise_07();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

