#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe06, :examples;
use are-prime;

sub answering {
    my Int $n1 = 77;
    my Int $n2 = 1001;
    my $are-prime = ArePrime.new(
        integer1 => $n1,
        integer2 => $n2,
    );
    # Recherche de tous les diviseurs communs aux nombres
    my Bool $have-common-divisors = $are-prime.have-common-divisors();
    if !$have-common-divisors {
        say "Les nombres $n1 et $n2 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres $n1 et $n2 ne sont donc pas premiers entre eux.";
    }
}

exercise_06();
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

