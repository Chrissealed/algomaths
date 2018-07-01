unit module Method05;

use v6;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/
###################################################################################
# Méthode 5. Diviseurs et nombres premiers.
###################################################################################
# ▲ Il arrive parfois qu'une division s'arrête, autrement dit, que le reste soit nul.
# Par exemple : 238 ÷ 17 = 14, ce qui revient à 238 = 14 × 17.
# Les nombres 14 et 17 s'appellent diviseurs de 238 et l'expression 238 = 14 × 17
# s'appelle 'décomposition en facteurs' de 238.
# Ici les termes 'diviseurs' et 'facteurs' sont synonymes.
# ▲ Un de ces deux facteurs peut à son tour être décomposé, à savoir 14 = 2 × 7.
# La décomposition de 238 ne peut pas être poursuivie car 2, 7 et 17 sont tous les
# trois des nombres 'premiers'. Cela signifie que ces nombres ne peuvent pas être
# décomposés en facteurs plus petits. Finalement la décomposition en facteurs premiers
# de 238 est : 238 = 2 × 7 × 17.
# ▲ Comme 238 = 1 × 238 est aussi une décomposition de 238, les nombres 1 et 238
# sont aussi des diviseurs de 238. Tout nombre entier admet 1 et lui-même comme
# diviseur. Les diviseurs intéressants, les 'vrais diviseurs', sont en fait les
# diviseurs supérieurs à 1 et inférieurs au nombre lui-même. Les 'nombres premiers'
# sont les nombres supérieurs à 1 et qui n'ont pas de vrais diviseurs.
###################################################################################

EOM
}

sub show-examples() is export(:examples) {
    shell 'xdg-open ../examples05.pdf &';
}

sub exercise_01a is export(:exe01a) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "a. 24";
}

sub exercise_01b is export(:exe01b) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "b. 72";
}

sub exercise_01c is export(:exe01c) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "c. 250";
}

sub exercise_01d is export(:exe01d) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "d. 96";
}

sub exercise_01e is export(:exe01e) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "e. 98";
}

sub exercise_02a is export(:exe02a) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "f. 288";
}

sub exercise_02b is export(:exe02b) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "g. 1024";
}

sub exercise_02c is export(:exe02c) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "h. 315";
}

sub exercise_02d is export(:exe02d) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "i. 396";
}

sub exercise_02e is export(:exe02e) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "j. 1875";
}

sub exercise_03a is export(:exe03a) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "k. 972";
}

sub exercise_03b is export(:exe03b) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "l. 676";
}

sub exercise_03c is export(:exe03c) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "m. 2025";
}

sub exercise_03d is export(:exe03d) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "n. 1122";
}

sub exercise_03e is export(:exe03e) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "o. 860";
}

sub exercise_04a is export(:exe04a) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "p. 255";
}

sub exercise_04b is export(:exe04b) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "q. 441";
}

sub exercise_04c is export(:exe04c) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "r. 722";
}

sub exercise_04d is export(:exe04d) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "s. 432";
}

sub exercise_04e is export(:exe04e) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "t. 985";
}

sub exercise_05a is export(:exe05a) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "u. 2000";
}

sub exercise_05b is export(:exe05b) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "v. 2001";
}

sub exercise_05c is export(:exe05c) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "w. 2002";
}

sub exercise_05d is export(:exe05d) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "x. 2003";
}

sub exercise_05e is export(:exe05e) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "y. 2004";
}
