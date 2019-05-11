#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0206.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.15
=end pod

use corrective;
use teeput;
use method02;

sub answering {
    class T does Tput {}
    my $t = T.new(
        writefile => True,
        filemode => ':a', # :mod<wo>, :create, :append
        closefile => False,
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0206.txt",
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
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_06();
my Bool $boolean = do-put-up-method();
if $boolean {
    $xchoice.put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    $xchoice.show-examples;
}
do-put-up-correct-version();
answering();

