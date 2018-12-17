NAME
====

Perl 6 module **Corrective** in algomaths/maths/modules/pm6/**corrective.pm6**

AUTHOR
======

https://github.com/Chrissealed/algomaths.git

VERSION
=======

2018.12.16 

Ce module est utilisé dans chacun des fichiers *.p6.
====================================================

Pour demander s'il faut afficher la méthode de l'exercice avec **do-put-up-method**, des exemples avec **do-put-up-examples** et s'il faut afficher son corrigé avec **do-put-up-correct-version**. Les méthodes renvoient une valeur booléenne.

Par défaut la méthode de l'exercice est affichée, les exemples non. La dernière méthode ne renvoie rien, elle termine simplement le programme si la réponse à la question 'Afficher le corrigé ?' est non. Si la réponse est oui alors elle affiche une ligne vide qui séparera le corrigé de la question. Le corrigé est affiché par défaut, autrement dit si on tape **Return** ou **Entrée** par exemple, le corrigé est affiché.

Une méthode similaire à **do-put-up-method**(--> Bool) {} mais avec une autre signature (avec le mot clef multi) : **do-put-up-method**(Int:D $n --> Bool) {} possède un argument de type Int destiné à choisir quelle méthode doit être affichée dans le cas ou plusieurs sont disponibles pour le même exercice.

De même nous avons la méthode **multi sub do-put-up-examples**(Int:D $n --> Bool) {} pour laquelle le nombre $n indique le numéro de la méthode à afficher.

Une autre méthode **prompt-for-user-input**(Str:D $promptstr--> Int) {} est destinée à demander à l'utilisateur de saisir une valeur numérique correspondant au message affiché au **prompt** et retourne cette valeur convertie en Int.

