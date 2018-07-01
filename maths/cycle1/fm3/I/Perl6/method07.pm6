unit module Method07;

use v6;

sub put-up-method is export(:methodwording) {
    say q:to/EOM/;
###################################################################################
# Chapitre I : ARITHMÉTIQUE.
###################################################################################
# Méthode 7. Comment déterminer le PGCD de deux nombres entiers par l'algorithme
# d'Euclide ?
###################################################################################
# ▲ on effectue la division euclidienne du plus grand nombre par le plus petit;
# ▲ on conserve le plus petit des deux nombres et le reste trouvé et on écrit que
# le PGCD cherché est leur PGCD;
# ▲ on continue ainsi jusqu'à l'obtention d'un reste nul, le PGCD est le dernier
# reste non nul.
# La méthode s'appuie sur la propriété suivante : a et b désignant deux entiers,
# si a > b, PGCD(a;b) = PGCD(b;r) où r est le reste de la division euclidienne de
# a par b
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples07.pdf &';
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer le PGCD de 780 et 504.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# Déterminer le PGCD de 988 et 363.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# Déterminer le PGCD de 7375 et 472.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# a. Déterminer le PGCD de 2072 et 370.';
    say '# b. Comparer avec l\'algorithme des soustractions (méthode 5 exercice 4)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# Déterminer le PGCD de 2037 et 454.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# a. Déterminer le PGCD de 2940 et 147.';
    say '# b. Que remarque-t-on ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06b is export(:exe06b) {
    say '# Exercice 6b.';
    say '# a. Déterminer le PGCD de n1 et n2 (saisies utilisateur).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7.';
    say '# a. Déterminer le PGCD de 36 et 20 puis celui de 108 et 60.';
    say '# b. Recopier et compléter : 108 est le ... de 36; 60 est le ... de 20.';
    say '#    Quelle relation a-t-on entre le PGCD de 108 et 60 et celui de 36 et 20 ?';
    say '-----------------------------------------------------------------------------------';
}
