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

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples09.pdf &';
}

sub exercise_01a is export(:exe01a) {
    say '# Exercice 1.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# a. PGCD(9 ; 12 ; 30). PPCM(9 ; 12 ; 30).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    say '# Exercice 1.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# b. PGCD(24 ; 30 ; 36). PPCM(24 ; 30 ; 36).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01c is export(:exe01c) {
    say '# Exercice 1.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# c. PGCD(10 ; 15 ; 35). PPCM(10 ; 15 ; 35).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01d is export(:exe01d) {
    say '# Exercice 1.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# d. PGCD(18 ; 27 ; 63). PPCM(18 ; 27 ; 63).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01e is export(:exe01e) {
    say '# Exercice 1.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# e. PGCD(21 ; 24 ; 27). PPCM(21 ; 24 ; 27).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02a is export(:exe02a) {
    say '# Exercice 2.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# a. PGCD(28 ; 35 ; 49). PPCM(28 ; 35 ; 49).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02b is export(:exe02b) {
    say '# Exercice 2.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# b. PGCD(64 ; 80 ; 112). PPCM(64 ; 80 ; 112).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02c is export(:exe02c) {
    say '# Exercice 2.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# c. PGCD(39 ; 52 ; 130). PPCM(39 ; 52 ; 130).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02d is export(:exe02d) {
    say '# Exercice 2.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# d. PGCD(144 ; 168 ; 252). PPCM(144 ; 168 ; 252).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02e is export(:exe02e) {
    say '# Exercice 2.';
    say '# Déterminez le PGCD et le PPCM.';
    say '# e. PGCD(189 ; 252 ; 315). PPCM(189 ; 252 ; 315).';
    say '-----------------------------------------------------------------------------------';
}

