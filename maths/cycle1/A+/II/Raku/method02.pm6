unit module Method02;

use v6;

=begin pod
=NAME B<Method02> : Perl 6 module in B<algomaths>/maths/cycle1/ms3/II/Perl6/B<method02.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.17
=end pod

use teeput;

class T does Teeput::Tput {}
my $t = T.new(
    writefile => True,
);
    
sub put-up-method02 is export(:methodwording) {
    my $message = q:to/EOM/;
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
    $t.filepath = 'output/method02.txt';
    $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
    $t.tput($message);
}

sub show-examples02 is export(:examples) {
    shell 'xdg-open ../examples02.pdf &';
}
