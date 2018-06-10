#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe09, :examples;
use are-prime;

sub answering {
    my $are-prime = ArePrime.new(
        integer1 => 5167,
        integer2 => 2277,
        # Pour construire la classe, pour la méthode 'euclide_algorithm'
        subtract-or-euclide-algo => ':',
    );
    my $have-common-divisor = $are-prime.have-common-divisor();
    if !$have-common-divisor {
        say "Les nombres 5167 et 2277 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres 5167 et 2277 ne sont donc pas premiers entre eux.";
    }
}

exercise_09();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

