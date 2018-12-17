unit module Method08;

use v6;

=begin pod
=NAME B<Method08> : Perl 6 module in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<method08_123.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.17 14:07
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method(Str $add-message, Str $filepath) {
    my $message = qq:to/EOM/;
###################################################################################
# Méthode 8. Comment déterminer le PPCM (plus petit commun multiple) de deux
# nombres entiers.
# ▲ Le 'plus petit commun multiple' (PPCM) de deux nombres est le plus petit nombre
# qui est à la fois multiple de l'un et de l'autre nombre. En d'autres mots, c'est
# le plus petit nombre qui est divisible par chacun des deux nombres.
####################################################################################
EOM
    $t.filepath = $filepath;
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message ~ $add-message);
}

sub show-examples() is export(:examples) {
    shell 'xdg-open ../examples08.pdf &';
}

sub put-up-method1 is export(:methodwording1) {
    my $message = qq:to/EOM/;
# Première méthode, en cherchant les multiples des deux nombres :
# ▲ On établit la liste des multiples du plus grand nombre en l'ajoutant successive-
# ment à lui-même et on vérifie pour chaque multiple s'il est divisible par le plus
# petit nombre.
####################################################################################

EOM
    put-up-method($message, 'output/method08_1.txt');
}

sub put-up-method2 is export(:methodwording2) {
    my $message = qq:to/EOM/;
# Deuxième méthode :
# ▲ Le PPCM s'obtient aisément à partir de la décomposition en facteurs premiers.
# Ainsi :
# PPCM(180 ; 585) = PPCM(2² × 3² × 5 ; 3² × 5 × 13) = 2² × 3² × 5 × 13 = 2340.
# (Utilisant les décompositions de 84 et 270 en produits de nombres premiers) :
# 84 = 2 × 42 = 2 × 2 × 21 = 2 × 2 × 3 × 7 = 2² × 3 × 7
# 270 = 2 × 135 = 2 × 3 × 45 = 2 × 3 × 3 × 15 = 2 × 3 × 3 × 3 × 5 = 2 × 3² × 5
# PPCM(84 , 270 ) = 2² × 3³ × 5 × 7 = 3780
# (On prend tous les facteurs premiers qui apparaissent et on les affecte du plus
# grand exposant)
####################################################################################

EOM
    put-up-method($message, 'output/method08_2.txt');
}

sub put-up-method3 is export(:methodwording3) {
    my $message = qq:to/EOM/;
# Troisième méthode (utilisable si on a déjà calculé le PGCD) :
# Il faut donc, dans un cas tel que celui-là, chercher le PGCD des deux nombres,
# le 'mettre de côté' et procéder comme on vient de le voir. Par exemple, si les
# dénominateurs sont 70 et 42, on a : 70 = 2 × 5 × 7 ; 42 = 2 × 3 × 7 (ils ont en
# commun 2 × 7) d'ou 70 = (2 × 7) × 5 ; 42 = (2 × 7) × 3.
# Le PPCM de 70 et 42 est donc : 2 × 5 × 7 × 3 ou 2 × 7 × 3 × 5 soit 210.
# ▲ Il est utile d'observer que le produit du PGCD et du PPCM de deux nombres est
# égal au produit des deux nombres. Ainsi :
# PGCD(180 ; 585) × PPCM(180 ; 585) = 45 × 2340 = 105300 = 180 × 585.
# ▲ On utilise le fait que le produit du PPCM par le PGCD est égal au produit des
# deux nombres de départ.
# Exemple :
# PPCM(84 ; 270 ) × PGCD(84 ; 270) = 84 × 270
# PPCM(84 ; 270 ) × 6 = 84 × 270
# PPCM(84 ; 270) = (84 × 270) / 6 = 3780
###################################################################################

EOM
    put-up-method($message, 'output/method08_3.txt');
}

sub exercise_01a is export(:exe01a) {
    $t.filepath = 'output/m0801a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. PPCM(12 ; 30)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    $t.filepath = 'output/m0801b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# b. PPCM(27 ; 45)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01c is export(:exe01c) {
    $t.filepath = 'output/m0801c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.closefile = False;
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# c. PPCM(18 ; 63)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01d is export(:exe01d) {
    $t.filepath = 'output/m0801d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# d. PPCM(16 ; 40)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01e is export(:exe01e) {
    $t.filepath = 'output/m0801e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# e. PPCM(33 ; 121)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02a is export(:exe02a) {
    $t.filepath = 'output/m0802a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. PPCM(52 ; 39)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02b is export(:exe02b) {
    $t.filepath = 'output/m0802b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# b. PPCM(64 ; 80)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02c is export(:exe02c) {
    $t.filepath = 'output/m0802c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# c. PPCM(144 ; 240)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02d is export(:exe02d) {
    $t.filepath = 'output/m0802d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# d. PPCM(169 ; 130)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02e is export(:exe02e) {
    $t.filepath = 'output/m0802e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# e. PPCM(33 ; 121)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03a is export(:exe03a) {
    $t.filepath = 'output/m0803a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. PPCM(250 ; 125)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03b is export(:exe03b) {
    $t.filepath = 'output/m0803b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# b. PPCM(144 ; 216)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03c is export(:exe03c) {
    $t.filepath = 'output/m0803c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# c. PPCM(520 ; 390)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03d is export(:exe03d) {
    $t.filepath = 'output/m0803d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# d. PPCM(888 ; 185)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03e is export(:exe03e) {
    $t.filepath = 'output/m0803e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# e. PPCM(124 ; 341)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04a is export(:exe04a) {
    $t.filepath = 'output/m0804a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. PPCM(240 ; 180)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04b is export(:exe04b) {
    $t.filepath = 'output/m0804b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# b. PPCM(276 ; 414)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04c is export(:exe04c) {
    $t.filepath = 'output/m0804c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# c. PPCM(588 ; 504)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04d1 is export(:exe04d1) {
    $t.filepath = 'output/m0804d1.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# d. PPCM(315 ; 189)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04d2 is export(:exe04d2) {
    $t.filepath = 'output/m0804d2.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# d. PPCM(315 ; 189)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04d3 is export(:exe04d3) {
    $t.filepath = 'output/m0804d3.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# d. PPCM(315 ; 189)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04e is export(:exe04e) {
    $t.filepath = 'output/m0804e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# e. PPCM(403 ; 221)';
    $t.tput: '-----------------------------------------------------------------------------------';
}
