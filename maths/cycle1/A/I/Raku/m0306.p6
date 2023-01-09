#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe06, :examples;
use integer-divisors-listing;
use common-arrays-elements;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0306.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int ($n1, $n2) = 72, 84;
    my Int (@int_a, @int_b, @int_c) = ();

    my $divisors-listing = IntegerDivisorsListing.new(
        t => $t,
        array-or-hash => '@',
    );
    $t.tput: "Diviseurs de $n1 :";
    @int_a = $divisors-listing.list-divisors($n1);
    $t.tput: "Diviseurs de $n2 :";
    @int_b = $divisors-listing.list-divisors($n2);

    @int_a = @int_a.sort;
    @int_b = @int_b.sort;
    @int_c = common-arrays-elements(@int_b, @int_a);
    $t.tput: "Les diviseurs communs à $n1 et $n2 sont :";
    $t.tput: @int_c;

    $t.closefile = True;
    $t.tprint: "\n";
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

