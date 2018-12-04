unit module Method02;

use v6;

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method is export(:methodwording) {
    my Str $message = qq:to/EOM/;
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
    $t.filepath = 'output/method02.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples02.pdf &';
}

sub exercise_a is export(:exe-a) {
    $t.filepath = 'output/m02a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# A = 7 + 3/4.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_b is export(:exe-b) {
    $t.filepath = 'output/m02b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# B = 1 – 5/7.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_c is export(:exe-c) {
    $t.filepath = 'output/m02c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# C = 7/9 – 2.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_d is export(:exe-d) {
    $t.filepath = 'output/m02d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# D =  − 5/3 – 6.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_e is export(:exe-e) {
    $t.filepath = 'output/m02e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# E = 5/3 + 4 + 2/7.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_f is export(:exe-f) {
    $t.filepath = 'output/m02f.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# F = 3 − 1/2 + 3/4.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_g is export(:exe-g) {
    $t.filepath = 'output/m02g.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# G = 0,5 – 5/6.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_h is export(:exe-h) {
    $t.filepath = 'output/m02h.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# H = 30,125 – 3/8.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_i is export(:exe-i) {
    $t.filepath = 'output/m02i.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# I = 1 + 1/2 + 3/4 + 5/6.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_j is export(:exe-j) {
    $t.filepath = 'output/m02j.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# J = 10 − 3/10 + 5/15.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_k is export(:exe-k) {
    $t.filepath = 'output/m02k.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# K = 3 + 4/9 – 1/3 + 4/27.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_l is export(:exe-l) {
    $t.filepath = 'output/m02l.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# L = 4/11 – 3/7 − 2.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_m is export(:exe-m) {
    $t.filepath = 'output/m02m.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# M = 5 − 1/5.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_n is export(:exe-n) {
    $t.filepath = 'output/m02n.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# N = 1 − 5/21 – 5/14.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_o is export(:exe-o) {
    $t.filepath = 'output/m02o.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# O = 1 − 3/7 + 5/12 + 4/21.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_p is export(:exe-p) {
    $t.filepath = 'output/m02p.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# P = π/3 – π.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_q is export(:exe-q) {
    $t.filepath = 'output/m02q.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Q = π + π/7.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_r is export(:exe-r) {
    $t.filepath = 'output/m02r.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# R = π – π/2 − π/3.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_s is export(:exe-s) {
    $t.filepath = 'output/m02s.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# S = 5π/4 – 3/π.';
    $t.tput: '-----------------------------------------------------------------------------------';
}
