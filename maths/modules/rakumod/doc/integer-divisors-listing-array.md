NAME
====

**IntegerDivisorsListingA** : **algomaths** Perl 6 module in /maths/modules/pm6/**integer-divisors-listing.pm6**

AUTHOR
======

https://github.com/Chrissealed/algomaths.git

VERSION
=======

2019.01.06

Cette classe est destinée à établir la liste des diviseurs d'un entier naturel non nul.
=======================================================================================

Elle contient deux méthodes, l'une publique : **list-divisors**(Int $integer where \{$integer > 0\}) qui prend en argument un entier supérieur à 0 dont on souhaite établir la liste des diviseurs et renvoie un tableau des diviseurs trouvés, et l'autre privée destinée à l'affichage d'informations.

Elle utilise le module **usual-divisibility-criteria.pm6** pour calculer la divisibilité des nombres 2, 3, 4, 5, 9, (10, 100, 1000, etc.), 11 et 25 en utilisant les critères de divisibilité les plus usuels (voir la doc du fichier **usual-divisibility-criteria.pm6**). Pour les autres nombres, elle utilise l'opérateur **modulo** (mod) ou %%. Il existe deux autres modules implémentant l'algorithme de ce module avec un **Hash**. Le premier **integer-divisors-listing-hash.pm6** qui renvoie systématiquement une hash, et le second **integer-divisors-listing.pm6** qui renvoie au choix un hash ou un tableau.

Ce dernier peut dans tous les cas remplacer chacun des deux modules.

L'autre attribut requis cette fois et en lecture écriture est un objet de type **Teeput::Tput**. Consultez la doc du module **teeput.pm6** pour plus de détails.

