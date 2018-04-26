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
# On peut en pratique distinguer trois cas dans la recherche du PPCM de deux naturels.
# a. Un nombre est multiple de l'autre : c'est lui qui sert de PPCM;
#    par exemple, 15 est le PPCM de 15 et 3 : 4/15 + 2/3 = 4/15 + 10/15 = 14/15.
# b. Les deux nombres sont premiers entre eux : c'est dans ce cas que le PPCM est
#    leur produit; par exemple : 3/8 + 1/9 = 27/72 + 8/72 = 35/72.
# c. Les deux nombres ont un diviseur commun : par exemple, 15 et 12 se trouvent dans
#    la même table, celle des 3; on a en effet : 15 = 3 × 5 et 12 = 3 × 4.
#    En mettant ce 3 de côté, on voit que tout se passe comme si on était ramené au
#    cas précédent et qu'il suffit de multiplier 15 par 4 et 12 par 5 pour obtenir
#    le même nombre : 3 × 5 × 4 ou 3 × 4 × 5.
####################################################################################
EOM
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

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# a. PPCM(12 ; 30)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# b. PPCM(27 ; 45)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# c. PPCM(18 ; 63)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# d. PPCM(16 ; 40)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# e. PPCM(33 ; 121)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# f. PPCM(52 ; 39)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7.';
    say '# g. PPCM(64 ; 80)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    say '# Exercice 8.';
    say '# h. PPCM(144 ; 240)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_09 is export(:exe09) {
    say '# Exercice 9.';
    say '# i. PPCM(169 ; 130)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_10 is export(:exe10) {
    say '# Exercice 10.';
    say '# j. PPCM(33 ; 121)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_11 is export(:exe11) {
    say '# Exercice 11.';
    say '# k. PPCM(250 ; 125)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_12 is export(:exe12) {
    say '# Exercice 12.';
    say '# l. PPCM(144 ; 216)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_13 is export(:exe13) {
    say '# Exercice 13.';
    say '# m. PPCM(520 ; 390)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_14 is export(:exe14) {
    say '# Exercice 14.';
    say '# n. PPCM(888 ; 185)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_15 is export(:exe15) {
    say '# Exercice 15.';
    say '# o. PPCM(124 ; 341)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_16 is export(:exe16) {
    say '# Exercice 16.';
    say '# p. PPCM(240 ; 180)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_17 is export(:exe17) {
    say '# Exercice 17.';
    say '# q. PPCM(276 ; 414)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_18 is export(:exe18) {
    say '# Exercice 18.';
    say '# r. PPCM(588 ; 504)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_19 is export(:exe19) {
    say '# Exercice 19.';
    say '# s. PPCM(315 ; 189)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_20 is export(:exe20) {
    say '# Exercice 20.';
    say '# t. PPCM(403 ; 221)';
    say '-----------------------------------------------------------------------------------';
}
