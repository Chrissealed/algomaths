#!/usr/bin/env perl6

use v6;
use corrective;
use method05 :methodwording, :exe07;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'subtraction algorithm'
        integer1 => 15,
        integer2 => 9,
    );
    say 'a.';
    my $pgcd1 = $pgcd.subtraction_algorithm();

    say();
    $pgcd.integer1 = 75;
    $pgcd.integer2 = 45;
    my $pgcd2 = $pgcd.subtraction_algorithm();

    say();
    say 'b.';
    my $n1 = 75 ; my $n2 = 15;
    my $x = $n1 div $n2;
    say "$n1 = $x × $n2";

    my $n3 = 45; my $n4 = 9;
    my $y = $n3 div $n4;
    say "$n3 = $y × $n4";

    say "Comme de plus PGCD($n2 ; $n4) = $pgcd1 et PGCD($n1 ; $n3) = $pgcd2, alors";
    say "PGCD($n1 ; $n3) = PGCD($x × $n2 ; $x × $n4) = $x × $pgcd1 = $x × PGCD($n2 ; $n4)";
    say "$n1 et $n3 sont les quintuples respectifs de $n2 et $n4, le PGCD de $n1 et $n3";
    say "est le quintuple du PGCD de $n2 et $n4.";
}

exercise_07();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

