unit module Method10;

use v6;

=begin pod
=NAME B<Method10> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<method10.pm6>
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
# Méthode 10. Comment savoir si deux nombres sont premiers entre eux ?
###################################################################################
# Pour savoir si deux nombres entiers sont premiers entre eux :
# ▲ on observe les deux nombres;
#   - si on constate qu'ils ont un diviseur commun autre que 1,
# ▲ on conclut qu'ils ne sont pas premiers entre eux,
#   - dans le cas contraire,
# ▲ on détermine leur PGCD;
# ▲ on conclut que les deux nombres sont premiers entre eux, si le PGCD est 1 et
#   on conclut qu'ils ne le sont pas, si le PGCD est différent de 1.
###################################################################################

EOM
    $t.filepath = 'output/method10.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples10.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m1001.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 4664 et 2915.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    $t.filepath = 'output/m1001+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 4664 et 2915.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m1002.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 4435 et 1176.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m1003.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 865 et 1540.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m1004.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 174702 et 119115.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04b is export(:exe04b) {
    $t.filepath = 'output/m1004+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 174702 et 119115.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m1005.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 2013 et 471.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m1006.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 77 et 1001.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06b is export(:exe06b) {
    $t.filepath = 'output/m1006+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6+.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 77 et 1001.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    $t.filepath = 'output/m1007.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 7.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 14 et 55.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    $t.filepath = 'output/m1008.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 8.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 121 et 450.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_09 is export(:exe09) {
    $t.filepath = 'output/m1009.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 9.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 5167 et 2277.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_10 is export(:exe10) {
    $t.filepath = 'output/m1010.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 10.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# 9438 et 6799.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_11 is export(:exe11) {
    $t.filepath = 'output/m1011.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 11.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# 493 et 203.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_12 is export(:exe12) {
    $t.filepath = 'output/m1012.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 12.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# 1450 et 2691.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_13 is export(:exe13) {
    $t.filepath = 'output/m1013.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 13.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# 2929 et 10605.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_14 is export(:exe14) {
    $t.filepath = 'output/m1014.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 14.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# Deux nombres pairs.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_15 is export(:exe15) {
    $t.filepath = 'output/m1015.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 15.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# 258 et 259.';
    $t.tput: '# Dire si les deux nombres sont premiers entre eux ? Justifier la réponse.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_16 is export(:exe16) {
    $t.filepath = 'output/m1016.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 16.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# -----------';
    $t.tput: '# Démontrer que deux nombres entiers consécutifs sont premiers entre eux.';
    $t.tput: '-----------------------------------------------------------------------------------';
}
