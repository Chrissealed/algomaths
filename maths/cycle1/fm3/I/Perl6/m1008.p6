#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method10 :methodwording, :exe08, :examples;
use are-prime;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1008.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int $n1 = 121;
    my Int $n2 = 450;
    my $are-prime = ArePrime.new(
        t => $t,
        integer1 => $n1,
        integer2 => $n2,
    );
    my Bool $have-common-divisors = $are-prime.have-common-divisors();
    if !$have-common-divisors {
        $t.tput: "Les nombres $n1 et $n2 sont donc premiers entre eux";
        $t.tput: "car ils n'ont pas de diviseurs communs autre que 1.";
        $t.tput: "On peut dire aussi que les diviseurs de $n1 sont 1, 11 et 121";
        $t.tput: "qui ne sont pas diviseurs de $n2, donc 1 est leur seul diviseur";
        $t.tput: "commun donc PGCD($n1 ; $n2) = 1 donc $n1 et $n2 sont des";
        $t.tput: "nombres premiers entre eux.";
    } else {
        $t.tput: "Les nombres $n1 et $n2 ne sont donc pas premiers entre eux.";
    }

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_08();
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

