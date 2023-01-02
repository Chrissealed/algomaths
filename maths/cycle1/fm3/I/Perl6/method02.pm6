unit module Method02;

use v6;

=begin pod
=NAME class B<Method02::ChooseX> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<method02.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.14
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
    # Fichier de garde dans le cas ou l'attribut filepath n'est pas assigné
    filepath => 'teeput.logout',
);

class ChooseX is export {
    
    method put-up-method (Str:D $file = 'method02.txt', Str $method?) {
        my $wording = q:to/EOM/;
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
        my Str $filepath = "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/$file";
        $t.filepath = $filepath;
        $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
        if defined($method) {
            $t.tput($method);
        } else {
            $t.tput($wording);
        }
    }

    method show-examples is export(:examples) {
        my Str $path = "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I";
        shell "xdg-open $path/examples02.pdf &";
    }

    method set-output-file-mode(Str:D $file) {
        $t.filemode = ':w'; # :mode<wo>, :create, :truncate
        $t.filepath = "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/$file";

        $t.tput: '# Exercices :';
        $t.filemode = ':a'; # :mode<wo>, :create, :append
        $t.closefile = False;
        $t.tput: '# ---------';
        $t.tput: '# CHAPITRE I − ARITHMÉTIQUE';
        $t.tprint: "\n";
    }

    method exercise_01 {
        my $output-file = 'm0201.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 2.01.';
        $t.tput: '# -------------';
        $t.tput: '# On effectue la division euclidienne d\'un entier a par 7, on trouve 23 comme';
        $t.tput: '# quotient.';
        $t.tput: '# a. Quels sont les restes possibles ?';
        $t.tput: '# b. Trouver toutes les valeurs de a.';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02 {
        my $output-file = 'm0202.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 2.02';
        $t.tput: '# -------------';
        $t.tput: '# Dans un collège en rénovation, on a décidé de changer les tables de la cantine.';
        $t.tput: '# Il y a deux cent soixante demi-pensionnaires et un seul service.';
        $t.tput: '# Combien doit-on acheter de nouvelles tables de 8 ?';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03 {
        my $output-file = 'm0203.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 2.03.';
        $t.tput: '# -------------';
        $t.tput: '# Dans une division euclidienne, le quotient est 19, le reste est 4 et le';
        $t.tput: '# diviseur 6. Quel est le dividende ?';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04 {
        my $output-file = 'm0204.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 2.04.';
        $t.tput: '# -------------';
        $t.tput: '# Quelles sont, parmi les égalités suivantes, celles qui traduisent une division';
        $t.tput: '# euclidienne ? Si l\'égalité convient, donner le dividende, le diviseur, le quotient';
        $t.tput: '# et le reste. Sinon expliquer pourquoi l\'égalité ne convient pas.';
        $t.tput: '# a. 291 = 18 x 15 + 21; b. 102 = 6 x 16 + 6; c. 142 = 8 x 17 + 6';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_05 {
        my $output-file = 'm0205.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 2.05.';
        $t.tput: '# -------------';
        $t.tput: '# On distribue 52 cartes à jouer à trois personnes qui reçoivent chacune le même';
        $t.tput: '# nombre de cartes. Combien de cartes recevra au maximum chaque personne ?';
        $t.tput: '# Combien de cartes restera-t-il ?';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_06 {
        my $output-file = 'm0206.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 2.06.';
        $t.tput: '# -------------';
        $t.tput: '# Lors d\'un voyage scolaire à Millau, on doit répartir 22 garçons dans des chambres';
        $t.tput: '# à 4 lits. Combien faudra-t-il au minimum de chambres pour que chacun dispose d\'un';
        $t.tput: '# lit ?';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_07 {
        my $output-file = 'm0207.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 2.07.';
        $t.tput: '# -------------';
        $t.tput: '# Une fermière a récolté 59 œufs. Pour les transporter au marché et les vendre,';
        $t.tput: '# elle les range dans des boîtes de 12. Combien lui faudra-t-il de boîtes ?';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_08 {
        my $output-file = 'm0208.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 2.08.';
        $t.tput: '# -------------';
        $t.tput: '# Un confiseur a pu réaliser 346 chocolats. Il veut les présenter pour la vente';
        $t.tput: '# dans des coffrets de 16. Combien pourra-t-il remplir de coffrets ?';
        $t.tput: '-----------------------------------------------------------------------------------';
    }
}
