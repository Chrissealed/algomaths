#!/usr/bin/env perl6

use v6;
use corrective;
use method10 :methodwording, :exe04, :examples;
use are-prime;

sub answering {
    my Int $n1 = 174702;
    my Int $n2 = 119115;
    my $are-prime = ArePrime.new(
        integer1 => $n1,
        integer2 => $n2,
    );
    my $have-common-divisor = $are-prime.have-common-divisor(':');
    if !$have-common-divisor {
        say "Les nombres $n1 et $n2 sont donc premiers entre eux";
        say "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        say "Les nombres $n1 et $n2 ne sont donc pas premiers entre eux.";
    }
}

exercise_04();
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

