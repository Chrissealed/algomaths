unit module Method03;

use v6;

=begin pod
=NAME B<Method03> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/II/Perl6/B<method03.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.17
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method is export(:methodwording) {
    my Str $message = qq:to/EOM/;
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
    $t.filepath = 'output/method03.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples03.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m0301.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Dans un cocktail avec trois agrumes les sept douzièmes sont de l\'orange,';
    $t.tput: '# un quart du pamplemousse et le reste du citron.';
    $t.tput: '# Quelle est la proportion de citron ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m0302.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Antoine doit payer sa voiture en trois versements : un septième du prix au départ,';
    $t.tput: '# les deux cinquièmes trois mois plus tard et le reste au bout de six mois.';
    $t.tput: '# Quelle fraction du prix total représente le dernier versement ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m0303.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Pierre a mangé un tiers de pizza, Paul un sixième et Louis un quart.';
    $t.tput: '# Quelle fraction reste-t-il pour Jules ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m0304.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Un cultivateur a utilisé un tiers de la surface de son champ pour planter du blé';
    $t.tput: '# et la moitié pour planter du maïs.';
    $t.tput: '# Quelle fraction de la surface de son champ lui reste-t-il à planter ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m0305.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Sophie a ramassé des cerises. Elle a pris les deux tiers de la récolte pour faire';
    $t.tput: '# des confitures et un cinquième pour faire une tarte.';
    $t.tput: '# Quelle fraction de sa récolte lui reste-t-il pour manger en dessert ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m0306.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Zoé et Léo achètent un gâteau. Zoé en mange les quatre quinzièmes et Léo le tiers.';
    $t.tput: '# Quelle fraction du gâteau reste-t-il ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}
