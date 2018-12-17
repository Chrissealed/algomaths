unit module Method07;

use v6;

=begin pod
=NAME B<Method07> : Perl 6 module in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<method07.pm6>
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
# Méthode 7. Comment déterminer le PGCD de deux nombres à l'aide de leur décomposi-
# tion en facteurs premiers :
# ▲ Deux nombres peuvent avoir des facteurs en commun. Le plus grand commun diviseur
# (PGCD) est, comme son nom l'indique, leur plus grand facteur commun.
# Le PGCD se déduit directement des décompositions en facteurs premiers des deux
# nombres en prenant les facteurs communs à chacun des nombres.
###################################################################################
# ▲ UNE BONNE IDEE! : il existe une méthode pour déterminer le PGCD de deux nombres
# qui ne requiert pas leurs décompositions en facteurs premiers et qui souvent
# s'avère plus rapide. L'idée de base est que le PGCD de deux nombres est aussi
# forcément un diviseur de leur différence. Voyez-vous pourquoi il en est ainsi ?
###################################################################################
# (Voir aussi les méthodes 4, 5, 6, 7 et 8 du dossier fm3).
###################################################################################

EOM
    $t.filepath = 'output/method07.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples() is export(:examples) {
    shell 'xdg-open ../examples07.pdf &'
}

sub exercise_01a is export(:exe01a) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0701a.txt';
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. PGCD(12 ; 30)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0701b.txt';
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# b. PGCD(24 ; 84)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01c is export(:exe01c) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0701c.txt';
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# c. PGCD(27 ; 45)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01d is export(:exe01d) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0701d.txt';
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# d. PGCD(32 ; 56)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01e is export(:exe01e) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0701e.txt';
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# e. PGCD(34 ; 85)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02a is export(:exe02a) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0702a.txt';
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. PGCD(45 ; 225)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02b is export(:exe02b) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0702b.txt';
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# b. PGCD(144 ; 216)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02c is export(:exe02c) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0702c.txt';
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# c. PGCD(90 ; 196)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02d is export(:exe02d) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0702d.txt';
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# d. PGCD(243 ; 135)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02e is export(:exe02e) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0702e.txt';
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# e. PGCD(188 ; 168)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03a is export(:exe03a) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0703a.txt';
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. PGCD(1024 ; 864)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03b is export(:exe03b) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0703b.txt';
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# b. PGCD(1122 ; 1815)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03c is export(:exe03c) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0703c.txt';
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# c. PGCD(875 ; 1125)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03d is export(:exe03d) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0703d.txt';
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# d. PGCD(1960 ; 6370)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03e is export(:exe03e) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0703e.txt';
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# e. PGCD(1024 ; 1152)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04a is export(:exe04a) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0704a.txt';
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# a. PGCD(1243 ; 1244)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04b is export(:exe04b) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0704b.txt';
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# b. PGCD(1721 ; 1726)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04c is export(:exe04c) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0704c.txt';
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# c. PGCD(875 ; 900)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04d is export(:exe04d) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0704d.txt';
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# d. PGCD(1960 ; 5880)';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04e is export(:exe04e) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0704e.txt';
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# e. PGCD(1024 ; 2024)';
    $t.tput: '-----------------------------------------------------------------------------------';
}
