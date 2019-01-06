unit module Method06;

use v6;

=begin pod
=NAME B<Method06> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/II/Perl6/B<method06.pm6>
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
# Méthode 6.
# Comment diviser deux nombres relatifs non nuls en écriture fractionnaire ?
###################################################################################
# Pour diviser deux nombres relatifs non nuls en écriture fractionnaire :
# ▲ on commence par étudier le signe du quotient, si c'est − on l'écrit;
# ▲ on multiplie le premier nombre en écriture fractionnaire par l'inverse du second;
# ▲ on calcule le produit des nombres en écriture fractionnaire en se reportant à
#   la méthode 3 de ce chapitre;
# ▲ on simplifie avant d'effectuer les calculs si c'est possible.
###################################################################################

EOM
    $t.filepath = 'output/method06.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples06.pdf &';
}

sub exercise_a is export(:exe-a) {
    $t.filepath = 'output/m06a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# A = 2/5 ÷ 3/7.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_b is export(:exe-b) {
    $t.filepath = 'output/m06b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# B = 1/(−9) ÷ (−3)/7';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_c is export(:exe-c) {
    $t.filepath = 'output/m06c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# C = 4/3 ÷ 16/(−11).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_d is export(:exe-d) {
    $t.filepath = 'output/m06d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# D = 7/3 ÷ 14/9.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_e is export(:exe-e) {
    $t.filepath = 'output/m06e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# E = 27/55 ÷ 3/5.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_f is export(:exe-f) {
    $t.filepath = 'output/m06f.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# F = 10/(−13) ÷ (−10)/13.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_g is export(:exe-g) {
    $t.filepath = 'output/m06g.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# G = 5/3 ÷ (−3)/5.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_h is export(:exe-h) {
    $t.filepath = 'output/m06h.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# H = 1/5 ÷ (− 11/5).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_i is export(:exe-i) {
    $t.filepath = 'output/m06i.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# I = − 6/13 ÷ (−3)/(−11).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_j is export(:exe-j) {
    $t.filepath = 'output/m06j.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# J = 4/10 ÷ 3/100.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_k is export(:exe-k) {
    $t.filepath = 'output/m06k.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# K = (− 51/77) ÷ (− 12/49).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_l is export(:exe-l) {
    $t.filepath = 'output/m06l.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# L = 20/21 ÷ 5/14.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_m is export(:exe-m) {
    $t.filepath = 'output/m06m.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# M = − 10/7|− 7/10.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_n is export(:exe-n) {
    $t.filepath = 'output/m06n.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# N = (−42)/5|77/5.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_o is export(:exe-o) {
    $t.filepath = 'output/m06o.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# O = 55/21|− 15/14.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_p is export(:exe-p) {
    $t.filepath = 'output/m06p.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# P = 132/(−51)|−(−33)/34.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_q is export(:exe-q) {
    $t.filepath = 'output/m06q.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Q = π/6 ÷ 1/10.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_r is export(:exe-r) {
    $t.filepath = 'output/m06r.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# R = π/3 × π/3';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_s is export(:exe-s) {
    $t.filepath = 'output/m06s.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# S = 1/3 ÷ π/2.';
    $t.tput: '-----------------------------------------------------------------------------------'
}

sub exercise_t is export(:exe-t) {
    $t.filepath = 'output/m06t.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer le quotient suivant.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# T = 5π/12 ÷ π/4.';
    $t.tput: '-----------------------------------------------------------------------------------'
}
