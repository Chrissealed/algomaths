unit module Method01;

use v6;

=begin pod
=NAME class B<Method01::ChooseX> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<method01.pm6>
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
    
    method put-up-method (Str:D $file = 'method01.txt', Str $method?) {
        my Str $wording = qq:to/EOM/;
    # Chapitre I : ARITHMÉTIQUE.
    ###################################################################################
    # Méthode 1. Comment utiliser la notion de multiple d'un entier naturel ?
    ###################################################################################
    # Pour utiliser la notion de multiple d'un entier naturel:
    # ▲ on s'appuie sur la définition : a et b étant deux entiers naturels et b non nul
    # on dit que a est un multiple de b s'il existe un entier q tel que a = bq.
    # Remarque : 0 est multiple de tous les nombres.
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

    method show-examples is export {
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
        my $output-file = 'm0101.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 1.01.';
        $t.tput: '# -------------';
        $t.tput: '# 180 et 260 sont-ils des multiples de 15 ?';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02 {
        my $output-file = 'm0102.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 1.02.';
        $t.tput: '# -------------';
        $t.tput: '# Trouver les multiples de 53 compris entre 300 et 500.';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03 {
        my $output-file = 'm0103.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 1.03.';
        $t.tput: '# -------------';
        $t.tput: '# a. 36 et 42 sont-ils des multiples consécutifs de 6 ?';
        $t.tput: '# b. 42 et 56 sont-ils des multiples consécutifs de 7 ?';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04 {
        my $output-file = 'm0104.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 1.04.';
        $t.tput: '# -------------';
        $t.tput: '# On donne un entier n. Donner deux multiples consécutifs de n.';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_05 {
        my $output-file = 'm0105.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 1.05.';
        $t.tput: '# -------------';
        $t.tput: '# Démontrer que la somme de trois multiples consécutifs de 5 est un multiple de 15.';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_06 {
        my $output-file = 'm0106.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 1.06.';
        $t.tput: '# -------------';
        $t.tput: '# Trouver un nombre pair compris entre 500 et 800 qui soit multiple à la fois de';
        $t.tput: '# 11 et de 17.';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_06b {
        my $output-file = 'm0106+.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 1.06+.';
        $t.tput: '# -------------';
        $t.tput: '# Trouver un nombre pair compris entre 500 et 800 qui soit multiple à la fois de';
        $t.tput: '# 11 et de 17.';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_07 {
        my $output-file = 'm0107.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 1.07.';
        $t.tput: '# -------------';
        $t.tput: '# Peut-on trouver un nombre non nul inférieur à 150 qui soit à la fois';
        $t.tput: '# a. multiple de 11 et de 13 ?';
        $t.tput: '# b. multiple de 11 et de 15 ?';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_07b {
        my $output-file = 'm0107+.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 1.07+.';
        $t.tput: '# -------------';
        $t.tput: '# Peut-on trouver un nombre non nul inférieur à 150 qui soit à la fois';
        $t.tput: '# a. multiple de 11 et de 13 ?';
        $t.tput: '# b. multiple de 11 et de 15 ?';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_08 {
        my $output-file = 'm0108.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 1.08.';
        $t.tput: '# -------------';
        $t.tput: '# 393 et 793 sont-ils des multiples de 13 ?';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_09 {
        my $output-file = 'm0109.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Exercice 1.09.';
        $t.tput: '# -------------';
        $t.tput: '# La somme de quatre multiples consécutifs de 6 est 228. Trouver ces nombres.';
        $t.tput: '-----------------------------------------------------------------------------------';
    }
}
