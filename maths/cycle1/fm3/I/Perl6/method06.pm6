unit module Method06;

use v6;

sub put-up-method is export(:methodwording) {
    say q:to/EOM/;
###################################################################################
# Chapitre I : ARITHMÉTIQUE.
###################################################################################
# Méthode 6. Pour déterminer le PGCD de deux nombres entiers par l'algorithme
# des soustractions à l'aide d'un tableur :
###################################################################################
# ▲ on ouvre une feuille de calcul et on choisit trois colonnes A, B et C;
# ▲ on marque les titres : Nombre a, Nombre b et Différence respectivement dans les
# cellules A1, B1 et C1;
# ▲ on place le plus grand des deux nombres et le plus petit respectivement dans
# les cellules A2 et B2 et on inscrit =A2-B2 dans la cellule C2;
# ▲ on écrit : =MAX(B2;C2), =MIN(B2;C2) et =A3-B3 respectivement dans les cellules
# A3, B3 et C3;
# ▲ on sélectionne les cellules A3B3C3 et on tire vers le bas le petit carré situé
# en bas à droite de la sélection jusqu'à trouver 0 dans la colonne C;
# ▲ on donne le PGCD des deux nombres qui est la dernière différence non nulle.
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples06.pdf &';
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# ----------';
    say '# PGCD(1260 ; 735)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# ----------';
    say '# PGCD(25,333,333,344 ; 14,777,777,784)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# ----------';
    say '# PGCD(2015 ; 1789)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# ----------';
    say '# PGCD(4092 ; 1705)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# ----------';
    say '# PGCD(877 ; 531)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# ----------';
    say '# PGCD(108,777 ; 61,206)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7.';
    say '# ----------';
    say '# a. PGCD(165 ; 132); b. PGCD(330 ; 264); c. PGCD(495 ; 396)';
    say '# d. Quelles relations y a-t-il entre le PGCD de 165 et 132 et chacun des PGCD de';
    say '# 330 et 264 et de 495 et 396 ? Faire le lien avec les nombres donnés.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    say '# Exercice 8.';
    say '# ----------';
    say '# Sur une feuille, un élève a créé cette feuille de calcul pour trouver le PGCD';
    say '# de 2691 et 1035 par l\'algorithme des soustractions.';
    say '#';
    say '# |   |   A  |   B  |   C  |';
    say '# --------------------------';
    say '# | 1 |   a  |   b  |  a-b |';
    say '# --------------------------';
    say '# | 2 | 2691 | 1035 | 1656 |';
    say '# --------------------------';
    say '# | 3 | 1656 | 1035 |  621 |';
    say '# --------------------------';
    say '# | 4 | 1035 |  621 |  414 |';
    say '# --------------------------';
    say '# | 5 |  621 |  414 |  207 |';
    say '# --------------------------';
    say '# | 6 |  414 |  207 |  207 |';
    say '# --------------------------';
    say '# | 7 |  207 |  207 |   0  |';
    say '# --------------------------';
    say '#';
    say '# a. En utilisant sa feuille de calcul, dire quel est le PGCD de 2691 et 1035.';
    say '# b. Quelle est la formule écrite par l\'élève dans la cellule C2 pour obtenir';
    say '#    le résultat indiqué dans cette cellule par le tableur ?';
    say '# c. Quelle est la formule écrite par l\'élève dans la cellule B3 pour obtenir';
    say '#    le résultat indiqué dans cette cellule par le tableur ?';
    say '-----------------------------------------------------------------------------------';
}
