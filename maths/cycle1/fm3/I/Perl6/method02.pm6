unit module Method02;

use v6;

=begin pod
=NAME B<Method02> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<method02.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.17
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method is export(:methodwording) {
    my $message = q:to/EOM/;
# Chapitre I : ARITHMÉTIQUE.
###################################################################################
# Méthode 2. Comment utiliser la division euclidienne ?
###################################################################################
# Pour utiliser la division euclidienne :
# ▲ on s'appuie sur sa définition : a et b étant deux entiers naturels et b non nul,
# effectuer la division euclidienne de a par b, c'est trouver deux entiers naturels
# q et r tels que a = bq + r et r < b.
# a est le dividende, b le diviseur, q le quotient et r le reste.
###################################################################################

EOM
    $t.filepath = 'output/method02.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples is export(:examples) {
    shell 'xdg-open ../examples02.pdf &';
}

sub exercise_01 is export(:exe01) {
    $t.filepath = 'output/m0201.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 1.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# On effectue la division euclidienne d\'un entier a par 7, on trouve 23 comme';
    $t.tput: '# quotient.';
    $t.tput: '# a. Quels sont les restes possibles ?';
    $t.tput: '# b. Trouver toutes les valeurs de a.';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    $t.filepath = 'output/m0202.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 2.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Dans un collège en rénovation, on a décidé de changer les tables de la cantine.';
    $t.tput: '# Il y a deux cent soixante demi-pensionnaires et un seul service.';
    $t.tput: '# Combien doit-on acheter de nouvelles tables de 8 ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    $t.filepath = 'output/m0203.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 3.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Dans une division euclidienne, le quotient est 19, le reste est 4 et le';
    $t.tput: '# diviseur 6. Quel est le dividende ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    $t.filepath = 'output/m0204.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 4.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Quelles sont, parmi les égalités suivantes, celles qui traduisent une division';
    $t.tput: '# euclidienne ? Si l\'égalité convient, donner le dividende, le diviseur, le quotient';
    $t.tput: '# et le reste. Sinon expliquer pourquoi l\'égalité ne convient pas.';
    $t.tput: '# a. 291 = 18 x 15 + 21; b. 102 = 6 x 16 + 6; c. 142 = 8 x 17 + 6';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    $t.filepath = 'output/m0205.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 5.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# On distribue 52 cartes à jouer à trois personnes qui reçoivent chacune le même';
    $t.tput: '# nombre de cartes. Combien de cartes recevra au maximum chaque personne ?';
    $t.tput: '# Combien de cartes restera-t-il ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    $t.filepath = 'output/m0206.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 6.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Lors d\'un voyage scolaire à Millau, on doit répartir 22 garçons dans des chambres';
    $t.tput: '# à 4 lits. Combien faudra-t-il au minimum de chambres pour que chacun dispose d\'un';
    $t.tput: '# lit ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    $t.filepath = 'output/m0207.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 7.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Une fermière a récolté 59 œufs. Pour les transporter au marché et les vendre,';
    $t.tput: '# elle les range dans des boîtes de 12. Combien lui faudra-t-il de boîtes ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    $t.filepath = 'output/m0208.txt';
    $t.filemode = ':w'; # :mode<wo>, :create, :truncate
    $t.tput: '# Exercice 8.';
    $t.filemode = ':a'; # :mode<wo>, :create, :append
    $t.closefile = False;
    $t.tput: '# ----------';
    $t.tput: '# Un confiseur a pu réaliser 346 chocolats. Il veut les présenter pour la vente';
    $t.tput: '# dans des coffrets de 16. Combien pourra-t-il remplir de coffrets ?';
    $t.tput: '-----------------------------------------------------------------------------------';
}
