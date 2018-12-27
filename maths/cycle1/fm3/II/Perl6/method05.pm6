unit module Method05;

use v6;

=begin pod
=NAME B<Method05> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/II/Perl6/B<method05.pm6>
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
    $t.filepath = 'output/method05.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples05.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m0501.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Une bouteille de trois quart de litres est remplie au deux tiers.';
    $t.tput: '# Quelle quantité de liquide, en fraction de litres, est dans cette bouteille ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m0502.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Dans une entreprise, les deux tiers des employés sont des hommes et les deux cinquièmes';
    $t.tput: '# de ceux-ci ont moins de 35 ans.';
    $t.tput: '# Quelle fraction du nombre total d\'employés représente les hommes de moins de 35 ans ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m0503.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Les trois cinquième des candidats à un concours ont été admissibles à l\'écrit.';
    $t.tput: '# Les cinq septièmes de ceux-ci ont été reçus à ce concours après l\'oral';
    $t.tput: '# Quelle fraction du nombre total de candidats représente le nombre de candidats reçus ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m0504.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Dans une colonie il y a quatre cinquièmes de garçons et trois quarts de ces garçons';
    $t.tput: '# ont moins de 5 ans.';
    $t.tput: '# Quelle fraction du nombre des enfants de cette colonie représente ceux qui ont';
    $t.tput: '# moins de 5 ans ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m0505.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Chez un fleuriste, les cinq huitièmes des fleurs sont blanches.';
    $t.tput: '# Parmi les fleurs blanches, les deux tiers sont des orchidées.';
    $t.tput: '# Quelle fraction du nombre total de fleurs représente les orchidées blanches ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m0506.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Dans une boîte de chocolat les deux tiers sont des chocolats au lait et la moitié';
    $t.tput: '# des chocolats au lait ont des noisettes.';
    $t.tput: '# Quelle fraction du nombre total de chocolats représente les chocolats au lait';
    $t.tput: '# et aux noisettes.';
    $t.tput: '-----------------------------------------------------------------------------------';
}
