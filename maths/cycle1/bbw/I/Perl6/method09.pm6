unit module Method09;

use v6;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
###################################################################################
# Méthode 9. Comment déterminer le PGCD (plus grand commun multiple) et le PPCM
# (plus petit commun multiple) de trois nombres entiers.
# ▲ Le PGCD et le PPCM de plus de deux nombres s'obtiennent tout aussi facilement
# à partir de leurs décompositions en facteurs premiers. Par exemple :
# PGCD(180 ; 585 ; 3003) = 3.
# PPCM(180 ; 585 ; 3003) = 2² × 3² × 5 × 7 × 11 × 13 = 180180.
# (Voir aussi méthodes 5, 6, 7 et 8 de fm3).
####################################################################################
EOM
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# a. PGCD(9 ; 12 ; 30). PPCM(9 ; 12 ; 30).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# b. PGCD(24 ; 30 ; 36). PPCM(24 ; 30 ; 36).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# c. PGCD(10 ; 15 ; 35). PPCM(10 ; 15 ; 35).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# d. PGCD(18 ; 27 ; 63). PPCM(18 ; 27 ; 63).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# e. PGCD(21 ; 24 ; 27). PPCM(21 ; 24 ; 27).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# f. PGCD(28 ; 35 ; 49). PPCM(28 ; 35 ; 49).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# g. PGCD(64 ; 80 ; 112). PPCM(64 ; 80 ; 112).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    say '# Exercice 8.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# h. PGCD(39 ; 52 ; 130). PPCM(39 ; 52 ; 130).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_09 is export(:exe09) {
    say '# Exercice 9.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# i. PGCD(144 ; 168 ; 252). PPCM(144 ; 168 ; 252).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_10 is export(:exe10) {
    say '# Exercice 10.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# j. PGCD(189 ; 252 ; 315). PPCM(189 ; 252 ; 315).';
    say '-----------------------------------------------------------------------------------';
}

