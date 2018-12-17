unit module Method08;

use v6;

=begin pod
=NAME B<Method08> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<method08.pm6>
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
# Comment déterminer le PGCD de deux nombres entiers par l'algorithme
# d'Euclide à l'aide d'un tableur ?
###################################################################################
# ▲ on ouvre une feuille de calcul et on choisit trois colonnes A, B et C;
# ▲ on marque les titres : Nombre a, Nombre b et Reste respectivement dans les
# cellules A1, B1 et C1;
# ▲ on place le plus grand des deux nombres et le plus petit respectivement dans les
# cellules A2 et B2 et on inscrit =MOD(A2;B2) dans la cellule C2;
# reste non nul.
# ▲ on écrit =B2, =C2 et =MOD(A3;B3) respectivement dans les cellules A3, B3 et C3;
# ▲ on sélectionne les cellules A3B3C3 et on tire vers le bas le petit carré situé
# en bas à droite de la sélection jusqu'à trouver 0 dans la colonne C;
# ▲ on donne le PGCD des deux nombres qui est le dernier reste non nul.
#
# La méthode s'appuie sur la propriété suivante : a et b désignant deux entiers,
# si a > b, PGCD(a;b) = PGCD(b;r) où r est le reste de la division euclidienne de
# a par b
###################################################################################

EOM
    $t.filepath = 'output/method08.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples08.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m0801.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# PGCD(1287 ; 819)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m0802.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# PGCD(2,130,071,799 ; 789,801,903)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m0803.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# PGCD(2014 ; 1515)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m0804.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# PGCD(126871 ; 116756)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m0805.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# PGCD(13692 ; 6357)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m0806.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# PGCD(86105 ; 18234)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    $t.filepath = 'output/m0807.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 7.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# PGCD(108777 ; 61206)';
    $t.tput: '# Comparer ce calcul avec celui utilisant l\'algorithme des soustractions à l\'aide';
    $t.tput: '# d\'un tableur (méthode 6 exercice 6).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    $t.filepath = 'output/m0808.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 8.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Sur une feuille, un élève a créé cette feuille de calcul pour trouver le PGCD de';
    $t.tput: '# 1596 et 627 par l\'algorithme d\'Euclide.';
    $t.tput: '#';
    $t.tput: '# |   |   A   |   B   |   C   |';
    $t.tput: '# -----------------------------';
    $t.tput: '# | 1 |   a   |   b   |   r   |';
    $t.tput: '# -----------------------------';
    $t.tput: '# | 2 | 1596  |  627  |  342  |';
    $t.tput: '# -----------------------------';
    $t.tput: '# | 3 |  627  |  342  |  285  |';
    $t.tput: '# -----------------------------';
    $t.tput: '# | 4 |  342  |  285  |   57  |';
    $t.tput: '# -----------------------------';
    $t.tput: '# | 5 |  285  |   57  |    0  |';
    $t.tput: '# -----------------------------';
    $t.tput: '#';
    $t.tput: '# a. En utilisant sa feuille de calcul, dire quel est le PGCD de 1596 et 627.';
    $t.tput: '# b. Quelle est la formule écrite par l\'élève dans la cellule C2 pour obtenir le';
    $t.tput: '#    résultat indiqué dans cette cellule par le tableur ?';
    $t.tput: '# c. Quelle est la formule écrite par l\'élève dans la cellule A3 pour obtenir le';
    $t.tput: '#    résultat indiqué dans cette cellule par le tableur ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}
