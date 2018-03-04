unit module Corrective;

=begin pod
Ce module est utilisé dans chacun des fichiers p6
pour demander s'il faut afficher la méthode de l'exercice
'do-put-up-method'
et s'il faut afficher son corrigé 'do-put-up-correct-version'.
Les méthodes renvoient une valeur booléenne.
=end pod

sub do-put-up-method is export {
    my $answer = prompt "Afficher la méthode ? O[ui]|n[on] : ";
    given $answer {
        # Adverb :ignorecase portant sur l'ensemble de l'expression
        when m:i/n [on]*/ { return False; }
        when m:i/o [ui]*/ { return True; }
        default          { return True; }
    }
}

sub do-put-up-correct-version is export {
    my $answer = prompt "Afficher le corrigé ? O[ui]|n[on] : ";
    given $answer {
        # Adverb :ignorecase portant sur l'ensemble de l'expression
        when m:i/n [on]*/ { exit 0; }
        when m:i/o [ui]*/ { say ""; }
        default          { say ""; }
    }
}

