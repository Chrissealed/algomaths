unit module Method05;

use v6;

=begin pod
=NAME module B<Method05>
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
###################################################################################
# Méthode 5. Diviseurs et nombres premiers.
###################################################################################
# ▲ Il arrive parfois qu'une division s'arrête, autrement dit, que le reste soit nul.
# Par exemple : 238 ÷ 17 = 14, ce qui revient à 238 = 14 × 17.
# Les nombres 14 et 17 s'appellent diviseurs de 238 et l'expression 238 = 14 × 17
# s'appelle 'décomposition en facteurs' de 238.
# Ici les termes 'diviseurs' et 'facteurs' sont synonymes.
# ▲ Un de ces deux facteurs peut à son tour être décomposé, à savoir 14 = 2 × 7.
# La décomposition de 238 ne peut pas être poursuivie car 2, 7 et 17 sont tous les
# trois des nombres 'premiers'. Cela signifie que ces nombres ne peuvent pas être
# décomposés en facteurs plus petits. Finalement la décomposition en facteurs premiers
# de 238 est : 238 = 2 × 7 × 17.
# ▲ Comme 238 = 1 × 238 est aussi une décomposition de 238, les nombres 1 et 238
# sont aussi des diviseurs de 238. Tout nombre entier admet 1 et lui-même comme
# diviseur. Les diviseurs intéressants, les 'vrais diviseurs', sont en fait les
# diviseurs supérieurs à 1 et inférieurs au nombre lui-même. Les 'nombres premiers'
# sont les nombres supérieurs à 1 et qui n'ont pas de vrais diviseurs.
###################################################################################

EOM
    $t.filepath = 'output/method05.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples() is export(:examples) {
    shell 'xdg-open ../examples05.pdf &';
}

sub exercise_01a is export(:exe01a) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0501a.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "a. 24";
}

sub exercise_01b is export(:exe01b) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0501b.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "b. 72";
}

sub exercise_01c is export(:exe01c) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0501c.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "c. 250";
}

sub exercise_01d is export(:exe01d) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0501d.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "d. 96";
}

sub exercise_01e is export(:exe01e) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0501e.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "e. 98";
}

sub exercise_02a is export(:exe02a) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0502a.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "f. 288";
}

sub exercise_02b is export(:exe02b) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0502b.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "g. 1024";
}

sub exercise_02c is export(:exe02c) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0502c.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "h. 315";
}

sub exercise_02d is export(:exe02d) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0502d.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "i. 396";
}

sub exercise_02e is export(:exe02e) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0502e.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "j. 1875";
}

sub exercise_03a is export(:exe03a) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0503a.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "k. 972";
}

sub exercise_03b is export(:exe03b) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0503b.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "l. 676";
}

sub exercise_03c is export(:exe03c) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0503c.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "m. 2025";
}

sub exercise_03d is export(:exe03d) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0503d.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "n. 1122";
}

sub exercise_03e is export(:exe03e) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0503e.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "o. 860";
}

sub exercise_04a is export(:exe04a) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0504a.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "p. 255";
}

sub exercise_04b is export(:exe04b) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0504b.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "q. 441";
}

sub exercise_04c is export(:exe04c) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0504c.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "r. 722";
}

sub exercise_04d is export(:exe04d) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0504d.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "s. 432";
}

sub exercise_04e is export(:exe04e) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0504e.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "t. 985";
}

sub exercise_05a is export(:exe05a) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0505a.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "u. 2000";
}

sub exercise_05b is export(:exe05b) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0505b.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "v. 2001";
}

sub exercise_05c is export(:exe05c) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0505c.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "w. 2002";
}

sub exercise_05d is export(:exe05d) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0505d.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "x. 2003";
}

sub exercise_05e is export(:exe05e) {
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.filepath = 'output/m0505e.txt';
    $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: "y. 2004";
}
