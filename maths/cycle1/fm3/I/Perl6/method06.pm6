unit module Method06;

use v6;

=begin pod
=NAME module B<Method06>
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
# Méthode 6. Pour déterminer le PGCD de deux nombres entiers par l'algorithme
# des soustractions à l'aide d'un tableur :
###################################################################################
# ▲ on ouvre une feuille de calcul et on choisit trois colonnes A, B et C;
# ▲ on marque les titres : Nombre a, Nombre b et Différence respectivement dans les
# cellules A1, B1 et C1;
# ▲ on place le plus grand des deux nombres et le plus petit respectivement dans
# les cellules A2 et B2 et on inscrit =A2-B2 dans la cellule C2;
# ▲ on écrit : =MAX(B2;C2), =MIN(B2;C2) et =A3-B3 respectivement dans les cellules
# A3, B3 et C3;
# ▲ on sélectionne les cellules A3B3C3 et on tire vers le bas le petit carré situé
# en bas à droite de la sélection jusqu'à trouver 0 dans la colonne C;
# ▲ on donne le PGCD des deux nombres qui est la dernière différence non nulle.
###################################################################################

EOM
    $t.filepath = 'output/method06.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples06.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m0601.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# PGCD(1260 ; 735)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m0602.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# PGCD(25,333,333,344 ; 14,777,777,784)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m0603.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# PGCD(2015 ; 1789)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m0604.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# PGCD(4092 ; 1705)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m0605.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# PGCD(877 ; 531)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m0606.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# PGCD(108,777 ; 61,206)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    $t.filepath = 'output/m0607.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 7.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. PGCD(165 ; 132); b. PGCD(330 ; 264); c. PGCD(495 ; 396)';
    $t.tput: '# d. Quelles relations y a-t-il entre le PGCD de 165 et 132 et chacun des PGCD de';
    $t.tput: '# 330 et 264 et de 495 et 396 ? Faire le lien avec les nombres donnés.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    $t.filepath = 'output/m0608.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 8.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Sur une feuille, un élève a créé cette feuille de calcul pour trouver le PGCD';
    $t.tput: '# de 2691 et 1035 par l\'algorithme des soustractions.';
    $t.tput: '#';
    $t.tput: '# |   |   A  |   B  |   C  |';
    $t.tput: '# --------------------------';
    $t.tput: '# | 1 |   a  |   b  |  a-b |';
    $t.tput: '# --------------------------';
    $t.tput: '# | 2 | 2691 | 1035 | 1656 |';
    $t.tput: '# --------------------------';
    $t.tput: '# | 3 | 1656 | 1035 |  621 |';
    $t.tput: '# --------------------------';
    $t.tput: '# | 4 | 1035 |  621 |  414 |';
    $t.tput: '# --------------------------';
    $t.tput: '# | 5 |  621 |  414 |  207 |';
    $t.tput: '# --------------------------';
    $t.tput: '# | 6 |  414 |  207 |  207 |';
    $t.tput: '# --------------------------';
    $t.tput: '# | 7 |  207 |  207 |   0  |';
    $t.tput: '# --------------------------';
    $t.tput: '#';
    $t.tput: '# a. En utilisant sa feuille de calcul, dire quel est le PGCD de 2691 et 1035.';
    $t.tput: '# b. Quelle est la formule écrite par l\'élève dans la cellule C2 pour obtenir';
    $t.tput: '#    le résultat indiqué dans cette cellule par le tableur ?';
    $t.tput: '# c. Quelle est la formule écrite par l\'élève dans la cellule B3 pour obtenir';
    $t.tput: '#    le résultat indiqué dans cette cellule par le tableur ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}
