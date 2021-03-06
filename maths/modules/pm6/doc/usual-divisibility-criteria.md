NAME
====

rôle **UsualDivisibility-criteria** in **algomaths** Perl6 modules : maths/modules/pm6/**usual-divisibility-criteria.pm6**

AUTHOR
======

https://github.com/Chrissealed/algomaths.git

VERSION
=======

2018.12.16

Ce module est destiné à coder les critères de divisibilité usuels
=================================================================

des nombres pour lesquels ceux-ci existent : 2, 3, 4, 5, 9, (10, 100, 1000, etc.), 11 et 25.

Ceci permet d'éviter d'utiliser la méthode par modulo (mod ou %%) directement sur le nombre lui-même et ainsi d'accélérer le traitement. Il contient autant de méthodes de type **divisible_by_n**(Int:D $integer --> Bool:D) ou **n** est l'un des nombres ci-dessus, avec une variante : **divisible_by_0_queue**(Int:D $integer --> Bool:D) pour la série des multiples de 10 (finissant par une suite de 0). Chacune de ces méthodes renvoie **True** ou **False** selon que le nombre donné en argument est divisible ou pas par **n**.

Voici les critères de divisibilité courants employés ici :
==========================================================

  * Critère de divisibilité par 2, le chiffre des unités est : 0, 2, 4, 6 ou 8.

  * Critère de divisibilité par 3 : la somme des chiffres est divisible par 3.

  * Critère de divisibilité par 4 : le nombre formé par les deux chiffres de droite est divisible par 4.

  * Critère de divisibilité par 5 : le chiffre des unités est 0 ou 5.

  * Pas de critère de divisibilité particulier pour 6, 7 et 8

  * Critère de divisibilité par 9 : la somme des chiffres est divisible par 9.

  * Critère de divisibilité par 10, 100, 1000 etc. : le nombre se termine respectivement par 0, 00, 000, etc.

  * Critère de divisibilité par 11 : la différence entre la somme des chiffres de rang pair et celle des chiffres de rang impair est divisible par 11.

  * Critère de divisibilité par 25 : le nombre se termine par 00, 25, 50 ou 75.

