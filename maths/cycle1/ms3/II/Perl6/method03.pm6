unit module Method03;

use v6;

sub put-up-method03 is export(:methodwording) {
    say qq:to/EOM/;
# II - MÉTHODES SUR LES PGCD -
###################################################################################
# Méthode 03. Pour simplifier des fractions.
###################################################################################
# Pour déterminer la fraction irréductible égale à une fraction donnée :
# ▲ on simplifie la fraction donnée en divisant le numérateur et le dénominateur
#   par leur PGCD.
# Pour rendre irréductible une fraction a/b, on calcule PGCD(a ; b). Ensuite, on
# divise le haut et le bas (c'est à dire le numérateur et le dénominateur)
# par ce PGCD.
# ▲ Remarque :
#   on peut décomposer le numérateur et le dénominateur en produit de facteurs simples
#   pour faire apparaître les facteurs communs, on supprime ces facteurs au numérateur
#   et au dénominateur, on s'assure que le numérateur et le dénominateur de la fraction
#   obtenue sont premiers entre eux (cf. method10 de fm3/I/Perl6).
###################################################################################

EOM
}

sub show-examples03 is export(:examples) {
    shell 'xdg-open ../examples03.pdf &';
}

sub exercise_01a is export(:exe01a) {
    say '# Exercice 1a.';
    say '# ----------';
    say '# Etant donnée la fraction suivante : 170/578.';
    say '# a. Montrer qu\'elle n\'est pas irréductible';
    say '# b. L\'écrire sous forme irréductible.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    say '# Exercice 1b.';
    say '# ----------';
    say '# Etant donnée la fraction suivante : 1183/455.';
    say '# a. Montrer qu\'elle n\'est pas irréductible';
    say '# b. L\'écrire sous forme irréductible.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01c is export(:exe01c) {
    say '# Exercice 1c.';
    say '# ----------';
    say '# Etant donnée la fraction suivante : 1356/4972.';
    say '# a. Montrer qu\'elle n\'est pas irréductible';
    say '# b. L\'écrire sous forme irréductible.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01d is export(:exe01d) {
    say '# Exercice 1d.';
    say '# ----------';
    say '# Etant donnée la fraction suivante : 108/288.';
    say '# a. Montrer qu\'elle n\'est pas irréductible';
    say '# b. L\'écrire sous forme irréductible.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01e is export(:exe01e) {
    say '# Exercice 1e.';
    say '# ----------';
    say '# Etant donnée la fraction suivante : 682/352.';
    say '# a. Montrer qu\'elle n\'est pas irréductible';
    say '# b. L\'écrire sous forme irréductible.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01f is export(:exe01f) {
    say '# Exercice 1f.';
    say '# ----------';
    say '# Etant donnée la fraction suivante : 675/375.';
    say '# a. Montrer qu\'elle n\'est pas irréductible';
    say '# b. L\'écrire sous forme irréductible.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01g is export(:exe01g) {
    say '# Exercice 1g.';
    say '# ----------';
    say '# Etant donnée la fraction suivante : 406/696.';
    say '# a. Montrer qu\'elle n\'est pas irréductible';
    say '# b. L\'écrire sous forme irréductible.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01h is export(:exe01h) {
    say '# Exercice 1h.';
    say '# ----------';
    say '# Etant donnée la fraction suivante : 462/546.';
    say '# a. Montrer qu\'elle n\'est pas irréductible';
    say '# b. L\'écrire sous forme irréductible.';
    say '-----------------------------------------------------------------------------------';
}
