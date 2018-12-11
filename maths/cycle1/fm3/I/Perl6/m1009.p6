#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method10 :methodwording, :exe09, :examples;
use are-prime;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1009.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int $n1 = 5167;
    my Int $n2 = 2277;
    my $are-prime = ArePrime.new(
        t => $t,
        integer1 => $n1,
        integer2 => $n2,
    );
    my $have-common-divisor = $are-prime.have-common-divisor('factorization');
    if !$have-common-divisor {
        $t.tput: "Les nombres $n1 et $n2 sont donc premiers entre eux";
        $t.tput: "car ils n'ont pas de diviseurs communs autre que 1.";
    } else {
        $t.tput: "Les nombres $n1 et $n2 ne sont donc pas premiers entre eux.";
    }

    $t.closefile = True;
    $t.tprint: "\n";
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

