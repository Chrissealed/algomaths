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
# ▲ Voici le début de la liste des nombres premiers :
# 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79,...
# ▲ Tout nombre entier supérieur à 1 peut être décomposé en facteurs premiers :
# On cherche systématiquement des facteurs premiers, à commencer par les plus petits.
# Chaque fois qu'on en trouve un, on effectue la division et on reprend la recherche
# sur le quotient. La procédure se termine lorsqu'on obtient 1. Les facteurs premiers
# se trouvent dans la colonne de droite :
#     180 | 2      585 | 3      3003 | 3
#      90 | 2      195 | 3      1001 | 7
#      45 | 3       65 | 5       143 | 11
#      15 | 3       13 | 13       13 | 13
#       5 | 5        1 |           1 |
# ▲ De ces trois diagrammes, on peut déduire les décompositions en facteurs premiers
# que voici : 180 = 2 × 2 × 3 × 3 × 5 = 2² × 3² × 5 ;
# 585 = 3 × 3 × 5 × 13 = 3² × 5 × 13 ; 3003 = 3 × 7 × 11 × 13.
# Il est pratique de regrouper les facteurs premiers qui apparaissent plusieurs fois
# sous forme de puissances : 2² = 2 × 2 et 3² = 3 × 3.
# Voici quelques exemples supplémentaires : 120 = 2 × 2 × 2 × 3 × 5 = 2³ × 3 × 5 ;
# 81 = 3 × 3 × 3 × 3 = 3⁴ ; 48 = 2 × 2 × 2 × 2 × 3 = 2⁴ × 3.
###################################################################################

EOM
}

sub exercise_01 is export(:exe01) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "a. 24";
}

sub exercise_02 is export(:exe02) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "b. 72";
}

sub exercise_03 is export(:exe03) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "c. 250";
}

sub exercise_04 is export(:exe04) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "d. 96";
}

sub exercise_05 is export(:exe05) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "e. 98";
}

sub exercise_06 is export(:exe06) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "f. 288";
}

sub exercise_07 is export(:exe07) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "g. 1024";
}

sub exercise_08 is export(:exe08) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "h. 315";
}

sub exercise_09 is export(:exe09) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "i. 396";
}

sub exercise_10 is export(:exe10) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "j. 1875";
}

sub exercise_11 is export(:exe11) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "k. 972";
}

sub exercise_12 is export(:exe12) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "l. 676";
}

sub exercise_13 is export(:exe13) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "m. 2025";
}

sub exercise_14 is export(:exe14) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "n. 1122";
}

sub exercise_15 is export(:exe15) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "o. 860";
}

sub exercise_16 is export(:exe16) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "p. 255";
}

sub exercise_17 is export(:exe17) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "q. 441";
}

sub exercise_18 is export(:exe18) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "r. 722";
}

sub exercise_19 is export(:exe19) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "s. 432";
}

sub exercise_20 is export(:exe20) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "t. 985";
}

sub exercise_21 is export(:exe21) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "u. 2000";
}

sub exercise_22 is export(:exe22) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "v. 2001";
}

sub exercise_23 is export(:exe23) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "w. 2002";
}

sub exercise_24 is export(:exe24) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "x. 2003";
}

sub exercise_25 is export(:exe25) {
    say "Décomposez le nombre suivant en facteurs premiers.";
    say "y. 2004";
}
