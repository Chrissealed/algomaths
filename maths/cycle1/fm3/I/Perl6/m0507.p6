#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method05 :methodwording, :exe07, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0507.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'subtraction algorithm'
        t => $t,
        integer1 => 15,
        integer2 => 9,
    );
    $t.tput: 'a.';
    my $pgcd1 = $pgcd.subtraction_algorithm();

    $t.tprint: "\n";
    $pgcd.integer1 = 75;
    $pgcd.integer2 = 45;
    my $pgcd2 = $pgcd.subtraction_algorithm();

    $t.tprint: "\n";
    $t.tput: 'b.';
    my $n1 = 75 ; my $n2 = 15;
    my $x = $n1 div $n2;
    $t.tput: "$n1 = $x × $n2";

    my $n3 = 45; my $n4 = 9;
    my $y = $n3 div $n4;
    $t.tput: "$n3 = $y × $n4";

    $t.tput: "Comme de plus PGCD($n2 ; $n4) = $pgcd1 et PGCD($n1 ; $n3) = $pgcd2, alors";
    $t.tput: "PGCD($n1 ; $n3) = PGCD($x × $n2 ; $x × $n4) = $x × $pgcd1 = $x × PGCD($n2 ; $n4)";
    $t.tput: "$n1 et $n3 sont les quintuples respectifs de $n2 et $n4, le PGCD de $n1 et $n3";
    $t.tput: "est le quintuple du PGCD de $n2 et $n4.";

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_07();
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

