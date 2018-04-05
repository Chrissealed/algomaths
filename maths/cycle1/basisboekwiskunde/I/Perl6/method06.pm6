unit module Method06;

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
sub exercise_01 is export(:exe01) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "a. 12";
}

sub exercise_02 is export(:exe02) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "b. 20";
}

sub exercise_03 is export(:exe03) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "c. 32";
}

sub exercise_04 is export(:exe04) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "d. 108";
}

sub exercise_05 is export(:exe05) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "e. 144";
}

sub exercise_06 is export(:exe06) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "a. 72";
}

sub exercise_07 is export(:exe07) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "b. 100";
}

sub exercise_08 is export(:exe08) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "c. 1001";
}

sub exercise_09 is export(:exe09) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "d. 561";
}

sub exercise_10 is export(:exe10) {
    say "Déterminez tous les facteurs du nombre suivant.";
    say "Un conseil : décomposez d'abord ce nombre en facteurs premiers.";
    say "e. 196";
}
