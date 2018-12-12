unit module Method11;

use v6;

=begin pod
=NAME module B<Method11>
=AUTHOR Christian Béloscar
=VERSION 0.1.119
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
# Méthode 11. Comment déterminer la fraction irréductible égale à une fraction donnée ?
###################################################################################
# Pour déterminer la fraction irréductible égale à une fraction donnée :
# ▲ on simplifie la fraction donnée en divisant le numérateur et le dénominateur
#   par leur PGCD.
# ▲ Remarque :
#   on peut décomposer le numérateur et le dénominateur en produit de facteurs simples
#   pour faire apparaître les facteurs communs, on supprime ces facteurs au numérateur
#   et au dénominateur, on s'assure que le numérateur et le dénominateur de la fraction
#   obtenue sont premiers entre eux.
###################################################################################

EOM
    $t.filepath = 'output/method11.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples11.pdf &';
}

sub exercise_01a is export(:exe01a) {
    $t.filepath = 'output/m1101a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer la fraction irréductible à la fraction donnée :';
    $t.tput: '# a. 493/204';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    $t.filepath = 'output/m1101b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer la fraction irréductible à la fraction donnée :';
    $t.tput: '# b. 25/45';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01c is export(:exe01c) {
    $t.filepath = 'output/m1101c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer la fraction irréductible à la fraction donnée :';
    $t.tput: '# c. 2652/1547';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01d is export(:exe01d) {
    $t.filepath = 'output/m1101d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer la fraction irréductible à la fraction donnée :';
    $t.tput: '# d. 231/132';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01e is export(:exe01e) {
    $t.filepath = 'output/m1101e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer la fraction irréductible à la fraction donnée :';
    $t.tput: '# e. 644/294';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01f is export(:exe01f) {
    $t.filepath = 'output/m1101f.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer la fraction irréductible à la fraction donnée :';
    $t.tput: '# f. 126/162';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01g is export(:exe01g) {
    $t.filepath = 'output/m1101g.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer la fraction irréductible à la fraction donnée :';
    $t.tput: '# g. 312/273';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01h is export(:exe01h) {
    $t.filepath = 'output/m1101h.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer la fraction irréductible à la fraction donnée :';
    $t.tput: '# h. 1914/6525';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01i is export(:exe01i) {
    $t.filepath = 'output/m1101i.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer la fraction irréductible à la fraction donnée :';
    $t.tput: '# i. 60/75';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01j is export(:exe01j) {
    $t.filepath = 'output/m1101j.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Déterminer la fraction irréductible à la fraction donnée :';
    $t.tput: '# j. 945/1404';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m1102.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# A = 25 × 10² × 121 / 11 × 1250 × 3';
    $t.tput: '# Simplifier A et donner le résultat sous forme irréductible.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m1103.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# On donne F1 = 782/690, F2 = 272/510 et F = 782/690 + 272/510.';
    $t.tput: '# Ecrire F1, F2 et F sous forme de fractions irréductibles.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04a is export(:exe04a) {
    $t.filepath = 'output/m1104a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# La fraction suivante est-elle irréductible, sinon donner la fraction irréductible';
    $t.tput: '# qui lui est égale :';
    $t.tput: '# a. 315/147';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04b is export(:exe04b) {
    $t.filepath = 'output/m1104b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# La fraction suivante est-elle irréductible, sinon donner la fraction irréductible';
    $t.tput: '# qui lui est égale :';
    $t.tput: '# b. 295/567';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04c is export(:exe04c) {
    $t.filepath = 'output/m1104c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# La fraction suivante est-elle irréductible, sinon donner la fraction irréductible';
    $t.tput: '# qui lui est égale :';
    $t.tput: '# c. 143/69';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04d is export(:exe04d) {
    $t.filepath = 'output/m1104d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# La fraction suivante est-elle irréductible, sinon donner la fraction irréductible';
    $t.tput: '# qui lui est égale :';
    $t.tput: '# d. 23/92';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m1105.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Sans calculer leur PGCD, dire pourquoi les nombres 648 et 972 ne sont pas';
    $t.tput: '#    premiers entre eux.';
    $t.tput: '# b. Calculer PGCD(972 ; 648)';
    $t.tput: '#    En déduire la fraction irréductible égale à 648/972.';
    $t.tput: '# c. Prouver que √648 + √972 = 18(√2 + √3).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m1106.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# On donne : A = 43,01/84,15.';
    $t.tput: "# a. Peut-on déterminer le PGCD du numérateur et du dénominateur de A tels qu'ils figurent";
    $t.tput: "#    dans l'énoncé ? Justifier la réponse.";
    $t.tput: '# b. Ecrire A sous forme de fraction';
    $t.tput: '# c. Déterminer le PGCD du numérateur et du dénominateur.';
    $t.tput: "# d. En déduire l'écriture de A sous forme d'une fraction irréductible.";
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    $t.filepath = 'output/m1107.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 7.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# a. Calculer le PGCD de 901 et 1272 et le PGCD de 1037 et 1464.';
    $t.tput: '# b. Déterminer la fraction irréductible égale à la fraction 901/1272 puis la fraction';
    $t.tput: '#    irréductible égale à la fraction 1037/1464.';
    $t.tput: '# c. On donne la figure suivante (elle ne respecte pas les dimensions) :';
    $t.tput: '#    EA = 10,37m ; EB = 9,01m ; EC = 12,72m ; ED = 14,64m.';
    $t.tput: '#    Les droites (AB) et (CD) sont-elles parallèles ?';
    $t.tput: '-----------------------------------------------------------------------------------';
    shell 'xdg-open ../m1107c-fig.svg &';
}
