unit module Method08;

use v6;

sub put-up-method {
    say qq:to/EOM/;
###################################################################################
# Méthode 8. Comment déterminer le PPCM (plus petit commun multiple) de deux
# nombres entiers.
# ▲ Le 'plus petit commun multiple' (PPCM) de deux nombres est le plus petit nombre
# qui est à la fois multiple de l'un et de l'autre nombre. En d'autres mots, c'est
# le plus petit nombre qui est divisible par chacun des deux nombres.
####################################################################################
EOM
}

sub show-examples() is export(:examples) {
    shell 'xdg-open ../examples08.pdf &';
}

sub put-up-method1 is export(:methodwording1) {
    put-up-method;
    say qq:to/EOM/;
# Première méthode, en cherchant les multiples des deux nombres :
# ▲ On établit la liste des multiples du plus grand nombre en l'ajoutant successive-
# ment à lui-même et on vérifie pour chaque multiple s'il est divisible par le plus
# petit nombre.
####################################################################################

EOM
}

sub put-up-method2 is export(:methodwording2) {
    put-up-method;
    say qq:to/EOM/;
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
}

sub put-up-method3 is export(:methodwording3) {
    put-up-method;
    say qq:to/EOM/;
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
}

sub exercise_01a is export(:exe01a) {
    say '# Exercice 1.';
    say '# a. PPCM(12 ; 30)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    say '# Exercice 1.';
    say '# b. PPCM(27 ; 45)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01c is export(:exe01c) {
    say '# Exercice 1.';
    say '# c. PPCM(18 ; 63)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01d is export(:exe01d) {
    say '# Exercice 1.';
    say '# d. PPCM(16 ; 40)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_01e is export(:exe01e) {
    say '# Exercice 1.';
    say '# e. PPCM(33 ; 121)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02a is export(:exe02a) {
    say '# Exercice 2.';
    say '# a. PPCM(52 ; 39)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02b is export(:exe02b) {
    say '# Exercice 2.';
    say '# b. PPCM(64 ; 80)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02c is export(:exe02c) {
    say '# Exercice 2.';
    say '# c. PPCM(144 ; 240)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02d is export(:exe02d) {
    say '# Exercice 2.';
    say '# d. PPCM(169 ; 130)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02e is export(:exe02e) {
    say '# Exercice 2.';
    say '# e. PPCM(33 ; 121)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03a is export(:exe03a) {
    say '# Exercice 3.';
    say '# a. PPCM(250 ; 125)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03b is export(:exe03b) {
    say '# Exercice 3.';
    say '# b. PPCM(144 ; 216)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03c is export(:exe03c) {
    say '# Exercice 3.';
    say '# c. PPCM(520 ; 390)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03d is export(:exe03d) {
    say '# Exercice 3.';
    say '# d. PPCM(888 ; 185)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03e is export(:exe03e) {
    say '# Exercice 3.';
    say '# e. PPCM(124 ; 341)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04a is export(:exe04a) {
    say '# Exercice 4.';
    say '# a. PPCM(240 ; 180)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04b is export(:exe04b) {
    say '# Exercice 4.';
    say '# b. PPCM(276 ; 414)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04c is export(:exe04c) {
    say '# Exercice 4.';
    say '# c. PPCM(588 ; 504)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04d is export(:exe04d) {
    say '# Exercice 4.';
    say '# d. PPCM(315 ; 189)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04e is export(:exe04e) {
    say '# Exercice 4.';
    say '# e. PPCM(403 ; 221)';
    say '-----------------------------------------------------------------------------------';
}
