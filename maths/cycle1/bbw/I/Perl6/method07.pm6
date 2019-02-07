unit module Method07;

use v6;

=begin pod
=NAME class B<Method07::ChooseX> : Perl 6 module in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<method07.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.07
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
    # Fichier de garde dans le cas ou l'attribut filepath n'est pas assigné
    filepath => 'teeput.logout',
);

class ChooseX does Teeput::Tput is export {

    method put-up-method {
        my $wording = q:to/EOM/;
###################################################################################
# Méthode 7. Comment déterminer le PGCD de deux nombres à l'aide de leur décomposi-
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
# (Voir aussi les méthodes 4, 5, 6, 7 et 8 du dossier fm3).
###################################################################################

EOM
        my Str $filepath = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/method07.txt";
        $t.filepath = $filepath;
        $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
        $t.tput($wording);
    }

    method show-examples() {
        my Str $path = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I";
        shell "xdg-open $path/examples07.pdf &";
    }

    method set-output-file-mode(Str:D $file) {
        $t.filemode = ':w'; # :mode<wo>, :create, :truncate
        $t.filepath = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/$file";

        $t.tput: '# Exercices :';
        $t.filemode = ':a'; # :mode<wo>, :create, :append
        $t.closefile = False;
        $t.tput: '# ---------';
        $t.tput: '# PGCD ET FACTEURS PREMIERS';
        $t.tprint: "\n";
    }
    
    method exercise_01a {
        my $output-file = 'm0701a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# a. PGCD(12 ; 30)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01b {
        my $output-file = 'm0701b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# b. PGCD(24 ; 84)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01c {
        my $output-file = 'm0701c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# c. PGCD(27 ; 45)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01d {
        my $output-file = 'm0701d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# d. PGCD(32 ; 56)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01e {
        my $output-file = 'm0701e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# e. PGCD(34 ; 85)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02a {
        my $output-file = 'm0702a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# a. PGCD(45 ; 225)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02b {
        my $output-file = 'm0702b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# b. PGCD(144 ; 216)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02c {
        my $output-file = 'm0702c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# c. PGCD(90 ; 196)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02d {
        my $output-file = 'm0702d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# d. PGCD(243 ; 135)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02e {
        my $output-file = 'm0702e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# e. PGCD(188 ; 168)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03a {
        my $output-file = 'm0703a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# a. PGCD(1024 ; 864)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03b {
        my $output-file = 'm0703b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# b. PGCD(1122 ; 1815)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03c {
        my $output-file = 'm0703c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# c. PGCD(875 ; 1125)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03d {
        my $output-file = 'm0703d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# d. PGCD(1960 ; 6370)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03e {
        my $output-file = 'm0703e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# e. PGCD(1024 ; 1152)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04a {
        my $output-file = 'm0704a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# a. PGCD(1243 ; 1244)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04b {
        my $output-file = 'm0704b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# b. PGCD(1721 ; 1726)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04c {
        my $output-file = 'm0704c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# c. PGCD(875 ; 900)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04d {
        my $output-file = 'm0704d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# d. PGCD(1960 ; 5880)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04e {
        my $output-file = 'm0704e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# e. PGCD(1024 ; 2024)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }
}
