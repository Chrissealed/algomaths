NAME
====

class **IrreducibleFraction** in **algomaths** Perl6 modules : maths/modules/pm6/**irreducible-fraction.pm6**

AUTHOR
======

https://github.com/Chrissealed/algomaths.git

VERSION
=======

2018.12.16

L'objectif de ce module est de renvoyer la fraction irréductible de la fraction initiale
========================================================================================

dont on passe le numérateur et le dénominateur aux attributs *numerator* et *denominator*, le numérateur étant un entier relatif quelconque et le dénominateur un entier différent de 0.

Il y a un 3e champ facultatif **pgcd-algorithm** du type string (Str) qui permet de préciser l'argument de la méthode du module **are-prime.pm6** **have-common-divisor**(Str $pgcd-algorithm) qui sera utilisée pour effectuer les calculs en interne. 4 choix sont possibles, on a :

  * 1) 'euclide' ou 'e' ou ':' ou '÷' (par défaut);

  * 2) 'subtraction' ou 's' ou '-' ou '−';

  * 3) 'factorization' ou 'f' ou '*' ou '×';

  * 4) 'divisors-listing' ou 'd' ou '#' ou '/'.

La valeur par défaut de cet attribut est **euclide**.

La classe **IrreducibleFraction** utilise l'une des trois méthodes suivantes pour effectuer la réduction :

  * **reduce-fraction-with-euclide-algorithm(Str $sign = '')**,

  * **reduce-fraction-with-subtraction-algorithm(Str $sign = '')** et

  * **reduce-fraction-with-factorization-algorithm(Str $sign = '')**.

Elle affiche les informations selon la méthode utilisée et chaque méthode renvoie une **paire** (Pair) correspondant pour la clé de la paire au numérateur de la fraction réduite et pour sa valeur au dénominateur.

L'argument **$sign** de type string est destiné à gérer correctement les fractions dont le signe est négatif; il peut prendre la valeur '-'; le signe positif, lui, n'est pas affiché et donc sa valeur par défaut est '', une chaîne vide.

La classe possède en outre un attribut destiné à écrire dans un fichier les informations qui apparaissent à l'écran et qui décrivent les différentes étapes des opérations. Il s'agit de **Teeput::Tput $t is required is rw** : il faut lui passer un objet de type **Teeput::Tput** du module **teeput.pm6**. Référez-vous à la doc de ce module pour plus d'informations.

