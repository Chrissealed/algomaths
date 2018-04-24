#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe01;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 4664,
        integer2 => 2915,
        # Pour construire la classe, pour la méthode 'subtraction_algorithm'
        subtract-or-euclide-algo => '_',
    );
    my Bool $are-prime = $prime.have-common-divisor();
    if $are-prime {
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

