unit module Method07;

use v6;

sub put-up-method is export(:methodwording) {
    say q:to/EOM/;
###################################################################################
# Méthode 7. Comment déterminer le PGCD de deux nombres à l'aide de leur décomposi-
# tion en facteurs premiers :
# ▲ Deux nombres peuvent avoir des facteurs en commun. Le plus grand commun diviseur
# (PGCD) est, comme son nom l'indique, leur plus grand facteur commun.
# Le PGCD se déduit directement des décompositions en facteurs premiers des deux
# nombres en prenant les facteurs communs à chacun des nombres.
###################################################################################
# ▲ UNE BONNE IDEE! : il existe une méthode pour déterminer le PGCD de deux nombres
# qui ne requiert pas leurs décompositions en facteurs premiers et qui souvent
# s'avère plus rapide. L'idée de base est que le PGCD de deux nombres est aussi
# forcément un diviseur de leur différence. Voyez-vous pourquoi il en est ainsi ?
###################################################################################
# (Voir aussi les méthodes 4, 5, 6, 7 et 8 du dossier fm3).
###################################################################################

EOM
}

sub show-examples() is export(:examples) {
    shell 'xdg-open ../examples07.pdf &'
}

sub exercise_01a is export(:exe01a) {
    say '# Exercice 1.';
    say '# a. PGCD(12 ; 30)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    say '# Exercice 1.';
    say '# b. PGCD(24 ; 84)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01c is export(:exe01c) {
    say '# Exercice 1.';
    say '# c. PGCD(27 ; 45)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01d is export(:exe01d) {
    say '# Exercice 1.';
    say '# d. PGCD(32 ; 56)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01e is export(:exe01e) {
    say '# Exercice 1.';
    say '# e. PGCD(34 ; 85)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02a is export(:exe02a) {
    say '# Exercice 2.';
    say '# a. PGCD(45 ; 225)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02b is export(:exe02b) {
    say '# Exercice 2.';
    say '# b. PGCD(144 ; 216)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02c is export(:exe02c) {
    say '# Exercice 2.';
    say '# c. PGCD(90 ; 196)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02d is export(:exe02d) {
    say '# Exercice 2.';
    say '# d. PGCD(243 ; 135)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02e is export(:exe02e) {
    say '# Exercice 2.';
    say '# e. PGCD(188 ; 168)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03a is export(:exe03a) {
    say '# Exercice 3.';
    say '# a. PGCD(1024 ; 864)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03b is export(:exe03b) {
    say '# Exercice 03.';
    say '# b. PGCD(1122 ; 1815)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03c is export(:exe03c) {
    say '# Exercice 03.';
    say '# c. PGCD(875 ; 1125)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03d is export(:exe03d) {
    say '# Exercice 03.';
    say '# d. PGCD(1960 ; 6370)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03e is export(:exe03e) {
    say '# Exercice 03.';
    say '# e. PGCD(1024 ; 1152)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04a is export(:exe04a) {
    say '# Exercice 04.';
    say '# a. PGCD(1243 ; 1244)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04b is export(:exe04b) {
    say '# Exercice 04.';
    say '# b. PGCD(1721 ; 1726)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04c is export(:exe04c) {
    say '# Exercice 04.';
    say '# c. PGCD(875 ; 900)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04d is export(:exe04d) {
    say '# Exercice 04.';
    say '# d. PGCD(1960 ; 5880)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04e is export(:exe04e) {
    say '# Exercice 04.';
    say '# e. PGCD(1024 ; 2024)';
    say '-----------------------------------------------------------------------------------';
}
