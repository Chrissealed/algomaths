unit module Method04;

use v6;

=begin pod
=NAME B<Method04> : Perl 6 module in B<algomaths>/maths/cycle1/ms3/II/Perl6/B<method04.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.17
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method04 is export(:methodwording) {
    my $message = qq:to/EOM/;
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
    $t.filepath = 'output/method04.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples04 is export(:examples) {
    shell 'xdg-open ../examples04.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m010204a.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Un pâtissier dispose de 411 framboises et de 685 fraises. Afin de préparer des';
    $t.tput: '# tartelettes, il désire répartir ces fruits en les utilisant tous et en obtenant';
    $t.tput: '# le maximum de tartelettes identiques.';
    $t.tput: '# 1°) Calculer le nombre de tartelettes.';
    $t.tput: '# 2°) Calculer le nombre de framboises et de fraises dans chaque tartelette.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m010204b.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# 1°) Calculer le plus grand diviseur commun de 540 et 300.';
    $t.tput: '# 2°) Une pièce rectangulaire de 5,40 m de long et de 3 m de large est recouverte,';
    $t.tput: '# sans découpe, par des dalles de moquettes carrées, toutes identiques.';
    $t.tput: '# a. Quelle est la mesure du côté de chacune des dalles, sachant que l\'on veut';
    $t.tput: '#    le moins de dalles possibles ?';
    $t.tput: '# b. Calculer alors le nombre de dalles utilisées.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m010204c.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Pierre a gagné 84 sucettes et 147 bonbons à un jeu. Il décide de les partager avec';
    $t.tput: '# des amis. Pour ne pas faire de jaloux, chacun doit avoir le même nombre de sucettes';
    $t.tput: '# et le même nombre de bonbons.';
    $t.tput: '# 1°) Combien de personnes au maximum pourront bénéficier de ces friandises (Pierre';
    $t.tput: '# étant inclus dans ces personnes) ? Expliquer votre raisonnement.';
    $t.tput: '# 2°) Combien de sucettes et de bonbons aura alors chaque personne ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}
