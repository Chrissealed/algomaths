unit module Method01;

use v6;

=begin pod
=NAME B<Method01> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/II/Perl6/B<method01.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.17
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method is export(:methodwording) {
    my Str $message = qq:to/EOM/;
# Chapitre II : NOMBRES RELATIFS EN ÉCRITURE FRACTIONNAIRE : OPÉRATIONS.
###################################################################################
# Méthode 1.
# Comment additionner ou soustraire des nombres relatifs en écriture fractionnaire ?
###################################################################################
# Pour additionner ou soustraire des nombres relatifs en écriture fractionnaire :
# ▲ on les réduit au même dénominateur s'ils n'ont pas le même;
# ▲ on ajoute ou on soustrait les numérateurs;
# ▲ on garde le dénominateur commun;
# ▲ on simplifie si c'est possible.
###################################################################################

EOM
    $t.filepath = 'output/method01.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples01.pdf &';
}

sub exercise_01a is export(:exe01a) {
    $t.filepath = 'output/m0101a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# a. 9/5 + 4/5.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01b is export(:exe01b) {
    $t.filepath = 'output/m0101b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# b. 2/21 – 5/21';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01c is export(:exe01c) {
    $t.filepath = 'output/m0101c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# c. 4/5 – 7/25.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_01d is export(:exe01d) {
    $t.filepath = 'output/m0101d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# d. 5/8 – 3/11.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02a is export(:exe02a) {
    $t.filepath = 'output/m0102a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# a. 13/15 – 6/5.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02b is export(:exe02b) {
    $t.filepath = 'output/m0102b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# b. 5/6 – 6/5.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02c is export(:exe02c) {
    $t.filepath = 'output/m0102c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# c. 3/14 + 7/10.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02d is export(:exe02d) {
    $t.filepath = 'output/m0102d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# d. 5/6 – 3/4.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03a is export(:exe03a) {
    $t.filepath = 'output/m0103a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# a. 19/46 – 17/69.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03b is export(:exe03b) {
    $t.filepath = 'output/m0103b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# b. 4/3 + 5/7 – 3/21.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03c is export(:exe03c) {
    $t.filepath = 'output/m0103c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# c. − 5/22 + 7/6.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03d is export(:exe03d) {
    $t.filepath = 'output/m0103d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# d. − 7/20 – 11/15.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04a is export(:exe04a) {
    $t.filepath = 'output/m0104a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# a. − 5/6 – 5/3.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04b is export(:exe04b) {
    $t.filepath = 'output/m0104b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# b. –6/11 + –6/–11.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04c is export(:exe04c) {
    $t.filepath = 'output/m0104c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# c. 7/12 – 11/16.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04d is export(:exe04d) {
    $t.filepath = 'output/m0104d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# d. 1/2 – 1/3 + 1/4.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04d2 is export(:exe04d2) {
    $t.filepath = 'output/m0104d+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# d. 1/2 – 1/3 + 1/4.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05a is export(:exe05a) {
    $t.filepath = 'output/m0105a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# a. 1/2 + 2/3 + 3/4 + 4/5 + 5/6.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05a2 is export(:exe05a2) {
    $t.filepath = 'output/m0105a+.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# a. 1/2 + 2/3 + 3/4 + 4/5 + 5/6.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05b is export(:exe05b) {
    $t.filepath = 'output/m0105b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# b. π/3 – π/4.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05c is export(:exe05c) {
    $t.filepath = 'output/m0105c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# c. π/10 + 3π/4.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05d is export(:exe05d) {
    $t.filepath = 'output/m0105d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# d. π/2 + π/3 + π/4.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06a is export(:exe06a) {
    $t.filepath = 'output/m0106a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# a. 5/18 – 4/12.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06b is export(:exe06b) {
    $t.filepath = 'output/m0106b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# b. 15/30 – 3/12.';
    $t.tput: '-----------------------------------------------------------------------------------'
}

sub exercise_06c is export(:exe06c) {
    $t.filepath = 'output/m0106c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# c. 15/25 – 12/16 + 7/20.';
    $t.tput: '-----------------------------------------------------------------------------------'
}

sub exercise_06d is export(:exe06d) {
    $t.filepath = 'output/m0106d.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6. Calculer.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# --------------------';
    $t.tput: '# d. 21/2121 – 55/44.';
    $t.tput: '-----------------------------------------------------------------------------------'
}
