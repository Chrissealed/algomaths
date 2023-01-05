# Algorithms of mathematics

## Ce projet consiste à coder les méthodes mathématiques des simples bases niveau débutant jusqu'à... pas de limite fixée.

### Ce projet a pour but de pratiquer les mathématiques de manière systématique afin d'apprendre dans le même temps mathématiques et programmation il s'agit donc  d'un projet à visée pédagogique accessible aux débutants et utilisable par tout un chacun pour réviser et consolider ces notions parfois floues dans ces matières.

Ce projet consiste à coder les méthodes mathématiques depuis un 
niveau débutant (collège) afin de combiner l'apprentissage des 
mathématiques et celui de la programmation.
Je me suis finalement tourné vers le langage Perl 6, qui émergeait 
au moment de la création du projet et qui m'a paru adapté au codage 
des mathématiques sans être un langage spécialisé dans ce domaine. 
D'autres options sont possibles comme par exemple **Julia** qui est aussi un langage récent adapté au codage scientifique par destination.
Chaque langage éventuel devrait avoir sa branche dédiée. 
Par exemple j'ai essayé les langages Ruby, C, Pascal, Java qui ont 
chacun leur branche.
Par exemple j'ai créé initialement des branches pour les langages cités ci-dessous. Ces branches sont là pour information et doivent être considérées comme obsolètes.

## Notes concernant l'installation et l'exécution d'un script Perl 6.

Pour exécuter un script _\*.p6_, il faut posséder le compilateur de **Rakudo** et passer la commande suivante :

`perl6 fichier.p6`

Si le fichier .p6 utilise des modules **\*.pm6** situés dans le même dossier, celui-ci devra être exécuté ainsi :

`perl6 -I . fichier.p6`

ou bien en ajoutant le dossier courant (_indiqué par le point_) à la variable d'environnement PERL6LIB ainsi :

`PERL6LIB=.`

et si plusieurs chemins sont ajoutés à cette variable, ils devront être séparés par une virgule :

`PERL6LIB=/chemin/vers/dossier1,/chemin/vers/dossier2`

De cette manière on peut utiliser simplement :

`perl6 fichier.p6`

La variable d'environnement PERL6LIB devra être renseignée avec l'ensemble des chemins relatifs suivants afin que tous les modules puissent être appelées depuis les exécutables :

`PERL6LIB=.,./modules/pm6,../../modules/pm6,../../../../../modules/pm6`

Il est aussi nécessaire --en fait **indispensable**-- de renseigner la variable d'environnement ALGOMATHS en lui donnant pour valeur le chemin complet du dossier où est installé le répertoire **'algomaths'** (par défaut dans /HOME/User/algomaths).

Vous avez ainsi accès à plusieurs niveaux d'exécution des scripts \*.p6, c'est-à-dire soit depuis le script d'exécution
principal qui devra se trouver dans le PATH afin de pouvoir l'appeler de n'importe quel endroit :

**'algomathsN.p6'**
(où N est le numéro du cycle de cours, pour le moment seul le cycle 1 est disponible).

Vous pouvez aussi exécuter le programme en exécutant le script **'MAIN.p6'** qui se trouve dans le dossier `'algomaths/maths/cycle1'`,
ou encore en exécutant le script **'init.p6'** qui se trouve dans chacun des dossiers de cours **'bbw'**, **'fm3'** et **'ms3'**;
et enfin vous pourrez vous placer dans le dossier spécifique à chacun des chapitres du cours, dans le dossier

`algomaths/maths/cycleN/<cours bbw, fm3 ou ms3>/<chapitre>/Perl6`

La méthode qui utilise **'algomathN.p6'** est conseillée car elle enregistre des informations supplémentaires comme les _statistiques d'exécution_ dans le dossier 'stats' du cours.

La manière de configurer une variable d'environnement dépendant du système, reportez-vous à la documentation correspondante pour votre système d'exploitation.
Les utilisateurs de Linux peuvent simplement exécuter un script en donnant son nom :

`./script.p6`

puisque les fichiers commencent par une ligne de commentaire spéciale
destinée à indiquer le compilateur utilisé :

`#!/usr/bin/env perl6`


Algorithms of mathematics

Pour exécuter un script *.p6, il faut posséder le compilateur de 
Rakudo et passer la commande suivante : 

perl6 fichier.p6.

Si le fichier .p6 utilise des modules *.pm6 situés dans le même 
dossier, celui-ci devra être exécuté ainsi : 

perl6 -I . fichier.p6,

ou bien en ajoutant le dossier courant (indiqué par le point) à la 
variable d'environnement PERL6LIB ainsi : 

PERL6LIB=.

et si plusieurs chemins sont ajoutés à cette variable, ils devront 
être séparés par une virgule : 

PERL6LIB=/chemin/vers/dossier1,/chemin/vers/dossier2.

Ici, il faut rajouter le dossier réservé aux modules : 

PERL6LIB=.,../../../../modules/pm6.

De cette manière on peut utiliser simplement 

perl6 fichier.p6.

La manière de configurer une variable d'environnement dépendant 
du système, reportez-vous à la documentation correspondante pour 
votre système d'exploitation.

Les utilisateurs de Linux peuvent simplement exécuter un script en 
donnant son nom : 

./script.p6 

puisque les fichiers commencent par une ligne de commentaire 
spéciale destinée à indiquer le compilateur utilisé : 

 #!/usr/bin/env perl6.

