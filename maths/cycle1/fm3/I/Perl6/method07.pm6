unit module Method07;

use v6;

=begin pod
=NAME B<Method07> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<method07.pm6>
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
# Méthode 7. Comment déterminer le PGCD de deux nombres entiers par l'algorithme
# d'Euclide ?
###################################################################################
# ▲ on effectue la division euclidienne du plus grand nombre par le plus petit;
# ▲ on conserve le plus petit des deux nombres et le reste trouvé et on écrit que
# le PGCD cherché est leur PGCD;
# ▲ on continue ainsi jusqu'à l'obtention d'un reste nul, le PGCD est le dernier
# reste non nul.
# La méthode s'appuie sur la propriété suivante : a et b désignant deux entiers,
# si a > b, PGCD(a;b) = PGCD(b;r) où r est le reste de la division euclidienne de
# a par b
###################################################################################

EOM
    $t.filepath = 'output/method07.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples07.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m0701.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer le PGCD de 780 et 504.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m0702.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminer le PGCD de 988 et 363.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m0703.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminer le PGCD de 7375 et 472.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m0704.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. Déterminer le PGCD de 2072 et 370.';
    $t.tput: '# b. Comparer avec l\'algorithme des soustractions (méthode 5 exercice 4)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m0705.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminer le PGCD de 2037 et 454.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m0706.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. Déterminer le PGCD de 2940 et 147.';
    $t.tput: '# b. Que remarque-t-on ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06b is export(:exe06b) {
    $t.filepath = 'output/m0706+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. Déterminer le PGCD de n1 et n2 (saisies utilisateur).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    $t.filepath = 'output/m0707.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 7.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. Déterminer le PGCD de 36 et 20 puis celui de 108 et 60.';
    $t.tput: '# b. Recopier et compléter : 108 est le ... de 36; 60 est le ... de 20.';
    $t.tput: '#    Quelle relation a-t-on entre le PGCD de 108 et 60 et celui de 36 et 20 ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}
