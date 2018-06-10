unit module Method03;

use v6;

sub put-up-method is export(:methodwording) {
    say q:to/EOM/;
###################################################################################
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
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples03.pdf &';
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Donner la liste des diviseurs de 108.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# ----------';
    say '# Donner la liste des diviseurs de 36.';
    say '# Quelle est la parité du nombre de diviseurs ? Pourquoi ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# ----------';
    say '# Donner la liste des diviseurs de 257. Que remarque-t-on ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# ----------';
    say '# Donner la liste des diviseurs de 300.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04b is export(:exe04b) {
    say '# Exercice 4b.';
    say '# -----------';
    say '# Donner la liste des diviseurs d\'un entier non nul (saisie utilisateur).';
    say '# (ex: 108, 36, 257, 300...).';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# ----------';
    say '# On veut répartir 32 élèves pour un travail en plusieurs groupes comprenant chacun';
    say '# le même nombre d\'élèves. Donner toutes les possibilités sachant que chaque groupe';
    say '# est constitué de plusieurs élèves.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05b is export(:exe05b) {
    say '# Exercice 5b.';
    say '# -----------';
    say '# On veut répartir x élèves pour un travail en plusieurs groupes comprenant chacun';
    say '# le même nombre d\'élèves. Donner toutes les possibilités sachant que chaque groupe';
    say '# est constitué de plusieurs élèves (saisie utilisateur de x).';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# ----------';
    say '# a. Donner la liste des diviseurs de 72.';
    say '# b. Donner la liste des diviseurs de 84.';
    say '# c. Donner la liste des diviseurs communs de 72 et de 84.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06b is export(:exe06b) {
    say '# Exercice 6b.';
    say '# -----------';
    say '# a. Donner la liste des diviseurs de n1. (saisie utilisateur)';
    say '# b. Donner la liste des diviseurs de n2. (saisie utilisateur)';
    say '# c. Donner la liste des diviseurs communs de n1 et de n2.';
    say '-----------------------------------------------------------------------------------';
}
