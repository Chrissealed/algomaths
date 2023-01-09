unit module Method05;

use v6;

=begin pod
=NAME B<Method05> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<method05.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.17
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
# Méthode 5. Pour déterminer le PGCD de deux nombres entiers par l'algorithme
# des soustractions :
###################################################################################
# ▲ on calcule la différence des deux nombres;
# ▲ on garde le plus petit des deux nombres et la différence trouvée et on écrit
# que le PGCD cherché est leur PGCD;
# ▲ on recommence le même procédé avec les deux nouveaux nombres jusqu'à l'obtention
# de deux nombres égaux, le PGCD est égal à leur valeur.
# La méthode s'appuie sur les propriétés suivantes : a et b désignant deux entiers,
# si a = b, alors PGCD(a;b) = a = b et si a > b, PGCD(a;b) = PGCD(b;a-b).
###################################################################################

EOM
    $t.filepath = 'output/method05.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples05.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m0501.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer le PGCD de 1210 et 462.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m0502.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer le PGCD de 510 et 374.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m0503.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer le PGCD de 189 et 55.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m0504.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer le PGCD de 2072 et 370.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m0505.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer le PGCD de 1631 et 932.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m0506.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer le PGCD de 2940 et 1155.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06b is export(:exe06b) {
    $t.filepath = 'output/m0506+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer le PGCD de n1 et n2 (saisie utilisateur).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    $t.filepath = 'output/m0507.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 7.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Déterminer le PGCD de 15 et 9 puis celui de 75 et 45.';
    $t.tput: '# b. Compléter 75 = ... x 15 et 45 = ... x 9.';
    $t.tput: '# Quelle relation y a-t-il entre le PGCD de 15 et de 9 et celui de 75 et 45 ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}
