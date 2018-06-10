unit module Method04;

use v6;

sub put-up-method is export(:methodwording) {
    say q:to/EOM/;
###################################################################################
# Chapitre I : ARITHMÉTIQUE.
###################################################################################
# Méthode 4. Comment déterminer le PGCD de deux nombres entiers connaissant
# l'ensemble des diviseurs de chacun des deux nombres :
###################################################################################
# ▲ on établit la liste des diviseurs communs des deux nombres (méthode 3);
# ▲ on repère dans cette liste le plus grand nombre, c'est le PGCD cherché.
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples04.pdf &';
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# ----------';
    say '# a. Donner la liste des diviseurs de 90.';
    say '# b. Donner la liste des diviseurs de 126.';
    say '# c. Donner la liste des diviseurs communs de 90 et de 126.';
    say '# d. Quel est le PGCD de 90 et 126 ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# ----------';
    say '# a. Donner la liste des diviseurs de 132.';
    say '# b. Donner la liste des diviseurs de 220.';
    say '# c. Donner la liste des diviseurs communs de 132 et de 220.';
    say '# d. Quel est le PGCD de 132 et 220 ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# ----------';
    say '# a. Donner la liste des diviseurs de 105.';
    say '# b. Donner la liste des diviseurs de 175.';
    say '# c. Donner la liste des diviseurs communs de 105 et de 175.';
    say '# d. Quel est le PGCD de 105 et 175 ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# ----------';
    say '# a. Donner la liste des diviseurs de 124.';
    say '# b. Donner la liste des diviseurs de 65.';
    say '# c. Donner la liste des diviseurs communs de 124 et de 65.';
    say '# d. Quel est le PGCD de 124 et 65 ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# ----------';
    say '# a. Donner la liste des diviseurs de 38.';
    say '# b. Donner la liste des diviseurs de 190.';
    say '# c. Donner la liste des diviseurs communs de 38 et de 190.';
    say '# d. Quel est le PGCD de 38 et 190 ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# ----------';
    say '# a. Donner la liste des diviseurs de 56.';
    say '# b. Donner la liste des diviseurs de 70.';
    say '# c. Donner la liste des diviseurs communs de 56 et de 70.';
    say '# d. Quel est le PGCD de 56 et 70 ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06b is export(:exe06b) {
    say '# Exercice 6b.';
    say '# ----------';
    say '# a. Donner la liste des diviseurs de n1. (saisie utilisateur)';
    say '# b. Donner la liste des diviseurs de n2. (saisie utilisateur)';
    say '# c. Donner la liste des diviseurs communs de n1 et de n2.';
    say '# d. Quel est le PGCD de n1 et n2 ?';
    say '-----------------------------------------------------------------------------------';
}
