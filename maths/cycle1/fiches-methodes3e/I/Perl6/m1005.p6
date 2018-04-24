#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe05;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 2013,
        integer2 => 471,
        # Pour construire la classe, pour la méthode 'euclide_algorithm'
        subtract-or-euclide-algo => ':',
    );
    my $are-prime = $prime.have-common-divisor();
    if $are-prime {
        say "Les nombres 2013 et 471 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres 2013 et 471 ne sont donc pas premiers entre eux.";
    }
}

exercise_05();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

