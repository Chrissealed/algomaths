unit module Method05;

use v6;

sub put-up-method is export(:methodwording) {
    put qq:to/EOM/;
# Chapitre II : NOMBRES RELATIFS EN ÉCRITURE FRACTIONNAIRE : OPÉRATIONS.
###################################################################################
# Méthode 5.
# Comment résoudre un problème conduisant au calcul d'une fraction de fraction ?
###################################################################################
# Pour résoudre un problème conduisant au calcul d'une fraction de fraction :
# ▲ on traduit l'énoncé par un produit de nombres en écriture fractionnaire;
# ▲ on applique la méthode 4 de ce chapitre pour calculer l'expression;
# ▲ on répond au problème en faisant une phrase.
###################################################################################

EOM
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples05.pdf &';
}

sub exercise_01 is export(:exe01) {
    put '# Exercice 1.';
    put '# ------------------';
    put '# Une bouteille de trois quart de litres est remplie au deux tiers.';
    put '# Quelle quantité de liquide, en fraction de litres, est dans cette bouteille ?';
    put '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    put '# Exercice 2.';
    put '# ------------------';
    put '# Dans une entreprise, les deux tiers des employés sont des hommes et les deux cinquièmes';
    put '# de ceux-ci ont moins de 35 ans.';
    put '# Quelle fraction du nombre total d\'employés représente les hommes de moins de 35 ans ?';
    put '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    put '# Exercice 3.';
    put '# ------------------';
    put '# Les trois cinquième des candidats à un concours ont été admissibles à l\'écrit.';
    put '# Les cinq septièmes de ceux-ci ont été reçus à ce concours après l\'oral';
    put '# Quelle fraction du nombre total de candidats représente le nombre de candidats reçus ?';
    put '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    put '# Exercice 4.';
    put '# ------------------';
    put '# Dans une colonie il y a quatre cinquièmes de garçons et trois quarts de ces garçons';
    put '# ont moins de 5 ans.';
    put '# Quelle fraction du nombre des enfants de cette colonie représente ceux qui ont';
    put '# moins de 5 ans ?';
    put '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    put '# Exercice 5.';
    put '# ------------------';
    put '# Chez un fleuriste, les cinq huitièmes des fleurs sont blanches.';
    put '# Parmi les fleurs blanches, les deux tiers sont des orchidées.';
    put '# Quelle fraction du nombre total de fleurs représente les orchidées blanches ?';
    put '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    put '# Exercice 6.';
    put '# ------------------';
    put '# Dans une boîte de chocolat les deux tiers sont des chocolats au lait et la moitié';
    put '# des chocolats au lait ont des noisettes.';
    put '# Quelle fraction du nombre total de chocolats représente les chocolats au lait';
    put '# et aux noisettes.';
    put '-----------------------------------------------------------------------------------';
}
