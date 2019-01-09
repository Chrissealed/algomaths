unit module Method07;

use v6;

=begin pod
=NAME B<Method07> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/II/Perl6/B<method07.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.01.09
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
# Méthode 7.
# Comment multiplier ou diviser deux nombres relatifs non nuls l'un en écriture
# décimale, l'autre en écriture fractionnaire ?
###################################################################################
# Pour multiplier ou diviser deux nombres relatifs non nuls l'un en écriture
# décimale, l'autre en écriture fractionnaire :
# ▲ on considère le nombre en écriture décimale comme un nombre en écriture
#   fractionnaire de dénominateur 1;
# ▲ on se ramène à des calculs avec deux nombres en écriture fractionnaire
#   dont l'un a pour dénominateur 1; 
# ▲ on calcule en utilisant les méthodes 1, 2 et 4 de ce chapitre 
#   en fonction des opérations.
###################################################################################

EOM
    $t.filepath = 'output/method07.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples07.pdf &';
}

sub exercise_a is export(:exe-a) {
    $t.filepath = 'output/m07a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# A = 7 × 3/5.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_b is export(:exe-b) {
    $t.filepath = 'output/m07b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# B = 10/3 ÷ (−3).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_c is export(:exe-c) {
    $t.filepath = 'output/m07c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# C = 13/2 × 2.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_d is export(:exe-d) {
    $t.filepath = 'output/m07d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# D = (−2) ÷ (−1/3).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_e is export(:exe-e) {
    $t.filepath = 'output/m07e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# E = 12/55 ÷ 18.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_f is export(:exe-f) {
    $t.filepath = 'output/m07f.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# F = − 3/8 × 24.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_g is export(:exe-g) {
    $t.filepath = 'output/m07g.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# G = 1 ÷ 3/11.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_h is export(:exe-h) {
    $t.filepath = 'output/m07h.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# H = 11/7 ÷ (−7).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_i is export(:exe-i) {
    $t.filepath = 'output/m07i.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# I = (−44) × 5/(−11).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_j is export(:exe-j) {
    $t.filepath = 'output/m07j.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# J = 2/3 ÷ 3.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_k is export(:exe-k) {
    $t.filepath = 'output/m07k.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# K = (−3)|7/6.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_l is export(:exe-l) {
    $t.filepath = 'output/m07l.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# L = (−3)|6/7.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_m is export(:exe-m) {
    $t.filepath = 'output/m07m.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# M = − 6/7|3.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_n is export(:exe-n) {
    $t.filepath = 'output/m07n.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# N = (−21) × 1/−18.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_o is export(:exe-o) {
    $t.filepath = 'output/m07o.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# O = 1/3 × 10.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_p is export(:exe-p) {
    $t.filepath = 'output/m07p.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice complémentaire. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# P = π/7 × 2.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_q is export(:exe-q) {
    $t.filepath = 'output/m07q.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice complémentaire. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Q = 6 ÷ π/8.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_r is export(:exe-r) {
    $t.filepath = 'output/m07r.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice complémentaire. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# R = π/6 ÷ 5';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_s is export(:exe-s) {
    $t.filepath = 'output/m07s.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice complémentaire. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# S = 7/3 × π.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_t is export(:exe-t) {
    $t.filepath = 'output/m07t.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice complémentaire. Calculer l\'expression donnée.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# T = π ÷ π/3.';
    $t.tput: '-----------------------------------------------------------------------------------';
}
