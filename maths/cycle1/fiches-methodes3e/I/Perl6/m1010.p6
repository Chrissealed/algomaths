#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe10;
use are-prime;

sub answering {
    my $are-prime = ArePrime.new(
        integer1 => 9438,
        integer2 => 6799,
        # Pour construire la classe, pour la méthode 'euclide_algorithm'
        subtract-or-euclide-algo => ':',
    );
    my $have-common-divisor = $are-prime.have-common-divisor();
    if !$have-common-divisor {
        say "Les nombres 9438 et 6799 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres 9438 et 6799 ne sont donc pas premiers entre eux.";
    }
}

exercise_10();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

