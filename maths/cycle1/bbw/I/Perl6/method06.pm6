unit module Method06;

use v6;

=begin pod
=NAME B<Method06> : Perl 6 module in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<method06.pm6>
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
###################################################################################
# Méthode 6. Comment établir la liste des diviseurs d'un entier non nul ?
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
    $t.filepath = 'output/method06.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples() is export(:examples) {
    shell 'xdg-open ../examples06.pdf &';
}

sub exercise_01a is export(:exe01a) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0601a.txt';
    $t.tput: "Déterminez tous les facteurs du nombre suivant.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "a. 12";
}

sub exercise_01b is export(:exe01b) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0601b.txt';
    $t.tput: "Déterminez tous les facteurs du nombre suivant.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "b. 20";
}

sub exercise_01c is export(:exe01c) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0601c.txt';
    $t.tput: "Déterminez tous les facteurs du nombre suivant.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "c. 32";
}

sub exercise_01d is export(:exe01d) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0601d.txt';
    $t.tput: "Déterminez tous les facteurs du nombre suivant.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "d. 108";
}

sub exercise_01e is export(:exe01e) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0601e.txt';
    $t.tput: "Déterminez tous les facteurs du nombre suivant.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "e. 144";
}

sub exercise_02a is export(:exe02a) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0602a.txt';
    $t.tput: "Déterminez tous les facteurs du nombre suivant.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "a. 72";
}

sub exercise_02b is export(:exe02b) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0602b.txt';
    $t.tput: "Déterminez tous les facteurs du nombre suivant.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "b. 100";
}

sub exercise_02c is export(:exe02c) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0602c.txt';
    $t.tput: "Déterminez tous les facteurs du nombre suivant.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "c. 1001";
}

sub exercise_02d is export(:exe02d) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0602d.txt';
    $t.tput: "Déterminez tous les facteurs du nombre suivant.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "d. 561";
}

sub exercise_02e is export(:exe02e) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0602e.txt';
    $t.tput: "Déterminez tous les facteurs du nombre suivant.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "e. 196";
}
