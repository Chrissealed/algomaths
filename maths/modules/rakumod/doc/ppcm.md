NAME
====

class PPCM in **algomaths** Perl6 modules : maths/modules/pm6/**ppcm.pm6**

AUTHOR
======

https://github.com/Chrissealed/algomaths.git

VERSION
=======

2018.12.16

Ce module contient une classe : PPCM qui dispose du rôle 'PrimeFactors' et qui utilise les classes ArePrime et PGCD.
====================================================================================================================

Cette classe comporte deux attributs requis : **integer1** et **integer2**, qui sont des entiers différents de 0 qui seront utilisés par les méthodes de la classe et un attribut facultatif de type **Str** qui peut prendre l'une des valeurs suivantes :

  * **euclide** ou **e** ou **:** ou **÷**;

  * **subtraction** ou **s** ou **-** ou **−**;

  * **factorization** ou **f** ou ***** ou **×** et

  * **divisors-listing** ou **d** ou **#** ou **/**.

Sa valeur par défaut est **euclide**; cet algorithme est utilisé par l'une des méthodes du module **prime-factors.pm6** :

  * **have-common-divisor($pgcd-algorithm)**.

La classe **PrimeFactors** contient trois méthodes distinctes pour calculer le PPCM (plus petit commun multiple) de deux entiers :

  * **by-larger-number-multiples**(--> Int) qui procède par additions du plus grand nombre et division du résultat par le plus petit nombre. Elle retourne le PPCM recherché qui est donc un entier.

  * **by-prime-factors**(--> Int) qui procède par décomposition des nombres en facteurs premiers et qui utilise pour cela la méthode **breakdown** du module **prime-factors** dont la classe a le rôle. Cette méthode dispose d'un tableau des facteurs extraits des deux nombres qu'elle multiplie pour obtenir le PPCM recherché et retourné.

  * **by-use-of-pgcd**(-->Int) qui comme son nom l'indique recherche d'abord le PGCD des deux entiers avant de diviser leur multiple par celui-ci, le résultat étant le PPCM recherché, c'est-à-dire un entier en valeur de retour comme l'indiquent les signatures de ces méthodes.

Le rôle **PrimeFactors** possède en outre un attribut requis destiné à écrire dans un fichier les informations qui apparaissent à l'écran et qui décrivent les différentes étapes des opérations. Il s'agit de **Teeput::Tput $t is required is rw** : il faut lui passer un objet de type **Teeput::Tput** du module **teeput.pm6**. Référez-vous à la doc de ce module pour plus d'informations.

