unit module Method01;

use v6;

sub put-up-method01 is export(:methodwording) {
    say q:to/EOM/;
II - MÉTHODES SUR LES PGCD -
###################################################################################
# Méthode 1a : Comment déterminer un PGCD en listant la liste des diviseurs de chacun des deux ?
# On donne (toujours par ordre croissant) la liste des diviseurs du premier, la liste
# de diviseurs du deuxième, la liste des diviseurs en commun et on prend le plus grand
# d'entre eux. Pour y arriver il vaut mieux connaître les critères de divisibilité
# (voir exemples correspondants) :
####################################################################################
# Méthode. Comment établir la liste des diviseurs d'un entier non nul ?
###################################################################################
# ▲ on commence la liste par 1 et on la termine par le nombre lui-même;
# ▲ on cherche ensuite si 2 est un diviseur du nombre, si ce n'est pas le cas,
# on passe à 3, si c'est le cas on calcule le nombre qui multiplié par 2 donne le
# nombre choisi, ce second facteur est aussi un diviseur;
# ▲ on cherche si 3 est un diviseur du nombre, si ce n'est pas le cas, on passe à 4,
# si c'est le cas on calcule le nombre qui multiplié par 3 donne le nombre choisi,
# ce second facteur est aussi un diviseur;
# ▲ on continue et on détermine ainsi les diviseurs dans l'ordre croissant à partir
# de 1 et dans l'ordre décroissant à partir du nombre, on s'arrête quand on arrive
# à un diviseur déjà trouvé.
# REMARQUE : le nombre de diviseurs d'un entier non nul est pair sauf si ce nombre
# est un carré parfait. Tout nombre non nul est un diviseur de 0.
###################################################################################
# Méthode 1b. Comment déterminer le PGCD de deux nombres à l'aide de leur décomposi-
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
# (Voir aussi les méthodes 4, 5, 6, 7 et 8 du dossier fm3/I/).

EOM
}

sub show-examples01() is export(:examples) {
    shell 'xdg-open ../examples01.pdf &'
}
