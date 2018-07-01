#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe06, :examples;

sub answering {
    my Int $boys = 22;
    my Int $beds = 4;
    my Int $bedrooms = Int($boys / $beds);
    my Int $remainder = $boys % $beds;
    my Int $empty_beds = $beds - $remainder;
    say "$boys = $beds × $bedrooms + $remainder.";
    if ($remainder > 0) {
        say "Il faudra au minimum ", $bedrooms + 1, " chambres pour que chacun dispose d'un lit.";
        print "Il restera $empty_beds ";
        print ($empty_beds > 1) ?? 'lits inoccupés' !! 'lit inoccupé';
        say " dans l'une des chambres.";
    }
    else {
        say "Il faudra exactement $bedrooms chambres pour répartir les $boys garçons.";
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

