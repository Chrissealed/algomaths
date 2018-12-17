NAME
====

class PGCD in **algomaths** Perl6 modules : maths/modules/pm6/pgcd.pm6

AUTHOR
======

https://github.com/Chrissealed/algomaths.git

VERSION
=======

2018.12.15

Ce module contient la classe PGCD qui dispose du rôle 'PrimeFactors'.
=====================================================================

Il est destiné à déterminer le PGCD (plus grand commun diviseur) de deux entiers, **integer1** et **integer2** de type **Int** non nuls qui sont des attributs requis de la classe. Il utilise pour cela quatre méthodes distinctes au choix :

  * l'algorithme consistant à établir la liste des diviseurs de chacun des nombres et de prendre le plus grand nombre commun : **divisors-listing_algorithm**(-->Int);

  * l'algorithme des soustractions : **subtraction_algorithm**(--> Int);

  * l'algorithme d'Euclide (par divisions euclidiennes) : **euclide_algorithm**(--> Int);

  * enfin l'algorithme consistant à décomposer les nombres en facteurs premiers et extraire leurs facteurs communs : **factorization_algorithm**(--> Int). Les quatre méthodes renvoient un **Int** qui est le PGCD trouvé.

La classe possède en outre un attribut requis hérité du rôle **PrimeFactors** destiné à écrire dans un fichier les informations qui apparaissent à l'écran et qui décrivent les différentes étapes des opérations. Il s'agit de **Teeput::Tput $t is required is rw** : il faut lui passer un objet de type **Teeput::Tput** du module **teeput.pm6**. Référez-vous à la doc de ce module pour plus d'informations.

Méthode divisors-listing-algorithm(--> Int) {}
----------------------------------------------

### Comment déterminer le PGCD de deux nombres entiers connaissant l'ensemble des diviseurs de chacun des deux nombres :

▲ on établit la liste des diviseurs communs des deux nombres;

▲ on repère dans cette liste le plus grand nombre, c'est le PGCD cherché.

Méthode factorization_algorithm(--> Int) {}
-------------------------------------------

### Comment déterminer le PGCD de deux nombres à l'aide de leur décomposition en facteurs premiers :

▲ Deux nombres peuvent avoir des facteurs en commun. Le plus grand commun diviseur (PGCD) est, comme son nom l'indique, leur plus grand facteur commun. Le PGCD se déduit directement des décompositions en facteurs premiers des deux nombres. Nous avons effectué les décompositions en facteurs premiers des nombres : 180 = 2² × 3² × 5; 585 = 3² × 5 × 13; 3003 = 3 × 7 × 11 × 13.

▲ De là, nous obtenons : PGCD(180;585) = PGCD(2² × 3² 5;3² × 5 × 13) = 3² × 5 = 45 PGCD(180;3003) = PGCD(2² × 3² × 5;3 × 7 × 11 × 13) = 3 PGCD(585;3003) = PGCD(3² × 5 × 13;3 × 7 × 11 × 13) = 3 × 13 = 39.

▲ UNE BONNE IDEE! : il existe une méthode pour déterminer le PGCD de deux nombres qui ne requiert pas leurs décompositions en facteurs premiers et qui souvent s'avère plus rapide. L'idée de base est que le PGCD de deux nombres est aussi forcément un diviseur de leur différence. Voyez-vous pourquoi il en est ainsi ?

▲ Le PGCD(4352 ; 4342) doit aussi être un facteur de 4352 – 4342 = 10. Or 10 n'a que deux facteurs premiers, 2 et 5. Il est clair que 5 n'est pas un facteur des deux nombres, par conséquent seul 2 l'est; d'ou PGCD(4352 ; 4342) = 2.

Méthode subtraction_algorithm(--> Int) {}
-----------------------------------------

### Pour déterminer le PGCD de deux nombres entiers par l'algorithme des soustractions :

▲ on calcule la différence des deux nombres;

▲ on garde le plus petit des deux nombres et la différence trouvée et on écrit que le PGCD cherché est leur PGCD;

▲ on recommence le même procédé avec les deux nouveaux nombres jusqu'à l'obtention de deux nombres égaux, le PGCD est égal à leur valeur. La méthode s'appuie sur les propriétés suivantes : a et b désignant deux entiers, si a = b, alors PGCD(a;b) = a = b et si a > b, PGCD(a;b) = PGCD(b;a-b).

Méthode euclide_algorithm(--> Int) {}
-------------------------------------

### Comment déterminer le PGCD de deux nombres entiers par l'algorithme d'Euclide ?

▲ on effectue la division euclidienne du plus grand nombre par le plus petit;

▲ on conserve le plus petit des deux nombres et le reste trouvé et on écrit que le PGCD cherché est leur PGCD;

▲ on continue ainsi jusqu'à l'obtention d'un reste nul, le PGCD est le dernier reste non nul. La méthode s'appuie sur la propriété suivante : a et b désignant deux entiers, si a > b, PGCD(a;b) = PGCD(b;r) où r est le reste de la division euclidienne de a par b.

