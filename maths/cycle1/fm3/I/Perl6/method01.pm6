unit module Method01;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
###################################################################################
# Méthode 1. Comment utiliser la notion de multiple d'un entier naturel ?
###################################################################################
# Pour utiliser la notion de multiple d'un entier naturel:
# ▲ on s'appuie sur la définition : a et b étant deux entiers naturels et b non nul
# on dit que a est un multiple de b s'il existe un entier q tel que a = bq.
# Remarque : 0 est multiple de tous les nombres.
###################################################################################

EOM
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1 :';
    say '# -----------';
    say '# 180 et 260 sont-ils des multiples de 15 ?';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2 :';
    say '# -----------';
    say '# Trouver les multiples de 53 compris entre 300 et 500.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3 :';
    say '# -----------';
    say '# a. 36 et 42 sont-ils des multiples consécutifs de 6 ?';
    say '# b. 42 et 56 sont-ils des multiples consécutifs de 7 ?';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4 :';
    say '# -----------';
    say '# On donne un entier n. Donner deux multiples consécutifs de n.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5 :';
    say '# -----------';
    say '# Démontrer que la somme de trois multiples consécutifs de 5 est un multiple de 15.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6 :';
    say '# -----------';
    say '# Trouver un nombre pair compris entre 500 et 800 qui soit multiple à la fois de';
    say '# 11 et de 17.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7 :';
    say '# -----------';
    say '# Peut-on trouver un nombre non nul inférieur à 150 qui soit à la fois';
    say '# a. multiple de 11 et de 13 ?';
    say '# b. multiple de 11 et de 15 ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    say '# Exercice 8 :';
    say '# -----------';
    say '# 393 et 793 sont-ils des multiples de 13 ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_09 is export(:exe09) {
    say '# Exercice 9 :';
    say '# -----------';
    say '# La somme de quatre multiples consécutifs de 6 est 228. Trouver ces nombres.';
    say '-----------------------------------------------------------------------------------';
}
