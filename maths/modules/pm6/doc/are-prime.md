NAME
====

class **ArePrime** in **algomaths** Perl6 modules : maths/modules/pm6/**are-prime.pm6**

AUTHOR
======

https://github.com/Chrissealed/algomaths.git

VERSION
=======

2018.12.16

Cette classe est destinée à savoir si deux entiers relatifs sont premiers entre eux
===================================================================================

c'est-à-dire qu'ils ne possèdent pas de diviseurs communs autre que 1.

La classe inclue le rôle **UsualDivisibilityCriteria** et intègre la méthode **list-divisors** de la classe **IntegerDivisorsListing** dans sa méthode 1 :

have-common-divisors(--> Bool: D)
---------------------------------

pour déterminer si deux nombres sont premiers entre eux cherchant les diviseurs communs en comparant les listes de diviseurs de chaque nombre.

Une deuxième méthode **have-common-divisor**(Str $pgcd-algorithm = 'euclide' --> Bool:D) (notez le _singulier_) utilise les méthodes du rôle inclus dans la classe **UsualDivisibilityCriteria** chargé de coder les critères usuels de divisibilité de deux nombres (cf. doc du module **usual-divisibility-criteria.pm6**) ainsi que la classe PGCD. Chaque méthode renvoie un booléen b<True> si les nombres sont premiers entre eux ou **False** dans le cas contraire.

La première méthode trouve tous les diviseurs communs tandis que la deuxième trouve seulement le premier diviseur commun : 1 si les nombres sont premiers entre eux ou un nombre supérieur à 1 s'ils ne le sont pas. La classe possède deux attributs requis : **integer1** et **integer2** qui doivent être des entiers différents de 0. Tous les champs sont en lecture et écriture.

La méthode 2 utilise un paramètre,

have-common-divisor(Str $pgcd-algorithm = 'euclide' --> Bool:D)
---------------------------------------------------------------

visant à spécifier quelle méthode de la classe PGCD sera utilisée pour rechercher un diviseur commun à partir du nombre 25 (c'est-à-dire au-delà des critères de divisibilité). Le paramètre peut prendre l'une des valeurs suivantes selon l'algorithme de recherche de PGCD que l'on souhaite appliquer, c'est à dire la méthode par divisions euclidiennes successives, ou la méthode par soustractions, ou celle par factorization ou encore celle par comparaison de la liste des diviseurs :

  * 1) 'euclide' ou 'e' ou ':' ou '÷' ou bien

  * 2) 'subtraction' ou 's' ou '-' ou '−' ou bien

  * 3) 'factorization' ou 'f' ou '*' ou '×' ou bien

  * 4) 'divisors-listing' ou 'd' ou '#' ou '/'. 

Par défaut la valeur de ce paramètre est 'euclide'.

La classe possède en outre un attribut requis destiné à écrire dans un fichier les informations qui apparaissent à l'écran et qui décrivent les différentes étapes des opérations. Il s'agit de **Teeput::Tput $t is required is rw** : il faut lui passer un objet de type **Teeput::Tput** du module **teeput.pm6**. Référez-vous à la doc de ce module pour plus d'informations.

