unit module Method08;

use v6;

=begin pod
=NAME B<Method08> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/II/Perl6/B<method08.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.01.13
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
# Méthode 8.
# Comment prendre une fraction d'un nombre, partager équitablement une fraction
# ou trouver un nombre dont on connaît une fraction ?
###################################################################################
# Pour prendre une fraction d'un nombre, partager équitablement une fraction
# ou trouver un nombre dont on connaît une fraction :
# ▲ on traduit l'énoncé par un produit ou un quotient;
# ▲ on applique la méthode 7 de ce chapitre pour calculer l'expression;
# ▲ on répond au problème en faisant une phrase.
###################################################################################

EOM
    $t.filepath = 'output/method08.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples08.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m0801.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Bernard a planté 42 arbustes. Les deux tiers sont des arbustes à fleurs.';
    $t.tput: '# Combien Bernard a-t-il planté d\'arbustes à fleurs ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m0802.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# On partage équitablement trois quarts d\'une pizza en six parts.';
    $t.tput: '# Quelle fraction de la pizza entière représente une part ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m0803.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Lucas doit dépenser les cinq septièmes de ses économies pour acheter un jeu';
    $t.tput: '# électronique qui coûte 360 €.';
    $t.tput: '# Calculer le montant des économies de Lucas.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m0804.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Une maison a une superficie de 105 m². Le séjour avec cuisine américaine occupe';
    $t.tput: '# sept quinzièmes de cette superficie. Calculer la superficie de ce séjour.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m0805.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Calculer le montant d\'une taxe de 19,6 % pour un article dont le prix hors taxe';
    $t.tput: '# est 65 €.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m0806.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Il reste les cinq sixièmes de la superficie d\'un immeuble de bureaux à louer.';
    $t.tput: '# On doit y réaliser dix bureaux identiques.';
    $t.tput: '# Quelle fraction de la superficie totale  de l\'immeuble occupera un bureau ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    $t.filepath = 'output/m0807.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 7.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# La largeur d\'un rectangle est 56 cm.';
    $t.tput: '# Sa longueur est égale aux huit septièmes de sa largeur.';
    $t.tput: '# Calculer la longueur de ce rectangle.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    $t.filepath = 'output/m0808.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 8.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ------------------';
    $t.tput: '# Dans un collège en restructuration, des préfabriqués occupent cinq trente-quatrièmes';
    $t.tput: '# de la cour de récréation qui a une superficie de 1307 m².';
    $t.tput: '# Quelle superficie arrondie au m² reste-t-il pour la récréation autour des préfabriqués ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}
