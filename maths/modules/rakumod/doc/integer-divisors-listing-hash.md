NAME
====

**IntegerDivisorsListingH** : **algomaths** Perl 6 module in /maths/modules/pm6/**integer-divisors-listing-hash.pm6**

AUTHOR
======

https://github.com/Chrissealed/algomaths.git

VERSION
=======

2019.01.06

Cette classe est destinée à établir la liste des diviseurs d'un entier naturel non nul.
=======================================================================================

Elle contient deux méthodes, l'une publique : **list-divisors(Int $integer where \{$integer != 0\})** et l'autre privée destinée à l'affichage d'informations. Elle utilise le module **usual-divisibility-criteria.pm6** pour calculer la divisibilité des nombres 2, 3, 4, 5, 9, (10, 100, 1000, etc.), 11 et 25 en utilisant les critères de divisibilité les plus usuels (voir la doc du fichier **usual-divisibility-criteria.pm6**).

Pour les autres nombres, elle utilise l'opérateur modulo (mod) ou %%. Contrairement au module du fichier **integer-divisors-listing-array.pm6** implémenté par l'emploi de tableau, et qui renvoie un tableau, celui-ci est implémenté par l'emploi de hash et renvoie un hash. Le module **integer-divisors-listing.pm6** permet quant à lui de renvoyer au choix un tableau ou un hash selon l'argument donné au constructeur (cf. doc du fichier **integer-divisors-listing.pm6**).

L'autre attribut requis cette fois et en lecture écriture est un objet de type **Teeput::Tput**. Consultez la doc du module **teeput.pm6** pour plus de détails.

