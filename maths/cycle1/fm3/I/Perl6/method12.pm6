unit module Method12;

use v6;

=begin pod
=NAME module B<Method12>
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
# Méthode 12. Comment résoudre un problème en utilisant le PGCD de deux entiers ?
###################################################################################
# Pour résoudre un problème en utilisant le PGCD de deux entiers :
# ▲ on prélève l'information et on explique en quoi le problème est lié à la
#   détermination du PGCD de deux nombres;
# ▲ on détermine le PGCD en appliquant une des méthodes de ce chapitre;
# ▲ on rédige les réponses aux questions.  
###################################################################################

EOM
    $t.filepath = 'output/method12.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples12.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m1201.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Un apprenti menuisier dispose de planches rectangulaires de 1,62m de longueur';
    $t.tput: '# et de 0,90m de largeur. Il a reçu la consigne suivante : "Découper dans ces planches';
    $t.tput: '# des carrés tous identiques, les plus grands possibles, de façon à ne pas avoir de perte."';
    $t.tput: '# Quelle sera la longueur du côté d\'un carré ?';
    $t.tput: '# Combien obtiendra-t-on de carrés par planche ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m1202.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Un sorcier confiseur a 1620 serpents glacés et 2376 dragées surprises.';
    $t.tput: '# Pour vendre à la fête du tournoi des cinq sorciers, il veut faire des paquets';
    $t.tput: '# identiques contenant le même nombre de serpents glacés et le même nombre de';
    $t.tput: '# dragées surprises en utilisant tous les serpents et toutes les dragées.';
    $t.tput: '# a. Quel nombre maximal de paquets pourra-t-il faire ?';
    $t.tput: '# b. Un serpent glacé coute 0,50 poudors (monnaie des sorciers) et une dragée';
    $t.tput: '#    surprise 0,30 poudors. Quel sera le prix, en poudor, d\'un paquet ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m1203.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Pour un jeu Vrai-Faux, un animateur doit choisir le nombre de candidats,';
    $t.tput: '# il dispose de 147 questions dont la réponse est Vrai et 105 dont la réponse';
    $t.tput: '# est Faux. Toutes les questions doivent être utilisées et pour ne pas créer de';
    $t.tput: '# différence, chaque candidat doit avoir le même nombre de "Vrai", le même nombre de';
    $t.tput: '# "Faux" que ses concurrents.';
    $t.tput: '# a. Combien de candidats au maximum pourront participer au jeu ?';
    $t.tput: '# b. Combien de questions à réponses "Vrai" et combien à réponses "Faux"';
    $t.tput: '#    aura chaque candidat ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m1204.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Pour la fête d\'un club sportif, 144 jeunes et 54 séniors vont participer à des';
    $t.tput: '# épreuves par équipe. Les équipes doivent être de même composition : même nombre';
    $t.tput: '# de jeunes dans chaque équipe, même nombre de séniors dans chaque équipe.';
    $t.tput: '# a. Quel est le plus grand nombre d\'équipes que le responsable pourrait constituer ?';
    $t.tput: '#    Préciser dans ce cas la composition d\'une équipe.';
    $t.tput: '# b. Pour répartir les lots, le responsable souhaite former entre 5 et 10 équipes.';
    $t.tput: '#    Quel est le nombre possible d\'équipes ?';
    $t.tput: '#    Quel est dans chaque cas la composition d\'une équipe ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}
