unit module Teeput;

use v6;

=begin pod
=NAME rôle Teeput::Tput
=AUTHOR Christian Béloscar
=VERSION 1.0

=for header1
Le rôle Teeput::Tput est utilisé afin d'écrire les informations
affichées sur la sortie standard, répliquées dans un fichier
correspondant situé dans le dossier 'output/'
sous-dossier de chaque dossier comportant les fichiers p6
à l'instar de la commande 'tee' des systèmes Unix.

Il est utilisé dans tous les modules pm6 et les fichiers p6
dans lesquels il est implémenté par composition plutôt que par
la directive B<does Tput>.
Il est requis pour chacun de ces fichiers et en mode B<rw>.

Il contient quatre attributs, deux de type B<Str> 
et deux de type B<Bool>.
Chacun de ces attributs possède une valeur par défaut
et sont en lecture/écriture (rw) :
=item B<filepath> contient le chemin d'accès au fichier texte
qui répliquera les informations, c'est à dire par défaut
filepath => output/out.txt.

B<filemode> précise le mode d'ouverture des fichiers :
=item :mode<wo>, :create, :exclusive qui s'écrit simplement B<:x>;
=item :mode<wo>, :create, :truncate qui s'écrit simplement B<:w>;
=item :mode<wo>, :create, :append qui s'écrit simplement B<:a>.

Pour ce qui est des autres champs leur valeur par défaut est
B<False> pour B<writefile> et B<True> pour B<closefile>.
Pour effectivement permettre l'écriture dans un fichier,
il faut passer B<True> à l'attribut B<writefile>;
l'attribut B<closefile> peut être passé à B<False>
pour éviter de refermer le fichier dans lequel on écrit
à chaque instruction d'écriture et ainsi d'accélérer
le processus, mais cet attribut n'a d'effet qu'en mode B<:a>,
les autres modes B<:x> et B<:w> fermant le fichier d'écriture
automatiquement après chaque instruction. 

Il faudra penser à lui passer la valeur B<True> avant la dernière
exécution d'écriture afin que le fichier soit bien fermé.
Notez que le mode B<:x> n'écrit qu'une fois dans un fichier
de sorte que si vous voulez le mettre à jour,
il faudra d'abord supprimer ce fichier pour qu'il soit recréé.

Le rôle possède deux méthodes qui correspondent pour l'une
à la méthode B<put> et pour l'autre à méthode B<print>,
la différence entre les deux étant que la première
ajoute un caractère de fin de ligne, tandis que
la deuxième demeure sur la ligne attendant l'instruction
d'écriture suivante.

Ce sont :
=for head2
tput(Str:D $string --> Bool:D) {}
tprint(Str:D $string --> Bool:D) {}
=end pod

role Tput is export {
    my $filemode-one-junction = ':x' ^ ':w' ^ ':a';
    has Str $.filepath is rw = 'output/out.txt';
    has Str $.filemode is rw where { $_ ~~ $filemode-one-junction or die "Attribut filemode invalide! ':x', ':w' ou ':a' requis."; } = ':a';
    has Bool $.writefile is rw = False;
    # Utilisé uniquement pour le mode :a
    has Bool $.closefile is rw = True;

    method tput(Str:D $string --> Bool:D) {
        # :mode<wo>, :create, :exclusive
        if ($!filemode eq ':x') {
            try {
                put $string;
                if $!writefile {
                    my $fh = open :x, $!filepath;
                    $fh.put: $string;
                    $fh.close;
                }
                # Check for existence
                if $!filepath.IO.e {
                    ;
                } else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return False;
                }
            }
        # :mode<wo>, :create, :truncate
        } elsif ($!filemode eq ':w') {
            try {
                put $string;
                if $!writefile {
                    my $fh = open :w, $!filepath;
                    $fh.put: $string;
                    $fh.close;
                }
                # Check for existence
                if $!filepath.IO.e {
                    ;
                } else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return False;
                }
            }
        # :mode<wo>, :create, :append   
        } elsif ($!filemode eq ':a') {
            try {
                put $string;
                if $!writefile {
                    my $fh = open :a, $!filepath;
                    $fh.put: $string;
                    $fh.close if $!closefile;
                }
                # Check for existence
                if $!filepath.IO.e {
                    ;
                } else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return False;
                }
            }
        } else {
            put $string;
            return False;
        }
        return True;
    }

    method tprint(Str:D $string --> Bool:D) {
        # :mode<wo>, :create, :exclusive
        if ($!filemode eq ':x') {
            try {
                print $string;
                if $!writefile {
                    my $fh = open :x, $!filepath;
                    $fh.tprint: $string;
                    $fh.close;
                }
                # Check for existence
                if $!filepath.IO.e {
                    ;
                } else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return False;
                }
            }
        # :mode<wo>, :create, :truncate
        } elsif ($!filemode eq ':w') {
            try {
                print $string;
                if $!writefile {
                    my $fh = open :w, $!filepath;
                    $fh.print: $string;
                    $fh.close;
                }
                # Check for existence
                if $!filepath.IO.e {
                    ;
                } else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return False;
                }
            }
        # :mode<wo>, :create, :append   
        } elsif ($!filemode eq ':a') {
            try {
                print $string;
                if $!writefile {
                    my $fh = open :a, $!filepath;
                    $fh.print: $string;
                    $fh.close if $!closefile;
                }
                # Check for existence
                if $!filepath.IO.e {
                    ;
                } else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return False;
                }
            }
        } else {
            print $string;
            return False;
        }
        return True;
    }
}
