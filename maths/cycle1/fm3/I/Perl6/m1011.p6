#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe11;
use are-prime;

sub answering {
    my $are-prime = ArePrime.new(
        integer1 => 493,
        integer2 => 203,
        # Pour construire la classe, pour la méthode 'subtraction_algorithm'
        subtract-or-euclide-algo => '_',
    );
    my Bool $have-common-divisor = $are-prime.have-common-divisor();
    if !$have-common-divisor {
        say "Les nombres 493 et 203 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres 493 et 203 ne sont donc pas premiers entre eux.";
    }
}

exercise_11();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

