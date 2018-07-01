unit module Method06;

use v6;

sub put-up-method is export(:methodwording) {
    say q:to/EOM/;
###################################################################################
# Méthode 6. Comment établir la liste des diviseurs d'un entier non nul ?
###################################################################################
# ▲ on commence la liste par 1 et on la termine par le nombre lui-même;
# ▲ on cherche ensuite si 2 est un diviseur du nombre, si ce n'est pas le cas,
# on passe à 3, si c'est le cas on calcule le nombre qui multiplié par 2 donne le
# nombre choisi, ce second facteur est aussi un diviseur;
# ▲ on cherche si 3 est un diviseur du nombre, si ce n'est pas le cas, on passe à 4,
# si c'est le cas on calcule le nombre qui multiplié par 3 donne le nombre choisi,
# ce second facteur est aussi un diviseur;
# ▲ on continue et on détermine ainsi les diviseurs dans l'ordre croissant à partir
# de 1 et dans l'ordre décroissant à partir du nombre, on s'arrête quand on arrive
# à un diviseur déjà trouvé.
# REMARQUE : le nombre de diviseurs d'un entier non nul est pair sauf si ce nombre
# est un carré parfait. Tout nombre non nul est un diviseur de 0.
###################################################################################

EOM
}

sub show-examples() is export(:examples) {
    shell 'xdg-open ../examples06.pdf &';
}

sub exercise_01a is export(:exe01a) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "a. 12";
}

sub exercise_01b is export(:exe02b) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "b. 20";
}

sub exercise_01c is export(:exe03c) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "c. 32";
}

sub exercise_01d is export(:exe04d) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "d. 108";
}

sub exercise_01e is export(:exe05e) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "e. 144";
}

sub exercise_02a is export(:exe02a) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "a. 72";
}

sub exercise_02b is export(:exe02b) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "b. 100";
}

sub exercise_02c is export(:exe02c) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "c. 1001";
}

sub exercise_02d is export(:exe02d) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "d. 561";
}

sub exercise_02e is export(:exe02e) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "e. 196";
}
