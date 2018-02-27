use corrective;
use method02 :methodwording, :exe06;

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
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

