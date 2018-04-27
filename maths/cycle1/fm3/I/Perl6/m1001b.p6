#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe01;
use are-prime;

sub answering {
    my $are-prime = ArePrime.new(
        integer1 => 4664,
        integer2 => 2915,
        # Pour construire la classe 'CommonDivisorsListing'
        # pour utiliser la méthode 'list-divisors'
        array-or-hash => '@',
    );
    my Bool $have-common-divisors = $are-prime.have-common-divisors();
    if !$have-common-divisors {
        say "Les nombres 4664 et 2915 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres 4664 et 2915 ne sont donc pas premiers entre eux.";
    }
}

exercise_01();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

