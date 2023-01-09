unit module Method09;

use v6;

=begin pod
=NAME B<Method09> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<method09.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.17
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method is export(:methodwording) {
    my $message = qq:to/EOM/;
# Chapitre I : ARITHMÉTIQUE.
###################################################################################
# Méthode 9. Comment déterminer tous les diviseurs communs à deux nombres avec leur
# PGCD :
###################################################################################
# ▲ on détermine le PGCD des deux nombres (méthode 5; 6; 7 ou 8);
# ▲ on détermine la liste de tous les diviseurs du PGCD (= méthode 3);
# ▲ on conclut en donnant la liste trouvée; c'est celle de tous les diviseurs
#   communs aux deux nombres.
#
# Les diviseurs communs de deux nombres sont les diviseurs de leur PGCD.
###################################################################################

EOM
    $t.filepath = 'output/method09.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples09.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m0901.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminer la liste des diviseurs communs de 1210 et 462 (voir méthode 5 exercice 1).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m0902.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminer la liste des diviseurs communs de 2072 et 370 (voir méthode 5 exercice 4).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m0903.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminer la liste des diviseurs communs de 2940 et 1155 (voir méthode 4 exercice 3).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m0904.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminer la liste des diviseurs communs de 780 et 504 (voir méthode 7 exercice 1).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m0905.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Démontrer que 988 et 363 n\'ont qu\'un seul diviseur commun (voir méthode 7 exercice 2).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m0906.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminer la liste des diviseurs communs de 7375 et 472 (voir méthode 7 exercice 3).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    $t.filepath = 'output/m0907.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 7.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Démontrer que 2037 et 454 n\'ont qu\'un seul diviseur commun (voir méthode 7 exercice 5).';
    $t.tput: '-----------------------------------------------------------------------------------';
}
