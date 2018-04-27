#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe06;
use are-prime;

sub answering {
    my $are-prime = ArePrime.new(
        integer1 => 77,
        integer2 => 1001,
        # Pour construire la classe, pour la méthode 'euclide_algorithm'
        subtract-or-euclide-algo => ':',
    );
    my $have-common-divisor = $are-prime.have-common-divisor();
    if !$have-common-divisor {
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

