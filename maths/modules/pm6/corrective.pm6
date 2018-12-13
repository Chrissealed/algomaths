unit module Corrective;

use v6;

=begin pod
=NAME module B<Corrective>
=AUTHOR Christian Béloscar
=VERSION 0.1.121

=for header1
Ce module est utilisé dans chacun des fichiers *.p6.

Pour demander s'il faut afficher la méthode de l'exercice
avec B<do-put-up-method>, des exemples avec B<do-put-up-examples>
et s'il faut afficher son corrigé avec B<do-put-up-correct-version>.
Les méthodes renvoient une valeur booléenne.

Par défaut la méthode de l'exercice est affichée, les exemples non.
La dernière méthode ne renvoie rien, elle termine simplement
le programme si la réponse à la question 'Afficher le corrigé ?'
est non.
Si la réponse est oui alors elle affiche une ligne vide
qui séparera le corrigé de la question.
Le corrigé est affiché par défaut, autrement dit
si on tape B<Return> ou B<Entrée> par exemple, le corrigé est affiché.

Une méthode similaire à B<do-put-up-method>(--> Bool) {}
mais avec une autre signature (avec le mot clef multi) :
B<do-put-up-method>(Int:D $n --> Bool) {}
possède un argument de type Int destiné à choisir
quelle méthode doit être affichée dans le cas
ou plusieurs sont disponibles pour le même exercice.

Une autre méthode B<prompt-for-user-input>(Str:D $promptstr--> Int) {}
est destinée à demander à l'utilisateur de saisir
une valeur numérique correspondant au message affiché au B<prompt>
et retourne cette valeur convertie en Int.
=end pod

multi sub do-put-up-method(--> Bool) is export {
    my $answer = prompt "Afficher la méthode ? O[ui]|n[on] : ";
    given $answer {
        # Adverb :ignorecase portant sur l'ensemble de l'expression
        when m:i/n [on]*/ { return False; }
        when m:i/o [ui]*/ { return True; }
        default           { return True; }
    }
}

multi sub do-put-up-method(Int:D $n --> Bool) is export {
    my $answer = prompt "Afficher la méthode $n ? O[ui]|n[on] : ";
    given $answer {
        # Adverb :ignorecase portant sur l'ensemble de l'expression
        when m:i/n [on]*/ { return False; }
        when m:i/o [ui]*/ { return True; }
        default           { return True; }
    }
}

multi sub do-put-up-examples(--> Bool) is export {
    my $answer = prompt "Afficher des exemples ? O[ui]|n[on] : ";
    given $answer {
        # Adverb :ignorecase portant sur l'ensemble de l'expression
        when m:i/n [on]*/ { return False; }
        when m:i/o [ui]*/ { return True; }
        default           { return False; }
    }
}

multi sub do-put-up-examples(Int:D $n --> Bool) is export {
    my $answer = prompt "Afficher des exemples de la méthode $n ? O[ui]|n[on] : ";
    given $answer {
        # Adverb :ignorecase portant sur l'ensemble de l'expression
        when m:i/n [on]*/ { return False; }
        when m:i/o [ui]*/ { return True; }
        default           { return False; }
    }
}

sub do-put-up-correct-version is export {
    my $answer = prompt "Afficher le corrigé ? O[ui]|n[on] : ";
    given $answer {
        # Adverb :ignorecase portant sur l'ensemble de l'expression
        when m:i/n [on]*/ { exit 0; }
        when m:i/o [ui]*/ { say ""; }
        default           { say ""; }
    }
}

sub prompt-for-user-input(Str:D $promptstr --> Int) is export {
    my $int = 1;
    my $strint = "";

    loop {
        $strint = prompt "$promptstr";
        exit if $strint eq '0' || $strint eq '';
        try {
            $int = Int($strint);
        }
        if $! {
            say "Saisie invalide !";
            $! = Any;
            redo;
        }
        return $int;
    }
}
