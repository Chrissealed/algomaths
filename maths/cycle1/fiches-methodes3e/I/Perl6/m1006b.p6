#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe06;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 77,
        integer2 => 1001,
        # Pour construire la classe 'CommonDivisorsListing'
        # pour utiliser la méthode 'list-divisors'
        array-or-hash => '@',
    );
    my Bool $are-prime = $prime.have-common-divisors();
    if $are-prime {
        say "Les nombres 77 et 1001 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres 77 et 1001 ne sont donc pas premiers entre eux.";
    }
}

exercise_06();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

