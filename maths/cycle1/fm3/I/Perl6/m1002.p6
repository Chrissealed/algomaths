#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe02;
use are-prime;

sub answering {
    my $are-prime = ArePrime.new(
        integer1 => 4435,
        integer2 => 1176,
        # Pour construire la classe, pour la méthode 'euclide_algorithm'
        subtract-or-euclide-algo => ':',
    );
    my $have-common-divisor = $are-prime.have-common-divisor();
    if !$have-common-divisor {
        say "Les nombres 4435 et 1176 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres 4435 et 1176 ne sont donc pas premiers entre eux.";
    }
}

exercise_02();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

