unit module Method08;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
###################################################################################
# Comment déterminer le PGCD de deux nombres entiers par l'algorithme
# d'Euclide à l'aide d'un tableur ?
###################################################################################
# ▲ on ouvre une feuille de calcul et on choisit trois colonnes A, B et C;
# ▲ on marque les titres : Nombre a, Nombre b et Reste respectivement dans les
# cellules A1, B1 et C1;
# ▲ on place le plus grand des deux nombres et le plus petit respectivement dans les
# cellules A2 et B2 et on inscrit =MOD(A2;B2) dans la cellule C2;
# reste non nul.
# ▲ on écrit =B2, =C2 et =MOD(A3;B3) respectivement dans les cellules A3, B3 et C3;
# ▲ on sélectionne les cellules A3B3C3 et on tire vers le bas le petit carré situé
# en bas à droite de la sélection jusqu'à trouver 0 dans la colonne C;
# ▲ on donne le PGCD des deux nombres qui est le dernier reste non nul.
#
# La méthode s'appuie sur la propriété suivante : a et b désignant deux entiers,
# si a > b, PGCD(a;b) = PGCD(b;r) où r est le reste de la division euclidienne de
# a par b
###################################################################################

EOM
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# PGCD(1287 ; 819)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# PGCD(2,130,071,799 ; 789,801,903)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# PGCD(2014 ; 1515)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# PGCD(126871 ; 116756)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# PGCD(13692 ; 6357)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# PGCD(86105 ; 18234)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7.';
    say '# PGCD(108777 ; 61206)';
    say '# Comparer ce calcul avec celui utilisant l\'algorithme des soustractions à l\'aide';
    say '# d\'un tableur (méthode 6 exercice 6).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    say '# Exercice 8.';
    say '# Sur une feuille, un élève a créé cette feuille de calcul pour trouver le PGCD de';
    say '# 1596 et 627 par l\'algorithme d\'Euclide.';
    say '#';
    say '# |   |   A   |   B   |   C   |';
    say '# -----------------------------';
    say '# | 1 |   a   |   b   |   r   |';
    say '# -----------------------------';
    say '# | 2 | 1596  |  627  |  342  |';
    say '# -----------------------------';
    say '# | 3 |  627  |  342  |  285  |';
    say '# -----------------------------';
    say '# | 4 |  342  |  285  |   57  |';
    say '# -----------------------------';
    say '# | 5 |  285  |   57  |    0  |';
    say '# -----------------------------';
    say '#';
    say '# a. En utilisant sa feuille de calcul, dire quel est le PGCD de 1596 et 627.';
    say '# b. Quelle est la formule écrite par l\'élève dans la cellule C2 pour obtenir le';
    say '#    résultat indiqué dans cette cellule par le tableur ?';
    say '# c. Quelle est la formule écrite par l\'élève dans la cellule A3 pour obtenir le';
    say '#    résultat indiqué dans cette cellule par le tableur ?';
    say '-----------------------------------------------------------------------------------';
}
