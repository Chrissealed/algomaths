unit module Method03;

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
    my Str $message = q:to/EOM/;
# Chapitre I : ARITHMÉTIQUE.
###################################################################################
# Méthode 3. Comment établir la liste des diviseurs d'un entier non nul ?
###################################################################################
# ▲ on commence la liste par 1 et on la termine par le nombre lui-même;
# ▲ on cherche ensuite si 2 est un diviseur du nombre, si ce n'est pas le cas,
# on passe à 3, si c'est le cas on calcule le nombre qui multiplié par 2 donne le
# nombre choisi, ce second facteur est aussi un diviseur;
# ▲ on cherche si 3 est un diviseur du nombre, si ce n'est pas le cas, on passe à 4,
# si c'est le cas on calcule le nombre qui multiplié par 3 donne le nombre choisi,
# ce second facteur est aussi un diviseur;
# ▲ on continue et on détermine ainsi les diviseurs dans l'ordre croissant à partir
# de 1 et dans l'ordre décroissant à partir du nombre, on s'arrête quand on arrive
# à un diviseur déjà trouvé.
# REMARQUE : le nombre de diviseurs d'un entier non nul est pair sauf si ce nombre
# est un carré parfait. Tout nombre non nul est un diviseur de 0.
###################################################################################

EOM
    $t.filepath = 'output/method03.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples03.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m0301.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Donner la liste des diviseurs de 108.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    $t.filepath = 'output/m0301+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Donner la liste des diviseurs de 108.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m0302.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Donner la liste des diviseurs de 36.';
    $t.tput: '# Quelle est la parité du nombre de diviseurs ? Pourquoi ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02b is export(:exe02b) {
    $t.filepath = 'output/m0302+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Donner la liste des diviseurs de 36.';
    $t.tput: '# Quelle est la parité du nombre de diviseurs ? Pourquoi ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m0303.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Donner la liste des diviseurs de 257. Que remarque-t-on ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03b is export(:exe03b) {
    $t.filepath = 'output/m0303+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Donner la liste des diviseurs de 257. Que remarque-t-on ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m0304.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Donner la liste des diviseurs de 300.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04b is export(:exe04b) {
    $t.filepath = 'output/m0304+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.closefile = False;
    $t.tput: '# Exercice 4+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# Donner la liste des diviseurs d\'un entier non nul (saisie utilisateur).';
    $t.tput: '# (ex: 108, 36, 257, 300...).';
    $t.tput: '-----------------------------------------------------------------------------------'
}

sub exercise_04c is export(:exe04c) {
    $t.filepath = 'output/m0304++.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.closefile = False;
    $t.tput: '# Exercice 4++.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# Donner la liste des diviseurs d\'un entier non nul (saisie utilisateur).';
    $t.tput: '# (ex: 108, 36, 257, 300...).';
    $t.tput: '-----------------------------------------------------------------------------------'
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m0305.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# On veut répartir 32 élèves pour un travail en plusieurs groupes comprenant chacun';
    $t.tput: '# le même nombre d\'élèves. Donner toutes les possibilités sachant que chaque groupe';
    $t.tput: '# est constitué de plusieurs élèves.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05b is export(:exe05b) {
    $t.filepath = 'output/m0305+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# On veut répartir x élèves pour un travail en plusieurs groupes comprenant chacun';
    $t.tput: '# le même nombre d\'élèves. Donner toutes les possibilités sachant que chaque groupe';
    $t.tput: '# est constitué de plusieurs élèves (saisie utilisateur de x).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05c is export(:exe05c) {
    $t.filepath = 'output/m0305++.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5++.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# On veut répartir x élèves pour un travail en plusieurs groupes comprenant chacun';
    $t.tput: '# le même nombre d\'élèves. Donner toutes les possibilités sachant que chaque groupe';
    $t.tput: '# est constitué de plusieurs élèves (saisie utilisateur de x).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m0306.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Donner la liste des diviseurs de 72.';
    $t.tput: '# b. Donner la liste des diviseurs de 84.';
    $t.tput: '# c. Donner la liste des diviseurs communs de 72 et de 84.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06b is export(:exe06b) {
    $t.filepath = 'output/m0306+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# a. Donner la liste des diviseurs de n1. (saisie utilisateur)';
    $t.tput: '# b. Donner la liste des diviseurs de n2. (saisie utilisateur)';
    $t.tput: '# c. Donner la liste des diviseurs communs de n1 et de n2.';
    $t.tput: '-----------------------------------------------------------------------------------';
}
