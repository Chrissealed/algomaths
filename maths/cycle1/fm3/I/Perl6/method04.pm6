unit module Method04;

use v6;

=begin pod
=NAME module B<Method03>
=AUTHOR Christian Béloscar
=VERSION 0.1.119
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method is export(:methodwording) {
    my $message = q:to/EOM/;
# Chapitre I : ARITHMÉTIQUE.
###################################################################################
# Méthode 4. Comment déterminer le PGCD de deux nombres entiers connaissant
# l'ensemble des diviseurs de chacun des deux nombres :
###################################################################################
# ▲ on établit la liste des diviseurs communs des deux nombres (méthode 3);
# ▲ on repère dans cette liste le plus grand nombre, c'est le PGCD cherché.
###################################################################################

EOM
    $t.filepath = 'output/method04.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples04.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m0401.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Donner la liste des diviseurs de 90.';
    $t.tput: '# b. Donner la liste des diviseurs de 126.';
    $t.tput: '# c. Donner la liste des diviseurs communs de 90 et de 126.';
    $t.tput: '# d. Quel est le PGCD de 90 et 126 ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m0402.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Donner la liste des diviseurs de 132.';
    $t.tput: '# b. Donner la liste des diviseurs de 220.';
    $t.tput: '# c. Donner la liste des diviseurs communs de 132 et de 220.';
    $t.tput: '# d. Quel est le PGCD de 132 et 220 ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m0403.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Donner la liste des diviseurs de 105.';
    $t.tput: '# b. Donner la liste des diviseurs de 175.';
    $t.tput: '# c. Donner la liste des diviseurs communs de 105 et de 175.';
    $t.tput: '# d. Quel est le PGCD de 105 et 175 ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m0404.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Donner la liste des diviseurs de 124.';
    $t.tput: '# b. Donner la liste des diviseurs de 65.';
    $t.tput: '# c. Donner la liste des diviseurs communs de 124 et de 65.';
    $t.tput: '# d. Quel est le PGCD de 124 et 65 ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m0405.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Donner la liste des diviseurs de 38.';
    $t.tput: '# b. Donner la liste des diviseurs de 190.';
    $t.tput: '# c. Donner la liste des diviseurs communs de 38 et de 190.';
    $t.tput: '# d. Quel est le PGCD de 38 et 190 ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m0406.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Donner la liste des diviseurs de 56.';
    $t.tput: '# b. Donner la liste des diviseurs de 70.';
    $t.tput: '# c. Donner la liste des diviseurs communs de 56 et de 70.';
    $t.tput: '# d. Quel est le PGCD de 56 et 70 ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06b is export(:exe06b) {
    $t.filepath = 'output/m0406+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Donner la liste des diviseurs de n1. (saisie utilisateur)';
    $t.tput: '# b. Donner la liste des diviseurs de n2. (saisie utilisateur)';
    $t.tput: '# c. Donner la liste des diviseurs communs de n1 et de n2.';
    $t.tput: '# d. Quel est le PGCD de n1 et n2 ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06c is export(:exe06c) {
    $t.filepath = 'output/m0406++.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6++.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Donner la liste des diviseurs de n1. (saisie utilisateur)';
    $t.tput: '# b. Donner la liste des diviseurs de n2. (saisie utilisateur)';
    $t.tput: '# c. Donner la liste des diviseurs communs de n1 et de n2.';
    $t.tput: '# d. Quel est le PGCD de n1 et n2 ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}
