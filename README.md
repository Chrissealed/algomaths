Algorithms of mathematics

Ce projet consiste à coder les méthodes mathématiques depuis un 
niveau débutant (collège) afin de combiner l'apprentissage des 
mathématiques et celui de la programmation.
Je me suis finalement tourné vers le langage Perl 6, qui émergeait 
au moment de la création du projet et qui m'a paru adapté au codage 
des mathématiques sans être un langage spécialisé dans ce domaine. 
Chaque langage éventuel devrait avoir sa branche dédiée. 
Par exemple j'ai essayé les langages Ruby, C, Pascal, Java qui ont 
chacun leur branche.

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

