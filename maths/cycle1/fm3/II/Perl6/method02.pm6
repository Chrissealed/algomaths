unit module Method02;

use v6;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
# Chapitre II : NOMBRES RELATIFS EN ÉCRITURE FRACTIONNAIRE : OPÉRATIONS.
###################################################################################
# Méthode 2.
# Comment additionner ou soustraire des nombres relatifs l'un en écriture
# décimale, les autres en écriture fractionnaire ?
###################################################################################
# Pour additionner ou soustraire des nombres relatifs l'un en écriture décimale,
# les autres en écriture fractionnaire :
# ▲ on considère le nombre en écriture décimale comme un nombre en écriture
#   fractionnaire de dénominateur 1;
# ▲ on se ramène à des calculs avec des nombres en écriture fractionnaire
#   dont l'un a pour dénominateur 1;
# ▲ on calcule en utilisant la méthode 1 de ce chapitre.
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples02.pdf &';
}

sub exercise_a is export(:exe-a) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# A = 7 + 3/4.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_b is export(:exe-b) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# B = 1 – 5/7';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_c is export(:exe-c) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# C = 7/9 – 2.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_d is export(:exe-d) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# D =  − 5/3 – 6.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_e is export(:exe-e) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# E = 5/3 + 4 + 2/7.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_f is export(:exe-f) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# F = 3 − 1/2 + 3/4.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_g is export(:exe-g) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# G = 0,5 – 5/6.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_h is export(:exe-h) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# H = 30,125 – 3/8.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_i is export(:exe-i) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# I = 1 + 1/2 + 3/4 + 5/6.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_j is export(:exe-j) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# J = 10 − 3/10 + 5/15.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_k is export(:exe-k) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# K = 3 + 4/9 – 1/3 + 4/27.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_l is export(:exe-l) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# L = 4/11 – 3/7 − 2.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_m is export(:exe-m) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# M = 5 − 1/5.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_n is export(:exe-n) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# N = 1 − 5/21 – 5/14.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_o is export(:exe-o) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# O = 1 − 3/7 + 5/12 + 4/21.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_p is export(:exe-p) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# P = π/3 – π.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_q is export(:exe-q) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# Q = π + π/7.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_r is export(:exe-r) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# R = π – π/2 − π/3.';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_s is export(:exe-s) {
    say '# Exercice. Calculer.';
    say '# ------------------';
    say '# S = 5π/4 – 3/π.';
    say '-----------------------------------------------------------------------------------'
}
