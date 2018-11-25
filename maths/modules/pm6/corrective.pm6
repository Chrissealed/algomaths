unit module Corrective;

use v6;

=begin pod
Ce module est utilisé dans chacun des fichiers *.p6
pour demander s'il faut afficher la méthode de l'exercice
avec 'do-put-up-method', des exemples avec 'do-put-up-examples'
et s'il faut afficher son corrigé avec 'do-put-up-correct-version'.
Les méthodes renvoient une valeur booléenne.
Par défaut la méthode de l'exercice est affichée, les examples non.
La dernière méthode ne renvoie rien, elle termine simplement
le programme si la réponse à la question 'Afficher le corrigé ?'
est non.
Si la réponse est oui alors elle affiche une ligne vide
qui séparera le corrigé de la question.
Le corrigé est affiché par défaut, autrement dit
si on tape <Return> par exemple, le corrigé est affiché.
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

sub do-put-up-examples is export {
    my $answer = prompt "Afficher des exemples ? O[ui]|n[on] : ";
    given $answer {
        # Adverb :ignorecase portant sur l'ensemble de l'expression
        when m:i/n [on]*/ { return False; }
        when m:i/o [ui]*/ { return True; }
        default          { return False; }
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

