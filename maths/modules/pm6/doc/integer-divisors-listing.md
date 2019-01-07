NAME
====

**IntegerDivisorsListing** : **algomaths** Perl 6 module in /maths/modules/pm6/**integer-divisors-listing.pm6**

AUTHOR
======

https://github.com/Chrissealed/algomaths.git

VERSION
=======

2019.01.06

for=head1 Cette classe est destinée à établir la liste des diviseurs d'un entier relatif non nul.

Elle contient une méthode publique : **list-divisors(Int $integer where \{$integer != 0\})** et une méthode privée destinée à l'affichage d'informations. Elle dispose du rôle **UsualDivisibilityCriteria** pour calculer la divisibilité des nombres 2, 3, 4, 5, 9, (10, 100, 1000, etc.), 11 et 25 en utilisant les critères de divisibilité les plus usuels (voir la doc du module **usual-divisibility-criteria.pm6**). Pour les autres nombres, elle utilise l'opérateur **modulo** (mod) ou %% (critère de divisibilité).

Contrairement au module **integer-divisors-listing-array.pm6** implémenté par l'emploi de tableaux, et qui renvoie systématiquement un tableau, celui-ci est implémenté par l'emploi de hash et renvoie soit un hash, soit un tableau de Int, selon la valeur de l'attribut **Str $array-or-hash** qui peut prendre l'une des valeurs suivantes : '@' ou 'array' pour renvoyer un tableau de Int ou bien '%' ou 'hash' pour renvoyer un hash de Int (%h.keys : Int et %h.values : Int). Par défaut un array est retourné. 

*Remarque* : il existe aussi un module **integer-divisors-listing-hash.pm6** qui est implémenté par l'emploi de hash et qui renvoie systématiquement un hash.

L'autre attribut requis cette fois et en lecture écriture est un objet de type **Teeput::Tput**. Consultez la doc du module **teeput.pm6** pour plus de détails.

