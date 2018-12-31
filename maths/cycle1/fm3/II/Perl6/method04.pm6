unit module Method04;

use v6;

=begin pod
=NAME B<Method04> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/II/Perl6/B<method04.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.30
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method is export(:methodwording) {
    my Str $message = qq:to/EOM/;
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
    $t.filepath = 'output/method04.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples04.pdf &';
}

sub exercise_a is export(:exe-a) {
    $t.filepath = 'output/m04a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# A = 4/11 × 5/3.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_b is export(:exe-b) {
    $t.filepath = 'output/m04b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# B = −7/3 × −1/−28';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_c is export(:exe-c) {
    $t.filepath = 'output/m04c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# C = − 4/−3 × −21/−20.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_d is export(:exe-d) {
    $t.filepath = 'output/m04d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# D = 3/7 × 5/11 × 7/2.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_e is export(:exe-e) {
    $t.filepath = 'output/m04e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# E = 1/3 × 1/3.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_f is export(:exe-f) {
    $t.filepath = 'output/m04f.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# F = 7/4 × 4/−7.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_g is export(:exe-g) {
    $t.filepath = 'output/m04g.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# G = –3/5 × −15/24 × 8/3.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_h is export(:exe-h) {
    $t.filepath = 'output/m04h.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# H = – −5/7 × 2/−13 × 7/−3.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_i is export(:exe-i) {
    $t.filepath = 'output/m04i.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# I = − 16/33 × −9/20.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_j is export(:exe-j) {
    $t.filepath = 'output/m04j.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# J = 121/−120 × 210/22.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_k is export(:exe-k) {
    $t.filepath = 'output/m04k.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# K = (− 35/44) × (− 22/15).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_l is export(:exe-l) {
    $t.filepath = 'output/m04l.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# L = 3/5 × 5/7 × 7/9.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_m is export(:exe-m) {
    $t.filepath = 'output/m04m.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# M = 13/−7 × 2/91.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_n is export(:exe-n) {
    $t.filepath = 'output/m04n.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# N = −5/7 × 2/3 × 7/−10.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_o is export(:exe-o) {
    $t.filepath = 'output/m04o.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# O = 1/10 × 1/20 × 1/30.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_p is export(:exe-p) {
    $t.filepath = 'output/m04p.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# P = 1/2 × (− 1/4) × 1/8.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_q is export(:exe-q) {
    $t.filepath = 'output/m04q.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Q = 2/3 × 2/3 × 2/3.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_r is export(:exe-r) {
    $t.filepath = 'output/m04r.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# R = (– 5/7) × (− 5/7).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_s is export(:exe-s) {
    $t.filepath = 'output/m04s.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# S = 1/3 × π/4.';
    $t.tput: '-----------------------------------------------------------------------------------'
}

sub exercise_t is export(:exe-t) {
    $t.filepath = 'output/m04t.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# T = 7/12 × 4π/5.';
    $t.tput: '-----------------------------------------------------------------------------------'
}
