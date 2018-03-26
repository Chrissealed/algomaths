use corrective;
use method06 :methodwording, :exe08;

sub answering {
    say q:to/EOM/;

a. Le PGCD de 2691 et de 1035 est la dernière différence non nulle :
   PGCD(2691 ; 1035) = 207
b. La formule écrite par l'élève dans la cellule C2 pour obtenir le résultat
   indiqué dans cette cellule par le tableur est : =A2-B2.
c. La formule écrite par l'élève dans la cellule B3 pour obtenir le résultat
   indiqué dans cette cellule par le tableur est : =MIN(B2;C2).
EOM
}

exercise_08();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

