use v6;

unit module Teeput;

=begin pod
=NAME rôle B<Teeput::Tput> in B<algomaths> Perl 6 modules : maths/modules/pm6/B<teeput.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.03

=for head1
Le rôle Teeput::Tput

est utilisé afin de répliquer les informations
affichées sur la sortie standard, dans un fichier
correspondant situé dans le dossier 'output/'
sous-dossier de chaque dossier comportant les fichiers p6
à l'instar de la commande 'tee' des systèmes Unix.

Il est utilisé dans tous les modules pm6 et les fichiers p6
dans lesquels il est implémenté par composition plutôt que par
la directive B<does Tput>.
Il est requis pour chacun de ces fichiers et en mode B<rw>.

Il possède les attributs suivants qui possèdent
chacun une valeur par défaut et sont en lecture/écriture :
=item B<filepath> contient le chemin d'accès au fichier texte
qui répliquera les informations, c'est à dire par défaut
filepath => ./teeput-out.txt ou normalement dans le sous-dossier
B<output>.

B<filemode> précise le mode d'ouverture des fichiers :
=item :mode<wo>, :create, :exclusive qui s'écrit simplement B<:x>;
=item :mode<wo>, :create, :truncate qui s'écrit simplement B<:w>;
=item :mode<wo>, :create, :append qui s'écrit simplement B<:a>.

B<writetty> par défaut à True permet de choisir si on veut
de ne pas écrire sur le terminal les informations qui
seront alors recueillies dans un fichier si vous passez
la valeur B<True> au champ B<writefile>.

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
exécution d'écriture afin que le fichier soit bien fermé
si il a été écrit en mode B<:a> et que B<closefile> est à True.
Notez que le mode B<:x> n'écrit qu'une fois dans un fichier
de sorte que si vous voulez le mettre à jour,
il faudra d'abord supprimer ce fichier pour qu'il soit recréé.

Le rôle possède trois méthodes qui correspondent pour l'une
à la méthode B<put>, pour l'autre à méthode B<print> et
enfin la dernière à la méthode B<say>,
la différence entre les trois étant que la première
et la dernière ajoutent un caractère de fin de ligne,
tandis que la deuxième demeure sur la ligne attendant l'instruction
d'écriture suivante et que chacune formate différemment leur argument.

Ces trois méthodes renvoient un Booléen selon la réussite
ou pas de l'appel; voici la signature de ces méthodes :
=for head2
tput($param-one-junction --> Bool:D) {}
=for head2
tprint($param-one-junction --> Bool:D) {}
=for head2
tsay($param-one-junction --> Bool:D) {}

Les arguments applicables aux trois méthodes sont définis
selon la jonction B<$param-one-junction = Str:D ^ Array:D ^ Hash:D>;
autrement dit vous avez le choix pour chaque méthode
de passer un argument de type B<Str>, B<Array> ou B<Hash>.
=end pod

role Tput is export {
    my $filemode-one-junction = ':x' ^ ':w' ^ ':a';
    has Str $.filepath is rw = './teeput.logout';
    has Str $.filemode is rw where { $_ ~~ $filemode-one-junction or die "Attribut filemode invalide! ':x', ':w' ou ':a' requis."; } = ':a';
    has Bool $.writefile is rw = False;
    has Bool $.writetty is rw = True;
    # Utilisé uniquement pour le mode :a
    has Bool $.closefile is rw = True;
    
    #my $param-one-junction = Str:D ^ Array:D ^ Hash:D;

    method tput($param-one-junction --> Bool:D) {
        my Bool $status = True;
        # :mode<wo>, :create, :exclusive
        if ($!filemode eq ':x') {
            try {
                if $!writetty { put $param-one-junction; }
                if $!writefile {
                    my $fh = open :x, $!filepath;
                    $fh.put: $param-one-junction;
                }
                # Check for existence
                if ($!filepath.IO.e) {
                    return $status;
                }
                else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return !$status;
                }
            }
        # :mode<wo>, :create, :truncate
        } elsif ($!filemode eq ':w') {
            try {
                if $!writetty { put $param-one-junction; }
                if $!writefile {
                    my $fh = open :w, $!filepath;
                    $fh.put: $param-one-junction;
                }
                # Check for existence
                if $!filepath.IO.e {
                    return $status;
                }
                else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return !$status;
                }
            }
        # :mode<wo>, :create, :append   
        } elsif ($!filemode eq ':a') {
            try {
                if $!writetty { put $param-one-junction; }
                if $!writefile {
                    my $fh = open :a, $!filepath;
                    $fh.put: $param-one-junction;
                    $fh.close if $!closefile;
                }
                # Check for existence
                if $!filepath.IO.e {
                    return $status;
                }
                else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return !$status;
                }
            }
        }
    }

    method tprint($param-one-junction --> Bool:D) {
        my Bool $status = True;
        # :mode<wo>, :create, :exclusive
        if ($!filemode eq ':x') {
            try {
                if $!writetty { print $param-one-junction; }
                if $!writefile {
                    my $fh = open :x, $!filepath;
                    $fh.print: $param-one-junction;
                }
                # Check for existence
                if ($!filepath.IO.e) {
                    return $status;
                }
                else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return !$status;
                }
            }
        # :mode<wo>, :create, :truncate
        } elsif ($!filemode eq ':w') {
            try {
                if $!writetty { print $param-one-junction; }
                if $!writefile {
                    my $fh = open :w, $!filepath;
                    $fh.print: $param-one-junction;
                }
                # Check for existence
                if ($!filepath.IO.e) {
                    return $status;
                }
                else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return !$status;
                }
            }
        # :mode<wo>, :create, :append   
        } elsif ($!filemode eq ':a') {
            try {
                if $!writetty { print $param-one-junction; }
                if $!writefile {
                    my $fh = open :a, $!filepath;
                    $fh.print: $param-one-junction;
                    $fh.close if $!closefile;
                }
                # Check for existence
                if ($!filepath.IO.e) {
                    return $status;
                }
                else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return !$status;
                }
            }
        }
    }

    method tsay($param-one-junction --> Bool:D) {
        my Bool $status = True;
        # :mode<wo>, :create, :exclusive
        if ($!filemode eq ':x') {
            try {
                if $!writetty { say $param-one-junction; }
                if $!writefile {
                    my $fh = open :x, $!filepath;
                    $fh.say: $param-one-junction;
                }
                # Check for existence
                if ($!filepath.IO.e) {
                    return $status;
                }
                else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return !$status;
                }
            }
        # :mode<wo>, :create, :truncate
        } elsif ($!filemode eq ':w') {
            try {
                if $!writetty { say $param-one-junction; }
                if $!writefile {
                    my $fh = open :w, $!filepath;
                    $fh.say: $param-one-junction;
                }
                # Check for existence
                if ($!filepath.IO.e) {
                    return $status;
                }
                else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return !$status;
                }
            }
        # :mode<wo>, :create, :append   
        } elsif ($!filemode eq ':a') {
            try {
                if $!writetty { say $param-one-junction; }
                if $!writefile {
                    my $fh = open :a, $!filepath;
                    $fh.say: $param-one-junction;
                    $fh.close if $!closefile;
                }
                # Check for existence
                if ($!filepath.IO.e) {
                    return $status;
                }
                else {
                    put "Ecriture dans $!filepath en mode $!filemode impossible!";
                    return !$status;
                }
            }
        }
    }
}
