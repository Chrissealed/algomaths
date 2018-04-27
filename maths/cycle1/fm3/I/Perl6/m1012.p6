#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe12;
use are-prime;

sub answering {
    my $are-prime = ArePrime.new(
        integer1 => 1450,
        integer2 => 2691,
        # Pour construire la classe, pour la méthode 'euclide_algorithm'
        subtract-or-euclide-algo => ':',
    );
    my $have-common-divisor = $are-prime.have-common-divisor();
    if !$have-common-divisor {
        say "Les nombres 1450 et 2691 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres 1450 et 2691 ne sont donc pas premiers entre eux.";
    }
}

exercise_12();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

