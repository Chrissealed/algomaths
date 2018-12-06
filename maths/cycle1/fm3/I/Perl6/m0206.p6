#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe06, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0206.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int $boys = 22;
    my Int $beds = 4;
    my Int $bedrooms = Int($boys / $beds);
    my Int $remainder = $boys % $beds;
    my Int $empty_beds = $beds - $remainder;
    $t.tput: "$boys = $beds × $bedrooms + $remainder.";
    if ($remainder > 0) {
        $t.tput: "Il faudra au minimum {$bedrooms + 1} chambres pour que chacun dispose d'un lit.";
        $t.tprint: "Il restera $empty_beds ";
        $t.tprint: ($empty_beds > 1) ?? 'lits inoccupés' !! 'lit inoccupé';
        $t.tput: " dans l'une des chambres.";
    }
    else {
        $t.tput: "Il faudra exactement $bedrooms chambres pour répartir les $boys garçons.";
    }

    $t.closefile = True;
    $t.tput: '';
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

