unit module Method02;

use v6;

sub put-up-method02 is export(:methodwording) {
    say q:to/EOM/;
II - MÉTHODES SUR LES PGCD -
###################################################################################
# Méthode 2. Comment déterminer le PGCD de deux nombres entiers par l'algorithme
# d'Euclide ?
###################################################################################
# ▲ Une division euclidienne est une division avec 'quotient' et 'reste' (ce n'est
# pas une division qui donne un chiffre à virgule!).
# On effectue plusieurs divisions successives jusqu'à ce que le reste soit nul.
# Le dernier reste non nul est le PGCD recherché :
# ▲ on effectue la division euclidienne du plus grand nombre par le plus petit;
# ▲ on conserve le plus petit des deux nombres et le reste trouvé et on écrit que
# le PGCD cherché est leur PGCD;
# ▲ on continue ainsi jusqu'à l'obtention d'un reste nul, le PGCD est le dernier
# reste non nul.
# La méthode s'appuie sur la propriété suivante : a et b désignant deux entiers,
# si a > b, PGCD(a;b) = PGCD(b;r) où r est le reste de la division euclidienne de
# a par b
###################################################################################

EOM
}

sub show-examples02 is export(:examples) {
    shell 'xdg-open ../examples02.pdf &';
}
