unit module Method09;

use v6;

=begin pod
=NAME Method09 : Perl 6 module in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<method09.pm6>
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
###################################################################################
# Méthode 9. Comment déterminer le PGCD (plus grand commun multiple) et le PPCM
# (plus petit commun multiple) de trois nombres entiers.
# ▲ Le PGCD et le PPCM de plus de deux nombres s'obtiennent tout aussi facilement
# à partir de leurs décompositions en facteurs premiers. Par exemple :
# PGCD(180 ; 585 ; 3003) = 3.
# PPCM(180 ; 585 ; 3003) = 2² × 3² × 5 × 7 × 11 × 13 = 180180.
# (Voir aussi méthodes 5, 6, 7 et 8 de fm3).
####################################################################################
EOM
    $t.filepath = 'output/method09.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples09.pdf &';
}

sub exercise_01a is export(:exe01a) {
    $t.filepath = 'output/m0901a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminez le PGCD et le PPCM.';
    $t.tput: '# a. PGCD(9 ; 12 ; 30). PPCM(9 ; 12 ; 30).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    $t.filepath = 'output/m0901b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminez le PGCD et le PPCM.';
    $t.tput: '# b. PGCD(24 ; 30 ; 36). PPCM(24 ; 30 ; 36).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01c is export(:exe01c) {
    $t.filepath = 'output/m0901c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminez le PGCD et le PPCM.';
    $t.tput: '# c. PGCD(10 ; 15 ; 35). PPCM(10 ; 15 ; 35).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01d is export(:exe01d) {
    $t.filepath = 'output/m0901d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminez le PGCD et le PPCM.';
    $t.tput: '# d. PGCD(18 ; 27 ; 63). PPCM(18 ; 27 ; 63).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01e is export(:exe01e) {
    $t.filepath = 'output/m0901e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminez le PGCD et le PPCM.';
    $t.tput: '# e. PGCD(21 ; 24 ; 27). PPCM(21 ; 24 ; 27).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02a is export(:exe02a) {
    $t.filepath = 'output/m0902a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminez le PGCD et le PPCM.';
    $t.tput: '# a. PGCD(28 ; 35 ; 49). PPCM(28 ; 35 ; 49).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02b is export(:exe02b) {
    $t.filepath = 'output/m0902b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminez le PGCD et le PPCM.';
    $t.tput: '# b. PGCD(64 ; 80 ; 112). PPCM(64 ; 80 ; 112).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02c is export(:exe02c) {
    $t.filepath = 'output/m0902c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminez le PGCD et le PPCM.';
    $t.tput: '# c. PGCD(39 ; 52 ; 130). PPCM(39 ; 52 ; 130).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02d is export(:exe02d) {
    $t.filepath = 'output/m0902d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminez le PGCD et le PPCM.';
    $t.tput: '# d. PGCD(144 ; 168 ; 252). PPCM(144 ; 168 ; 252).';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02e is export(:exe02e) {
    $t.filepath = 'output/m0902e.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# Déterminez le PGCD et le PPCM.';
    $t.tput: '# e. PGCD(189 ; 252 ; 315). PPCM(189 ; 252 ; 315).';
    $t.tput: '-----------------------------------------------------------------------------------';
}
