#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method10 :methodwording, :exe13, :examples;
use are-prime;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1013.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int $n1 = 2929;
    my Int $n2 = 10605;
    my $are-prime = ArePrime.new(
        t => $t,
        integer1 => $n1,
        integer2 => $n2,
    );
    my Bool $have-common-divisors = $are-prime.have-common-divisors();
    if !$have-common-divisors {
        $t.tput: "Les nombres $n1 et $n2 sont donc premiers entre eux";
        $t.tput: "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        $t.tput: "Les nombres $n1 et $n2 ne sont donc pas premiers entre eux.";
        $t.tput: "On peut dire aussi que $n1 = 29 × 101 et $n2 = 105 × 101";
        $t.tput: "donc $n1 et $n2 sont divisibles par 101, 101 est un diviseur";
        $t.tput: "commun de $n1 et $n2 donc PGCD($n1 ; $n2) n'est pas égal à 1";
        $t.tput: "donc $n1 et $n2 ne sont pas des nombres premiers entre eux.";
    }
}

exercise_13();
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

