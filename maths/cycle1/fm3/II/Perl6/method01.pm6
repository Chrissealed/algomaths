unit module Method01;

use v6;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
# Chapitre II : NOMBRES RELATIFS EN ÉCRITURE FRACTIONNAIRE : OPÉRATIONS.
###################################################################################
# Méthode 1.
# Comment additionner ou soustraire des nombres relatifs en écriture fractionnaire ?
###################################################################################
# Pour additionner ou soustraire des nombres relatifs en écriture fractionnaire :
# ▲ on les réduit au même dénominateur s'ils n'ont pas le même;
# ▲ on ajoute ou on soustrait les numérateurs;
# ▲ on garde le dénominateur commun;
# ▲ on simplifie si c'est possible.
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples01.pdf &';
}

sub exercise_01a is export(:exe01a) {
    say '# Exercice 1. Calculer.';
    say '# --------------------';
    say '# a. 9/5 + 4/5.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_01b is export(:exe01b) {
    say '# Exercice 1. Calculer.';
    say '# --------------------';
    say '# b. 2/21 – 5/21';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_01c is export(:exe01c) {
    say '# Exercice 1. Calculer.';
    say '# --------------------';
    say '# c. 4/5 – 7/25.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_01d is export(:exe01d) {
    say '# Exercice 1. Calculer.';
    say '# --------------------';
    say '# d. 5/8 – 3/11.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_02a is export(:exe02a) {
    say '# Exercice 2. Calculer.';
    say '# --------------------';
    say '# a. 13/15 – 6/5.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_02b is export(:exe02b) {
    say '# Exercice 2. Calculer.';
    say '# --------------------';
    say '# b. 5/6 – 6/5.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_02c is export(:exe02c) {
    say '# Exercice 2. Calculer.';
    say '# --------------------';
    say '# c. 3/14 + 7/10.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_02d is export(:exe02d) {
    say '# Exercice 2. Calculer.';
    say '# --------------------';
    say '# d. 5/6 – 3/4.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_03a is export(:exe03a) {
    say '# Exercice 3. Calculer.';
    say '# --------------------';
    say '# a. 19/46 – 17/69.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_03b is export(:exe03b) {
    say '# Exercice 3. Calculer.';
    say '# --------------------';
    say '# b. 4/3 + 5/7 – 3/21.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_03c is export(:exe03c) {
    say '# Exercice 3. Calculer.';
    say '# --------------------';
    say '# c. − 5/22 + 7/6.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_03d is export(:exe03d) {
    say '# Exercice 3. Calculer.';
    say '# --------------------';
    say '# d. − 7/20 – 11/15.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_04a is export(:exe04a) {
    say '# Exercice 4. Calculer.';
    say '# --------------------';
    say '# a. − 5/6 – 5/3.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_04b is export(:exe04b) {
    say '# Exercice 4. Calculer.';
    say '# --------------------';
    say '# b. –6/11 + –6/–11.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_04c is export(:exe04c) {
    say '# Exercice 4. Calculer.';
    say '# --------------------';
    say '# c. 7/12 – 11/16.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_04d is export(:exe04d) {
    say '# Exercice 4. Calculer.';
    say '# --------------------';
    say '# d. 1/2 – 1/3 + 1/4.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_05a is export(:exe05a) {
    say '# Exercice 5. Calculer.';
    say '# --------------------';
    say '# a. 1/2 + 2/3 + 3/4 + 4/5 + 5/6.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_05b is export(:exe05b) {
    say '# Exercice 5. Calculer.';
    say '# --------------------';
    say '# b. π/3 – π/4.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_05c is export(:exe05c) {
    say '# Exercice 5. Calculer.';
    say '# --------------------';
    say '# c. π/10 + 3π/4.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_05d is export(:exe05d) {
    say '# Exercice 5. Calculer.';
    say '# --------------------';
    say '# d. π/2 + π/3 + π/4.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_06a is export(:exe06a) {
    say '# Exercice 6. Calculer.';
    say '# --------------------';
    say '# a. 5/18 – 4/12.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_06b is export(:exe06b) {
    say '# Exercice 6. Calculer.';
    say '# --------------------';
    say '# b. 15/30 – 3/12.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_06c is export(:exe06c) {
    say '# Exercice 6. Calculer.';
    say '# --------------------';
    say '# c. 15/25 – 12/16 + 7/20.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_06d is export(:exe06d) {
    say '# Exercice 6. Calculer.';
    say '# --------------------';
    say '# d. 21/2121 – 55/44.';
    say '-----------------------------------------------------------------------------------'
}
