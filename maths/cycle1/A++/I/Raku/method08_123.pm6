unit module Method08;

use v6;

=begin pod
=NAME class B<Method08::ChooseX> : Perl 6 module in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<method08_123.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.10
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
    # Fichier de garde dans le cas ou l'attribut filepath n'est pas assigné
    filepath => 'teeput.logout',
);

class ChooseX does Teeput::Tput is export {

    method put-up-method(Str:D $file, Str:D $method) {
        my Str $wording = qq:to/EOM/;
###################################################################################
# Méthode 8. Comment déterminer le PPCM (plus petit commun multiple) de deux
# nombres entiers.
# ▲ Le 'plus petit commun multiple' (PPCM) de deux nombres est le plus petit nombre
# qui est à la fois multiple de l'un et de l'autre nombre. En d'autres mots, c'est
# le plus petit nombre qui est divisible par chacun des deux nombres.
####################################################################################
EOM
        my Str $filepath = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/$file";
        $t.filepath = $filepath;
        $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
        my Str $method-wording = $wording ~ $method;
        $t.tput($method-wording);
    }

    method put-up-method1 {
        my $wording = qq:to/EOM/;
    # Première méthode, en cherchant les multiples des deux nombres :
    # ▲ On établit la liste des multiples du plus grand nombre en l'ajoutant successive-
    # ment à lui-même et on vérifie pour chaque multiple s'il est divisible par le plus
    # petit nombre.
    ####################################################################################

    EOM
        self.put-up-method('method08_1.txt', $wording);
    }

    method put-up-method2 {
        my $wording = qq:to/EOM/;
    # Deuxième méthode :
    # ▲ Le PPCM s'obtient aisément à partir de la décomposition en facteurs premiers.
    # Ainsi :
    # PPCM(180 ; 585) = PPCM(2² × 3² × 5 ; 3² × 5 × 13) = 2² × 3² × 5 × 13 = 2340.
    # (Utilisant les décompositions de 84 et 270 en produits de nombres premiers) :
    # 84 = 2 × 42 = 2 × 2 × 21 = 2 × 2 × 3 × 7 = 2² × 3 × 7
    # 270 = 2 × 135 = 2 × 3 × 45 = 2 × 3 × 3 × 15 = 2 × 3 × 3 × 3 × 5 = 2 × 3² × 5
    # PPCM(84 , 270 ) = 2² × 3³ × 5 × 7 = 3780
    # (On prend tous les facteurs premiers qui apparaissent et on les affecte du plus
    # grand exposant)
    ####################################################################################

    EOM
        self.put-up-method('method08_2.txt', $wording);
    }

    method put-up-method3 {
        my $wording = qq:to/EOM/;
    # Troisième méthode (utilisable si on a déjà calculé le PGCD) :
    # Il faut donc, dans un cas tel que celui-là, chercher le PGCD des deux nombres,
    # le 'mettre de côté' et procéder comme on vient de le voir. Par exemple, si les
    # dénominateurs sont 70 et 42, on a : 70 = 2 × 5 × 7 ; 42 = 2 × 3 × 7 (ils ont en
    # commun 2 × 7) d'ou 70 = (2 × 7) × 5 ; 42 = (2 × 7) × 3.
    # Le PPCM de 70 et 42 est donc : 2 × 5 × 7 × 3 ou 2 × 7 × 3 × 5 soit 210.
    # ▲ Il est utile d'observer que le produit du PGCD et du PPCM de deux nombres est
    # égal au produit des deux nombres. Ainsi :
    # PGCD(180 ; 585) × PPCM(180 ; 585) = 45 × 2340 = 105300 = 180 × 585.
    # ▲ On utilise le fait que le produit du PPCM par le PGCD est égal au produit des
    # deux nombres de départ.
    # Exemple :
    # PPCM(84 ; 270 ) × PGCD(84 ; 270) = 84 × 270
    # PPCM(84 ; 270 ) × 6 = 84 × 270
    # PPCM(84 ; 270) = (84 × 270) / 6 = 3780
    ###################################################################################

    EOM
        self.put-up-method('method08_3.txt', $wording);
    }

    method show-examples() {
        my Str $path = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I";
        shell "xdg-open $path/examples08_123.pdf &";
    }

    method set-output-file-mode(Str:D $file) {
        $t.filemode = ':w'; # :mode<wo>, :create, :truncate
        $t.filepath = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/$file";

        $t.tput: '# Exercices :';
        $t.filemode = ':a'; # :mode<wo>, :create, :append
        $t.closefile = False;
        $t.tput: '# ---------';
        $t.tput: '# PPCM ET FACTEURS PREMIERS';
        $t.tprint: "\n";
    }
    
    method exercise_01a {
        my $output-file = 'm0801a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# a. PPCM(12 ; 30)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01b {
        my $output-file = 'm0801b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# b. PPCM(27 ; 45)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01c {
        my $output-file = 'm0801c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# c. PPCM(18 ; 63)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01d {
        my $output-file = 'm0801d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# d. PPCM(16 ; 40)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01e {
        my $output-file = 'm0801e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# e. PPCM(33 ; 121)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02a {
        my $output-file = 'm0802a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# a. PPCM(52 ; 39)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02b {
        my $output-file = 'm0802b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# b. PPCM(64 ; 80)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02c {
        my $output-file = 'm0802c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# c. PPCM(144 ; 240)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02d {
        my $output-file = 'm0802d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# d. PPCM(169 ; 130)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02e {
        my $output-file = 'm0802e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# e. PPCM(33 ; 121)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03a {
        my $output-file = 'm0803a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# a. PPCM(250 ; 125)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03b {
        my $output-file = 'm0803b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# b. PPCM(144 ; 216)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03c {
        my $output-file = 'm0803c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# c. PPCM(520 ; 390)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03d {
        my $output-file = 'm0803d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# d. PPCM(888 ; 185)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_03e {
        my $output-file = 'm0803e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# e. PPCM(124 ; 341)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04a {
        my $output-file = 'm0804a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# a. PPCM(240 ; 180)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04b {
        my $output-file = 'm0804b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# b. PPCM(276 ; 414)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04c {
        my $output-file = 'm0804c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# c. PPCM(588 ; 504)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04d1 {
        my $output-file = 'm0804d1.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# d. PPCM(315 ; 189)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04d2 {
        my $output-file = 'm0804d2.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# d. PPCM(315 ; 189)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04d3 {
        my $output-file = 'm0804d3.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# d. PPCM(315 ; 189)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_04e {
        my $output-file = 'm0804e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# e. PPCM(403 ; 221)';
        $t.tput: '-----------------------------------------------------------------------------------';
    }
}
