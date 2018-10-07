unit module Method03;

use v6;

sub put-up-method is export(:methodwording) {
    say qq:to/EOM/;
# Chapitre II : NOMBRES RELATIFS EN ÉCRITURE FRACTIONNAIRE : OPÉRATIONS.
###################################################################################
# Méthode 3.
# Comment résoudre un problème conduisant au calcul d'une fraction restante ?
###################################################################################
# Pour résoudre un problème conduisant au calcul d'une fraction restante :
# ▲ on traduit l'énoncé par une somme ou une différence de nombres en écriture
#   fractionnaire;
# ▲ on applique les méthodes 1 et 2 de ce chapitre pour calculer l'expression;
# ▲ on répond au problème en faisant une phrase.
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples03.pdf &';
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# ----------';
    say '# Dans un cocktail avec trois agrumes les sept douzièmes sont de l\'orange,';
    say '# un quart du pamplemousse et le reste du citron.';
    say '# Quelle est la proportion de citron ?';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# ----------';
    say '# Antoine doit payer sa voiture en trois versements : un septième du prix au départ,';
    say '# les deux cinquièmes trois mois plus tard et le reste au bout de six mois.';
    say '# Quelle fraction du prix total représente le dernier versement ?';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# ----------';
    say '# Pierre a mangé un tiers de pizza, Paul un sixième et Louis un quart.';
    say '# Quelle fraction reste-t-il pour Jules ?';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# ----------';
    say '# Un cultivateur a utilisé un tiers de la surface de son champ pour planter du blé';
    say '# et la moitié pour planter du maïs.';
    say '# Quelle fraction de la surface de son champ lui reste-t-il à planter ?';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# ----------';
    say '# Sophie a ramassé des cerises. Elle a pris les deux tiers de la récolte pour faire';
    say '# des confitures et un cinquième pour faire une tarte.';
    say '# Quelle fraction de sa récolte lui reste-t-il pour manger en dessert ?';
    say '-----------------------------------------------------------------------------------'
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# ----------';
    say '# Zoé et Léo achètent un gâteau. Zoé en mange les quatre quinzièmes et Léo le tiers.';
    say '# Quelle fraction du gâteau reste-t-il ?';
    say '-----------------------------------------------------------------------------------'
}
