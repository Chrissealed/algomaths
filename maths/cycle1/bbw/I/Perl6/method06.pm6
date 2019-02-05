unit module Method06;

use v6;

=begin pod
=NAME class B<Method06::ChooseX> : Perl 6 module in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<method06.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.04
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
    filepath => 'teeput.logout',
);

class ChooseX does Teeput::Tput is export {

    method put-up-method {
        my $wording = q:to/EOM/;
    ###################################################################################
    # Méthode 6. Comment établir la liste des diviseurs d'un entier non nul ?
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

    EOM
        my Str $filepath = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/method06.txt";
        $t.filepath = $filepath;
        $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
        $t.tput($wording);
    }

    method show-examples() {
        my Str $path = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I";
        shell "xdg-open $path/examples06.pdf &";
    }

    method set-output-file-mode(Str:D $file) {
        $t.filemode = ':w'; # :mode<wo>, :create, :truncate
        $t.filepath = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/$file";

        $t.tput: '# Exercices :';
        $t.filemode = ':a'; # :mode<wo>, :create, :append
        $t.closefile = False;
        $t.tput: '# ---------';
        $t.tput: '# DIVISEURS ET NOMBRES PREMIERS';
        $t.tprint: "\n";
    }
    
    method exercise_01a {
        my $output-file = 'm0601a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Déterminez tous les facteurs du nombre suivant.";
        $t.tput: "a. 12";
    }

    method exercise_01b {
        my $output-file = 'm0601b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Déterminez tous les facteurs du nombre suivant.";
        $t.tput: "b. 20";
    }

    method exercise_01c {
        my $output-file = 'm0601c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Déterminez tous les facteurs du nombre suivant.";
        $t.tput: "c. 32";
    }

    method exercise_01d {
        my $output-file = 'm0601d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Déterminez tous les facteurs du nombre suivant.";
        $t.tput: "d. 108";
    }

    method exercise_01e {
        my $output-file = 'm0601e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Déterminez tous les facteurs du nombre suivant.";
        $t.tput: "e. 144";
    }

    method exercise_02a {
        my $output-file = 'm0602a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Déterminez tous les facteurs du nombre suivant.";
        $t.tput: "a. 72";
    }

    method exercise_02b {
        my $output-file = 'm0602b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Déterminez tous les facteurs du nombre suivant.";
        $t.tput: "b. 100";
    }

    method exercise_02c {
        my $output-file = 'm0602c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Déterminez tous les facteurs du nombre suivant.";
        $t.tput: "c. 1001";
    }

    method exercise_02d {
        my $output-file = 'm0602d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Déterminez tous les facteurs du nombre suivant.";
        $t.tput: "d. 561";
    }

    method exercise_02e {
        my $output-file = 'm0602e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Déterminez tous les facteurs du nombre suivant.";
        $t.tput: "e. 196";
    }
}
