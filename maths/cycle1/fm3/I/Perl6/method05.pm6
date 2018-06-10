unit module Method05;

use v6;

sub put-up-method is export(:methodwording) {
    say q:to/EOM/;
###################################################################################
# Chapitre I : ARITHMÉTIQUE.
###################################################################################
# Méthode 5. Pour déterminer le PGCD de deux nombres entiers par l'algorithme
# des soustractions :
###################################################################################
# ▲ on calcule la différence des deux nombres;
# ▲ on garde le plus petit des deux nombres et la différence trouvée et on écrit
# que le PGCD cherché est leur PGCD;
# ▲ on recommence le même procédé avec les deux nouveaux nombres jusqu'à l'obtention
# de deux nombres égaux, le PGCD est égal à leur valeur.
# La méthode s'appuie sur les propriétés suivantes : a et b désignant deux entiers,
# si a = b, alors PGCD(a;b) = a = b et si a > b, PGCD(a;b) = PGCD(b;a-b).
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples05.pdf &';
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer le PGCD de 1210 et 462.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# ----------';
    say '# Déterminer le PGCD de 510 et 374.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# ----------';
    say '# Déterminer le PGCD de 189 et 55.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# ----------';
    say '# Déterminer le PGCD de 2072 et 370.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# ----------';
    say '# Déterminer le PGCD de 1631 et 932.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# ----------';
    say '# Déterminer le PGCD de 2940 et 1155.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06b is export(:exe06b) {
    say '# Exercice 6b.';
    say '# ----------';
    say '# Déterminer le PGCD de n1 et n2 (saisie utilisateur).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7.';
    say '# ----------';
    say '# a. Déterminer le PGCD de 15 et 9 puis celui de 75 et 45.';
    say '# b. Compléter 75 = ... x 15 et 45 = ... x 9.';
    say '# Quelle relation y a-t-il entre le PGCD de 15 et de 9 et celui de 75 et 45 ?';
    say '-----------------------------------------------------------------------------------';
}
