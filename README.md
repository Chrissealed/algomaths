* Algorithms of mathematics

Ce projet consiste à coder les méthodes mathématiques
depuis un niveau débutant afin d'apprendre à la fois
les mathématiques et la programmation.
Je me suis finalement tourné vers Perl 6 qui émergeait
au même moment et qui m'a paru correspondre le mieux
au codage des mathématiques et qui constitue le cœur
du projet du moins en l'état actuel des choses.
Chaque langage éventuel devrait avoir sa branche dédiée.
Par exemple j'ai essayé les langages Ruby, C, Pascal
qui ont chacun leur branche.

Pour exécuter un script *.p6, il faut posséder
le compilateur de Rakudo et passer la commande suivante :
perl6 fichier.p6.
Si le fichier .p6 utilise des modules *.pm6 situés
dans le même dossier, celui-ci devra être exécuté ainsi :
perl6 -I . fichier.p6, ou bien en ajoutant le dossier courant
(indiqué par le point) à la variable d'environnement
PERL6LIB ainsi : PERL6LIB=. et si plusieurs chemins
sont ajoutés à cette variable, ils devront être séparés
par une virgule : PERL6LIB=/chemin/vers/dossier1,/chemin/vers/dossier2.
De cette manière on peut utiliser simplement perl6 fichier.p6.
La manière de configurer une variable d'environnement
dépendant du système, reportez-vous à la documentation
correspondante pour votre système d'exploitation.

