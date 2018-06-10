unit module Method09;

use v6;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
###################################################################################
# Chapitre I : ARITHMÉTIQUE.
###################################################################################
# Méthode 9. Comment déterminer tous les diviseurs communs à deux nombres avec leur
# PGCD :
###################################################################################
# ▲ on détermine le PGCD des deux nombres (méthode 5; 6; 7 ou 8);
# ▲ on détermine la liste de tous les diviseurs du PGCD (= méthode 3);
# ▲ on conclut en donnant la liste trouvée; c'est celle de tous les diviseurs
#   communs aux deux nombres.
#
# Les diviseurs communs de deux nombres sont les diviseurs de leur PGCD.
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples09.pdf &';
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# Déterminer la liste des diviseurs communs de 1210 et 462 (voir méthode 5 exercice 1).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# Déterminer la liste des diviseurs communs de 2072 et 370 (voir méthode 5 exercice 4).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# Déterminer la liste des diviseurs communs de 2940 et 1155 (voir méthode 4 exercice 3).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# Déterminer la liste des diviseurs communs de 780 et 504 (voir méthode 7 exercice 1).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# Démontrer que 988 et 363 n\'ont qu\'un seul diviseur commun (voir méthode 7 exercice 2).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# Déterminer la liste des diviseurs communs de 7375 et 472 (voir méthode 7 exercice 3).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7.';
    say '# Démontrer que 2037 et 454 n\'ont qu\'un seul diviseur commun (voir méthode 7 exercice 5).';
    say '-----------------------------------------------------------------------------------';
}
