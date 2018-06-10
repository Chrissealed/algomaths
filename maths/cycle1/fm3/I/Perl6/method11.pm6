unit module Method11;

use v6;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
###################################################################################
# Chapitre I : ARITHMÉTIQUE.
###################################################################################
# Méthode 11. Comment déterminer la fraction irréductible égale à une fraction donnée ?
###################################################################################
# Pour déterminer la fraction irréductible égale à une fraction donnée :
# ▲ on simplifie la fraction donnée en divisant le numérateur et le dénominateur
#   par leur PGCD.
# ▲ Remarque :
#   on peut décomposer le numérateur et le dénominateur en produit de facteurs simples
#   pour faire apparaître les facteurs communs, on supprime ces facteurs au numérateur
#   et au dénominateur, on s'assure que le numérateur et le dénominateur de la fraction
#   obtenue sont premiers entre eux.
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples11.pdf &';
}

sub exercise_01a is export(:exe01a) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer la fraction irréductible à la fraction donnée :';
    say '# a. 493/204';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer la fraction irréductible à la fraction donnée :';
    say '# b. 25/45';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01c is export(:exe01c) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer la fraction irréductible à la fraction donnée :';
    say '# c. 2652/1547';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01d is export(:exe01d) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer la fraction irréductible à la fraction donnée :';
    say '# d. 231/132';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01e is export(:exe01e) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer la fraction irréductible à la fraction donnée :';
    say '# e. 644/294';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01f is export(:exe01f) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer la fraction irréductible à la fraction donnée :';
    say '# f. 126/162';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01g is export(:exe01g) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer la fraction irréductible à la fraction donnée :';
    say '# g. 312/273';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01h is export(:exe01h) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer la fraction irréductible à la fraction donnée :';
    say '# h. 1914/6525';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01i is export(:exe01i) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer la fraction irréductible à la fraction donnée :';
    say '# i. 60/75';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01j is export(:exe01j) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Déterminer la fraction irréductible à la fraction donnée :';
    say '# j. 945/1404';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# ----------';
    say '# A = 25 × 10² × 121 / 11 × 1250 × 3';
    say '# Simplifier A et donner le résultat sous forme irréductible.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# ----------';
    say '# On donne F1 = 782/690, F2 = 272/510 et F = 782/690 + 272/510.';
    say '# Ecrire F1, F2 et F sous forme de fractions irréductibles.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04a is export(:exe04a) {
    say '# Exercice 4.';
    say '# ----------';
    say '# La fraction suivante est-elle irréductible, sinon donner la fraction irréductible';
    say '# qui lui est égale :';
    say '# a. 315/147';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04b is export(:exe04b) {
    say '# Exercice 4.';
    say '# ----------';
    say '# La fraction suivante est-elle irréductible, sinon donner la fraction irréductible';
    say '# qui lui est égale :';
    say '# b. 295/567';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04c is export(:exe04c) {
    say '# Exercice 4.';
    say '# ----------';
    say '# La fraction suivante est-elle irréductible, sinon donner la fraction irréductible';
    say '# qui lui est égale :';
    say '# c. 143/69';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04d is export(:exe04d) {
    say '# Exercice 4.';
    say '# ----------';
    say '# La fraction suivante est-elle irréductible, sinon donner la fraction irréductible';
    say '# qui lui est égale :';
    say '# d. 23/92';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# ----------';
    say '# a. Sans calculer leur PGCD, dire pourquoi les nombres 648 et 972 ne sont pas';
    say '#    premiers entre eux.';
    say '# b. Calculer PGCD(972 ; 648)';
    say '#    En déduire la fraction irréductible égale à 648/972.';
    say '# c. Prouver que √648 + √972 = 18(√2 + √3).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# ----------';
    say '# On donne : A = 43,01/84,15.';
    say "# a. Peut-on déterminer le PGCD du numérateur et du dénominateur de A tels qu'ils figurent";
    say "#   dans l'énoncé ? Justifier la réponse.";
    say '# b. Ecrire A sous forme de fraction';
    say '# c. Déterminer le PGCD du numérateur et du dénominateur.';
    say "# d. En déduire l'écriture de A sous forme d'une fraction irréductible.";
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7.';
    say '# ----------';
    say '# a. Calculer le PGCD de 901 et 1272 et le PGCD de 1037 et 1464.';
    say '# b. Déterminer la fraction irréductible égale à la fraction 901/1272 puis la fraction';
    say '#    irréductible égale à la fraction 1037/1464.';
    say '# c. On donne la figure suivante (elle ne respecte pas les dimensions) :';
    say '#    EA = 10,37m ; EB = 9,01m ; EC = 12,72m ; ED = 14,64m.';
    say '#    Les droites (AB) et (CD) sont-elles parallèles ?';
    say '-----------------------------------------------------------------------------------';
}
