#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe08, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0608.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: q:to/EOM/;

a. Le PGCD de 2691 et de 1035 est la dernière différence non nulle :
   PGCD(2691 ; 1035) = 207
b. La formule écrite par l'élève dans la cellule C2 pour obtenir le résultat
   indiqué dans cette cellule par le tableur est : =A2-B2.
c. La formule écrite par l'élève dans la cellule B3 pour obtenir le résultat
   indiqué dans cette cellule par le tableur est : =MIN(B2;C2).
EOM

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_08();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

