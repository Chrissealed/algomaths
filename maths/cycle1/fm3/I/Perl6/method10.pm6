unit module Method10;

use v6;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
###################################################################################
# Chapitre I : ARITHMÉTIQUE.
###################################################################################
# Méthode 10. Comment savoir si deux nombres sont premiers entre eux ?
###################################################################################
# Pour savoir si deux nombres entiers sont premiers entre eux :
# ▲ on observe les deux nombres;
#   - si on constate qu'ils ont un diviseur commun autre que 1,
# ▲ on conclut qu'ils ne sont pas premiers entre eux,
#   - dans le cas contraire,
# ▲ on détermine leur PGCD;
# ▲ on conclut que les deux nombres sont premiers entre eux, si le PGCD est 1 et
#   on conclut qu'ils ne le sont pas, si le PGCD est différent de 1.
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples10.pdf &';
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# ----------';
    say '# 4664 et 2915.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# ----------';
    say '# 4435 et 1176.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# ----------';
    say '# 865 et 1540.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# ----------';
    say '# 174702 et 119115.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# ----------';
    say '# 2013 et 471.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# ----------';
    say '# 77 et 1001.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7.';
    say '# ----------';
    say '# 14 et 55.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    say '# Exercice 8.';
    say '# ----------';
    say '# 121 et 450.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_09 is export(:exe09) {
    say '# Exercice 9.';
    say '# ----------';
    say '# 5167 et 2277.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_10 is export(:exe10) {
    say '# Exercice 10.';
    say '# -----------';
    say '# 9438 et 6799.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_11 is export(:exe11) {
    say '# Exercice 11.';
    say '# -----------';
    say '# 493 et 203.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_12 is export(:exe12) {
    say '# Exercice 12.';
    say '# -----------';
    say '# 1450 et 2691.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_13 is export(:exe13) {
    say '# Exercice 13.';
    say '# -----------';
    say '# 2929 et 10605.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_14 is export(:exe14) {
    say '# Exercice 14.';
    say '# -----------';
    say '# Deux nombres pairs.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_15 is export(:exe15) {
    say '# Exercice 15.';
    say '# -----------';
    say '# 258 et 259.';
    say '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_16 is export(:exe16) {
    say '# Exercice 16.';
    say '# -----------';
    say '# Démontrer que deux nombres entiers consécutifs sont premiers entre eux.';
    say '-----------------------------------------------------------------------------------';
}
