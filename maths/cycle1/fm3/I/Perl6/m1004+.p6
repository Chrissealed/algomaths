#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method10 :methodwording, :exe04b, :examples;
use are-prime;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1004+.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $n1 = 174702;
    my $n2 = 119115;
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
    }

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_04b();
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

