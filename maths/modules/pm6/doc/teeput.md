NAME
====

rôle **Teeput::Tput** in **algomaths** Perl 6 modules : maths/modules/pm6/**teeput.pm6**

AUTHOR
======

https://github.com/Chrissealed/algomaths.git

VERSION
=======

2018.12.16

Le rôle Teeput::Tput
====================

est utilisé afin de répliquer les informations affichées sur la sortie standard, dans un fichier correspondant situé dans le dossier 'output/' sous-dossier de chaque dossier comportant les fichiers p6 à l'instar de la commande 'tee' des systèmes Unix.

Il est utilisé dans tous les modules pm6 et les fichiers p6 dans lesquels il est implémenté par composition plutôt que par la directive **does Tput**. Il est requis pour chacun de ces fichiers et en mode **rw**.

Il possède les attributs suivants qui possèdent chacun une valeur par défaut et sont en lecture/écriture :

  * **filepath** contient le chemin d'accès au fichier texte qui répliquera les informations, c'est à dire par défaut filepath => output/out.txt.

**filemode** précise le mode d'ouverture des fichiers :

  * :mode<wo>, :create, :exclusive qui s'écrit simplement **:x**;

  * :mode<wo>, :create, :truncate qui s'écrit simplement **:w**;

  * :mode<wo>, :create, :append qui s'écrit simplement **:a**.

Pour ce qui est des autres champs leur valeur par défaut est **False** pour **writefile** et **True** pour **closefile**. Pour effectivement permettre l'écriture dans un fichier, il faut passer **True** à l'attribut **writefile**; l'attribut **closefile** peut être passé à **False** pour éviter de refermer le fichier dans lequel on écrit à chaque instruction d'écriture et ainsi d'accélérer le processus, mais cet attribut n'a d'effet qu'en mode **:a**, les autres modes **:x** et **:w** fermant le fichier d'écriture automatiquement après chaque instruction. 

Il faudra penser à lui passer la valeur **True** avant la dernière exécution d'écriture afin que le fichier soit bien fermé si il a été écrit en mode **:a** et que **closefile** est à True. Notez que le mode **:x** n'écrit qu'une fois dans un fichier de sorte que si vous voulez le mettre à jour, il faudra d'abord supprimer ce fichier pour qu'il soit recréé.

Le rôle possède trois méthodes qui correspondent pour l'une à la méthode **put**, pour l'autre à méthode **print** et enfin la dernière à la méthode **say**, la différence entre les trois étant que la première et la dernière ajoutent un caractère de fin de ligne, tandis que la deuxième demeure sur la ligne attendant l'instruction d'écriture suivante et que chacune formate différemment leur argument.

Ces trois méthodes renvoient un Booléen selon la réussite ou pas de l'appel; voici la signature de ces méthodes :

tput($param-one-junction --> Bool:D) {}
---------------------------------------

tprint($param-one-junction --> Bool:D) {}
-----------------------------------------

tsay($param-one-junction --> Bool:D) {}
---------------------------------------

Les arguments applicables aux trois méthodes sont définis selon la jonction **$param-one-junction = Str:D ^ Array:D ^ Hash:D**; autrement dit vous avez le choix pour chaque méthode de passer un argument de type **Str**, **Array** ou **Hash**.

