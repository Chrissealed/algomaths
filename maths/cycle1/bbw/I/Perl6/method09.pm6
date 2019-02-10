unit module Method09;

use v6;

=begin pod
=NAME class B<Method09::ChooseX> : Perl 6 module in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<method09.pm6>
=AUTHOR  https://jithub.com/Chrissealed/algomaths.git
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

    method put-up-method(Str:D $file = 'method09.txt', Str $method?) {
        my Str $wording = qq:to/EOM/;
    # − Recherche du PGCD et du PPCM −
    ###################################################################################
    # Méthode 9. Comment déterminer le PGCD (plus grand commun multiple) et le PPCM
    # (plus petit commun multiple) de trois nombres entiers.
    # ▲ Le PGCD et le PPCM de plus de deux nombres s'obtiennent tout aussi facilement
    # à partir de leurs décompositions en facteurs premiers. Par exemple :
    # PGCD(180 ; 585 ; 3003) = 3.
    # PPCM(180 ; 585 ; 3003) = 2² × 3² × 5 × 7 × 11 × 13 = 180180.
    # (Voir méthodes 5, 6, 7, 8_1, 8_2 et 8_3 de ce chapitre;
    # voir aussi les méthodes 4, 5, 6, 7 et 8 du cursus fm3).
    ####################################################################################
    EOM

        my Str $filepath = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/$file";
        $t.filepath = $filepath;
        $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
        if defined($method) {
            $t.tput($method);
        } else {
            $t.tput($wording);
        }
    }

    method put-up-method5 {
        my $wording = qq:to/EOM/;
    # − Recherche du PGCD −
    # Méthode 5. Diviseurs et nombres premiers.
    ###################################################################################
    # ▲ Il arrive parfois qu'une division s'arrête, autrement dit, que le reste soit nul.
    # Par exemple : 238 ÷ 17 = 14, ce qui revient à 238 = 14 × 17.
    # Les nombres 14 et 17 s'appellent diviseurs de 238 et l'expression 238 = 14 × 17
    # s'appelle 'décomposition en facteurs' de 238.
    # Ici les termes 'diviseurs' et 'facteurs' sont synonymes.
    # ▲ Un de ces deux facteurs peut à son tour être décomposé, à savoir 14 = 2 × 7.
    # La décomposition de 238 ne peut pas être poursuivie car 2, 7 et 17 sont tous les
    # trois des nombres 'premiers'. Cela signifie que ces nombres ne peuvent pas être
    # décomposés en facteurs plus petits. Finalement la décomposition en facteurs premiers
    # de 238 est : 238 = 2 × 7 × 17.
    # ▲ Comme 238 = 1 × 238 est aussi une décomposition de 238, les nombres 1 et 238
    # sont aussi des diviseurs de 238. Tout nombre entier admet 1 et lui-même comme
    # diviseur. Les diviseurs intéressants, les 'vrais diviseurs', sont en fait les
    # diviseurs supérieurs à 1 et inférieurs au nombre lui-même. Les 'nombres premiers'
    # sont les nombres supérieurs à 1 et qui n'ont pas de vrais diviseurs.
    ###################################################################################

    EOM
        self.put-up-method('method05.txt', $wording);
    }

    method put-up-method6 {
        my $wording = q:to/EOM/;
    # − Recherche du PGCD −
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
        self.put-up-method('method06.txt', $wording);
    }

    method put-up-method7 {
        my $wording = q:to/EOM/;
    # − Recherche du PGCD −
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
    # (Voir aussi les méthodes 4, 5, 6, 7 et 8 du cursus fm3).
    ###################################################################################

    EOM
        self.put-up-method('method07.txt', $wording);
    }

    method put-up-methodfm3_7() {
        my $wording = q:to/EOM/;
    # Chapitre I : ARITHMÉTIQUE (méthode étudiée dans le cours 'fm3').
    ###################################################################################
    # Méthode 7. Comment déterminer le PGCD de deux nombres entiers par l'algorithme
    # d'Euclide ?
    ###################################################################################
    # ▲ on effectue la division euclidienne du plus grand nombre par le plus petit;
    # ▲ on conserve le plus petit des deux nombres et le reste trouvé et on écrit que
    # le PGCD cherché est leur PGCD;
    # ▲ on continue ainsi jusqu'à l'obtention d'un reste nul, le PGCD est le dernier
    # reste non nul.
    # La méthode s'appuie sur la propriété suivante : a et b désignant deux entiers,
    # si a > b, PGCD(a;b) = PGCD(b;r) où r est le reste de la division euclidienne de
    # a par b
    ###################################################################################

    EOM
        put $wording;
    }

    multi method put-up-methodfm3_5 {
        my $wording = q:to/EOM/;
    # Chapitre I : ARITHMÉTIQUE (méthode étudiée dans le cours 'fm3').
    ###################################################################################
    # Méthode 5. Pour déterminer le PGCD de deux nombres entiers par l'algorithme
    # des soustractions :
    ###################################################################################
    # ▲ on calcule la différence des deux nombres;
    # ▲ on garde le plus petit des deux nombres et la différence trouvée et on écrit
    # que le PGCD cherché est leur PGCD;
    # ▲ on recommence le même procédé avec les deux nouveaux nombres jusqu'à l'obtention
    # de deux nombres égaux, le PGCD est égal à leur valeur.
    # La méthode s'appuie sur les propriétés suivantes : a et b désignant deux entiers,
    # si a = b, alors PGCD(a;b) = a = b et si a > b, PGCD(a;b) = PGCD(b;a-b).
    ###################################################################################

    EOM
        put($wording);
    }

    method put-up-method8_1 {
        my $wording = qq:to/EOM/;
    # − Recherche du PPCM −
    # Première méthode, en cherchant les multiples des deux nombres :
    # ▲ On établit la liste des multiples du plus grand nombre en l'ajoutant successive-
    # ment à lui-même et on vérifie pour chaque multiple s'il est divisible par le plus
    # petit nombre.
    ####################################################################################

    EOM
        self.put-up-method('method08_1.txt', $wording);
    }

    method put-up-method8_2 {
        my $wording = qq:to/EOM/;
    # − Recherche du PPCM −
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

    method put-up-method8_3 {
        my $wording = qq:to/EOM/;
    # − Recherche du PPCM −
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
        shell "xdg-open $path/examples09.pdf &";
    }

    method set-output-file-mode(Str:D $file) {
        $t.filemode = ':w'; # :mode<wo>, :create, :truncate
        $t.filepath = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/$file";

        $t.tput: '# Exercices :';
        $t.filemode = ':a'; # :mode<wo>, :create, :append
        $t.closefile = False;
        $t.tput: '# ---------';
        $t.tput: '# PGCD, PPCM ET FACTEURS PREMIERS';
        $t.tprint: "\n";
    }

    method exercise_01a is export {
        my $output-file = 'm0901a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Déterminez le PGCD et le PPCM.';
        $t.tput: '# a. PGCD(9 ; 12 ; 30). PPCM(9 ; 12 ; 30).';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01b {
        my $output-file = 'm0901b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Déterminez le PGCD et le PPCM.';
        $t.tput: '# b. PGCD(24 ; 30 ; 36). PPCM(24 ; 30 ; 36).';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01c {
        my $output-file = 'm0901c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Déterminez le PGCD et le PPCM.';
        $t.tput: '# c. PGCD(10 ; 15 ; 35). PPCM(10 ; 15 ; 35).';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01d {
        my $output-file = 'm0901d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Déterminez le PGCD et le PPCM.';
        $t.tput: '# d. PGCD(18 ; 27 ; 63). PPCM(18 ; 27 ; 63).';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_01e {
        my $output-file = 'm0901e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Déterminez le PGCD et le PPCM.';
        $t.tput: '# e. PGCD(21 ; 24 ; 27). PPCM(21 ; 24 ; 27).';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02a {
        my $output-file = 'm0902a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Déterminez le PGCD et le PPCM.';
        $t.tput: '# a. PGCD(28 ; 35 ; 49). PPCM(28 ; 35 ; 49).';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02b {
        my $output-file = 'm0902b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Déterminez le PGCD et le PPCM.';
        $t.tput: '# b. PGCD(64 ; 80 ; 112). PPCM(64 ; 80 ; 112).';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02c {
        my $output-file = 'm0902c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Déterminez le PGCD et le PPCM.';
        $t.tput: '# c. PGCD(39 ; 52 ; 130). PPCM(39 ; 52 ; 130).';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02d {
        my $output-file = 'm0902d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Déterminez le PGCD et le PPCM.';
        $t.tput: '# d. PGCD(144 ; 168 ; 252). PPCM(144 ; 168 ; 252).';
        $t.tput: '-----------------------------------------------------------------------------------';
    }

    method exercise_02e {
        my $output-file = 'm0902e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: '# Déterminez le PGCD et le PPCM.';
        $t.tput: '# e. PGCD(189 ; 252 ; 315). PPCM(189 ; 252 ; 315).';
        $t.tput: '-----------------------------------------------------------------------------------';
    }
}
