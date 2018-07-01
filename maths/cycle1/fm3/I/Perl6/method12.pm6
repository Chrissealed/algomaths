unit module Method12;

use v6;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
###################################################################################
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
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples12.pdf &';
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Un apprenti menuisier dispose de planches rectangulaires de 1,62m de longueur';
    say '# et de 0,90m de largeur. Il a reçu la consigne suivante : "Découper dans ces planches';
    say '# des carrés tous identiques, les plus grands possibles, de façon à ne pas avoir de perte."';
    say '# Quelle sera la longueur du côté d\'un carré ?';
    say '# Combien obtiendra-t-on de carrés par planche ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# ----------';
    say '# Un sorcier confiseur a 1620 serpents glacés et 2376 dragées surprises.';
    say '# Pour vendre à la fête du tournoi des cinq sorciers, il veut faire des paquets';
    say '# identiques contenant le même nombre de serpents glacés et le même nombre de';
    say '# dragées surprises en utilisant tous les serpents et toutes les dragées.';
    say '# a. Quel nombre maximal de paquets pourra-t-il faire ?';
    say '# b. Un serpent glacé coute 0,50 poudors (monnaie des sorciers) et une dragée';
    say '#    surprise 0,30 poudors. Quel sera le prix, en poudor, d\'un paquet ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# ----------';
    say '# Pour un jeu Vrai-Faux, un animateur doit choisir le nombre de candidats,';
    say '# il dispose de 147 questions dont la réponse est Vrai et 105 dont la réponse';
    say '# est Faux. Toutes les questions doivent être utilisées et pour ne pas créer de';
    say '# différence, chaque candidat doit avoir le même nombre de "Vrai", le même nombre de';
    say '# "Faux" que ses concurrents.';
    say '# a. Combien de candidats au maximum pourront participer au jeu ?';
    say '# b. Combien de questions à réponses "Vrai" et combien à réponses "Faux"';
    say '#    aura chaque candidat ?';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# ----------';
    say '# Pour la fête d\'un club sportif, 144 jeunes et 54 séniors vont participer à des';
    say '# épreuves par équipe. Les équipes doivent être de même composition : même nombre';
    say '# de jeunes dans chaque équipe, même nombre de séniors dans chaque équipe.';
    say '# a. Quel est le plus grand nombre d\'équipes que le responsable pourrait constituer ?';
    say '#    Préciser dans ce cas la composition d\'une équipe.';
    say '# b. Pour répartir les lots, le responsable souhaite former entre 5 et 10 équipes.';
    say '#    Quel est le nombre possible d\'équipes ?';
    say '#    Quel est dans chaque cas la composition d\'une équipe ?';
}
