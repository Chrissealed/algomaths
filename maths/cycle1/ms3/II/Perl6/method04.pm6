unit module Method04;

use v6;

sub put-up-method04 is export(:methodwording) {
    say qq:to/EOM/;
# II - MÉTHODES SUR LES PGCD -
###################################################################################
# Méthode 4. Comment résoudre un problème en utilisant le PGCD de deux entiers ?
###################################################################################
# Pour résoudre un problème en utilisant le PGCD de deux entiers :
# ▲ Principe : On reconnaît ce type de problèmes très facilement : ça parle en
# général de deux types de choses que l'on souhaite mettre ensemble;
# ▲ on prélève l'information et on explique en quoi le problème est lié à la
#   détermination du PGCD de deux nombres;
# ▲ on détermine le PGCD en appliquant une des méthodes de ce chapitre;
# ▲ on rédige les réponses aux questions.  
###################################################################################
(Voir aussi method12 de fm3/I/Perl6)

EOM
}

sub show-examples04 is export(:examples) {
    shell 'xdg-open ../examples04.pdf &';
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Un pâtissier dispose de 411 framboises et de 685 fraises. Afin de préparer des';
    say '# tartelettes, il désire répartir ces fruits en les utilisant tous et en obtenant';
    say '# le maximum de tartelettes identiques.';
    say '# 1°) Calculer le nombre de tartelettes.';
    say '# 2°) Calculer le nombre de framboises et de fraises dans chaque tartelette.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# ----------';
    say '# 1°) Calculer le plus grand diviseur commun de 540 et 300.';
    say '# 2°) Une pièce rectangulaire de 5,40 m de long et de 3 m de large est recouverte,';
    say '# sans découpe, par des dalles de moquettes carrées, toutes identiques.';
    say '# a. Quelle est la mesure du côté de chacune des dalles, sachant que l\'on veut';
    say '#    le moins de dalles possibles ?';
    say '# b. Calculer alors le nombre de dalles utilisées.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# ----------';
    say '# Pierre a gagné 84 sucettes et 147 bonbons à un jeu. Il décide de les partager avec';
    say '# des amis. Pour ne pas faire de jaloux, chacun doit avoir le même nombre de sucettes';
    say '# et le même nombre de bonbons.';
    say '# 1°) Combien de personnes au maximum pourront bénéficier de ces friandises (Pierre';
    say '# étant inclus dans ces personnes) ? Expliquer votre raisonnement.';
    say '# 2°) Combien de sucettes et de bonbons aura alors chaque personne ?';
    say '-----------------------------------------------------------------------------------';
}
