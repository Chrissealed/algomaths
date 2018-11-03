unit module Method04;

use v6;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
# Chapitre II : NOMBRES RELATIFS EN ÉCRITURE FRACTIONNAIRE : OPÉRATIONS.
###################################################################################
# Méthode 4.
# Comment multiplier des nombres relatifs non nuls en écriture fractionnaire ?
###################################################################################
# Pour multiplier des nombres relatifs non nuls en écriture fractionnaire :
# ▲ on commence par étudier le signe du produit, si c'est − on l'écrit;
# ▲ on multiplie les numérateurs entre eux et les dénominateurs entre eux;
# ▲ on simplifie avant d'effectuer les calculs si c'est possible.
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples04.pdf &';
}

sub exercise_a is export(:exe-a) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# A = 4/11 × 5/3.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_b is export(:exe-b) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# B = −7/3 × −1/−28';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_c is export(:exe-c) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# C = − 4/−3 × −21/−20.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_d is export(:exe-d) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# D = 3/7 × 5/11 × 7/2.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_e is export(:exe-e) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# E = 1/3 × 1/3.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_f is export(:exe-f) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# F = 7/4 × 4/−7.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_g is export(:exe-g) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# G = –3/5 × −15/24 × 8/3.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_h is export(:exe-h) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# H = – −5/7 × 2/−13 × 7/−3.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_i is export(:exe-i) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# I = − 16/33 × −9/20.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_j is export(:exe-j) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# J = 121/−120 × 210/22.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_k is export(:exe-k) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# K = (− 35/44) × (− 22/15).';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_l is export(:exe-l) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# L = 3/5 × 5/7 × 7/9.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_m is export(:exe-m) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# M = 13/−7 × 2/91.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_n is export(:exe-n) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# N = −5/7 × 2/3 × 7/−10.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_o is export(:exe-o) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# O = 1/10 × 1/20 × 1/30.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_p is export(:exe-p) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# P = 1/2 × (− 1/4) × 1/8.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_q is export(:exe-q) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# Q = 2/3 × 2/3 × 2/3.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_r is export(:exe-r) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# R = (– 5/7) × (− 5/7).';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_s is export(:exe-s) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# S = 1/3 × π/4.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_t is export(:exe-t) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# S = 7/12 × 4π/5.';
    say '-----------------------------------------------------------------------------------'
}
