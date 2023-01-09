unit module Method05;

use v6;

=begin pod
=NAME class B<Method05::ChooseX> : Perl 6 module in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<method05.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION Windows release : 2019.06.19
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
    # Chemin provisoire ou de recours
    filepath => './teeput.logout',
);

class ChooseX is export {

    method put-up-method {
        my $wording = qq:to/EOM/;
    ###################################################################################
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
        my Str $filepath = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/method05.txt";
        $t.filepath = $filepath;
        $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
        $t.tput($wording);
    }

    method show-examples() {
        my Str $path = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I";
        shell "start $path/examples05.pdf";
    }

    method set-output-file-mode(Str:D $file) {
        #my $io = IO::Path.new("$*CWD/init.p6");
        #my Bool $local-call = False;
        #my Bool $remote-call = True;
        $t.filemode = ':w'; # :mode<wo>, :create, :truncate
        $t.filepath = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/$file";

        $t.tput: '# Exercices :';
        $t.filemode = ':a'; # :mode<wo>, :create, :append
        $t.closefile = False;
        $t.tput: '# ---------';
        $t.tput: '# DIVISEURS ET NOMBRES PREMIERS';
        $t.tprint: "\n";
    }

    method exercise_01a() {
        my $output-file = 'm0501a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "a. 24";
    }

    method exercise_01b() {
        my $output-file = 'm0501b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "b. 72";
    }

    method exercise_01c() {
        my $output-file = 'm0501c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "c. 250";
    }

    method exercise_01d() {
        my $output-file = 'm0501d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "d. 96";
    }

    method exercise_01e() {
        my $output-file = 'm0501e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "e. 98";
    }

    method exercise_02a() {
        my $output-file = 'm0502a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "f. 288";
    }

    method exercise_02b() {
        my $output-file = 'm0502b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "g. 1024";
    }

    method exercise_02c() {
        my $output-file = 'm0502c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "h. 315";
    }

    method exercise_02d() {
        my $output-file = 'm0502d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "i. 396";
    }

    method exercise_02e() {
        my $output-file = 'm0502e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "j. 1875";
    }

    method exercise_03a() {
        my $output-file = 'm0503a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "k. 972";
    }

    method exercise_03b() {
        my $output-file = 'm0503b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "l. 676";
    }

    method exercise_03c() {
        my $output-file = 'm0503c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "m. 2025";
    }

    method exercise_03d() {
        my $output-file = 'm0503d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "n. 1122";
    }

    method exercise_03e() {
        my $output-file = 'm0503e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "o. 860";
    }

    method exercise_04a() {
        my $output-file = 'm0504a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "p. 255";
    }

    method exercise_04b() {
        my $output-file = 'm0504b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "q. 441";
    }

    method exercise_04c() {
        my $output-file = 'm0504c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "r. 722";
    }

    method exercise_04d() {
        my $output-file = 'm0504d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "s. 432";
    }

    method exercise_04e() {
        my $output-file = 'm0504e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "t. 985";
    }

    method exercise_05a() {
        my $output-file = 'm0505a.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "u. 2000";
    }

    method exercise_05b() {
        my $output-file = 'm0505b.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "v. 2001";
    }

    method exercise_05c() {
        my $output-file = 'm0505c.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "w. 2002";
    }

    method exercise_05d() {
        my $output-file = 'm0505d.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "x. 2003";
    }

    method exercise_05e() {
        my $output-file = 'm0505e.txt';
        self.set-output-file-mode($output-file);
        $t.tput: "Décomposez le nombre suivant en facteurs premiers.";
        $t.tput: "y. 2004";
    }
}

END {
    #put "Fermeture du fichier {$t.filepath} dans le module method05.pm6.";
    $t.closefile = True;
    $t.tprint: "\n";
}
