unit module Method03;

use v6;

=begin pod
=NAME B<Method03> : Perl 6 module in B<algomaths>/maths/cycle1/ms3/II/Perl6/B<method03.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.17
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method03 is export(:methodwording) {
    my $message = qq:to/EOM/;
# II - MÉTHODES SUR LES PGCD -
###################################################################################
# Méthode 03. Pour simplifier des fractions.
###################################################################################
# Pour déterminer la fraction irréductible égale à une fraction donnée :
# ▲ on simplifie la fraction donnée en divisant le numérateur et le dénominateur
#   par leur PGCD.
# Pour rendre irréductible une fraction a/b, on calcule PGCD(a ; b). Ensuite, on
# divise le haut et le bas (c'est à dire le numérateur et le dénominateur)
# par ce PGCD.
# ▲ Remarque :
#   on peut décomposer le numérateur et le dénominateur en produit de facteurs simples
#   pour faire apparaître les facteurs communs, on supprime ces facteurs au numérateur
#   et au dénominateur, on s'assure que le numérateur et le dénominateur de la fraction
#   obtenue sont premiers entre eux (cf. method10 de fm3/I/Perl6).
###################################################################################

EOM
    $t.filepath = 'output/method03.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples03 is export(:examples) {
    shell 'xdg-open ../examples03.pdf &';
}

sub exercise_01a is export(:exe01a) {
    $t.filepath = 'output/m0203a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1a.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Etant donnée la fraction suivante : 170/578.';
    $t.tput: '# a. Montrer qu\'elle n\'est pas irréductible';
    $t.tput: '# b. L\'écrire sous forme irréductible.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    $t.filepath = 'output/m0203b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1b.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Etant donnée la fraction suivante : 1183/455.';
    $t.tput: '# a. Montrer qu\'elle n\'est pas irréductible';
    $t.tput: '# b. L\'écrire sous forme irréductible.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01c is export(:exe01c) {
    $t.filepath = 'output/m0203c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1c.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Etant donnée la fraction suivante : 1356/4972.';
    $t.tput: '# a. Montrer qu\'elle n\'est pas irréductible';
    $t.tput: '# b. L\'écrire sous forme irréductible.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01d is export(:exe01d) {
    $t.filepath = 'output/m0203d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1d.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Etant donnée la fraction suivante : 108/288.';
    $t.tput: '# a. Montrer qu\'elle n\'est pas irréductible';
    $t.tput: '# b. L\'écrire sous forme irréductible.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01e is export(:exe01e) {
    $t.filepath = 'output/m0203e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1e.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Etant donnée la fraction suivante : 682/352.';
    $t.tput: '# a. Montrer qu\'elle n\'est pas irréductible';
    $t.tput: '# b. L\'écrire sous forme irréductible.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01f is export(:exe01f) {
    $t.filepath = 'output/m0203f.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1f.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Etant donnée la fraction suivante : 675/375.';
    $t.tput: '# a. Montrer qu\'elle n\'est pas irréductible';
    $t.tput: '# b. L\'écrire sous forme irréductible.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01g is export(:exe01g) {
    $t.filepath = 'output/m0203g.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1g.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Etant donnée la fraction suivante : 406/696.';
    $t.tput: '# a. Montrer qu\'elle n\'est pas irréductible';
    $t.tput: '# b. L\'écrire sous forme irréductible.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01h is export(:exe01h) {
    $t.filepath = 'output/m0203h.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1h.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Etant donnée la fraction suivante : 462/546.';
    $t.tput: '# a. Montrer qu\'elle n\'est pas irréductible';
    $t.tput: '# b. L\'écrire sous forme irréductible.';
    $t.tput: '-----------------------------------------------------------------------------------';
}
