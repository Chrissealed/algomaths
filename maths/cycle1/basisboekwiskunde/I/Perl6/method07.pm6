unit module Method07;

sub put-up-method is export(:methodwording) {
    say q:to/EOM/;
###################################################################################
# Méthode 7. Comment déterminer le PGCD de deux nombres à l'aide de leur décomposi-
# tion en facteurs premiers :
# ▲ Deux nombres peuvent avoir des facteurs en commun. Le plus grand commun diviseur
# (PGCD) est, comme son nom l'indique, leur plus grand facteur commun.
# Le PGCD se déduit directement des décompositions en facteurs premiers des deux
# nombres. Nous avons effectué les décompositions en facteurs premiers des nombres :
# 180 = 2² × 3² × 5; 585 = 3² × 5 × 13; 3003 = 3 × 7 × 11 × 13.
# ▲ De là, nous obtenons :
# PGCD(180;585) = PGCD(2² × 3²  5;3² × 5 × 13) = 3² × 5 = 45
# PGCD(180;3003) = PGCD(2² × 3² × 5;3 × 7 × 11 × 13) = 3
# PGCD(585;3003) = PGCD(3² × 5 × 13;3 × 7 × 11 × 13) = 3 × 13 = 39.
###################################################################################
# ▲ UNE BONNE IDEE! : il existe une méthode pour déterminer le PGCD de deux nombres
# qui ne requiert pas leurs décompositions en facteurs premiers et qui souvent
# s'avère plus rapide. L'idée de base est que le PGCD de deux nombres est aussi
# forcément un diviseur de leur différence. Voyez-vous pourquoi il en est ainsi ?
# ▲ Le PGCD(4352 ; 4342) doit aussi être un facteur de 4352 – 4342 = 10. Or 10 n'a
# que deux facteurs premiers, 2 et 5. Il est clair que 5 n'est pas un facteur des
# deux nombres, par conséquent seul 2 l'est; d'ou PGCD(4352 ; 4342) = 2.
###################################################################################
# Voir aussi les méthodes 4, 5, 6, 7 et 8 du dosser fiches-methodes3e.

EOM
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# a. PGCD(12 ; 30)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# b. PGCD(24 ; 84)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# c. PGCD(27 ; 45)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# d. PGCD(32 ; 56)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 1.';
    say '# e. PGCD(34 ; 85)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# a. PGCD(45 ; 225)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7.';
    say '# b. PGCD(144 ; 216)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    say '# Exercice 8.';
    say '# c. PGCD(90 ; 196)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_09 is export(:exe09) {
    say '# Exercice 9.';
    say '# d. PGCD(243 ; 135)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_10 is export(:exe10) {
    say '# Exercice 10.';
    say '# e. PGCD(188 ; 168)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_11 is export(:exe11) {
    say '# Exercice 11.';
    say '# a. PGCD(1024 ; 864)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_12 is export(:exe12) {
    say '# Exercice 12.';
    say '# b. PGCD(1122 ; 1815)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_13 is export(:exe13) {
    say '# Exercice 13.';
    say '# c. PGCD(875 ; 1125)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_14 is export(:exe14) {
    say '# Exercice 14.';
    say '# d. PGCD(1960 ; 6370)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_15 is export(:exe15) {
    say '# Exercice 15.';
    say '# e. PGCD(1024 ; 1152)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_16 is export(:exe16) {
    say '# Exercice 16.';
    say '# a. PGCD(1243 ; 1244)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_17 is export(:exe17) {
    say '# Exercice 17.';
    say '# b. PGCD(1721 ; 1726)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_18 is export(:exe18) {
    say '# Exercice 18.';
    say '# c. PGCD(875 ; 900)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_19 is export(:exe19) {
    say '# Exercice 19.';
    say '# d. PGCD(1960 ; 5880)';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_20 is export(:exe20) {
    say '# Exercice 20.';
    say '# e. PGCD(1024 ; 2024)';
    say '-----------------------------------------------------------------------------------';
}
