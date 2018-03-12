use corrective;
use method10 :methodwording, :exe16;

sub answering {
    say qq:to/EOM/;
On désigne par n un entier naturel, alors le nombre entier suivant est n + 1.
On a n + 1 = n × 1 + 1 donc PGCD(n+1 ; n) = PGCD(n ; 1) = 1
donc n et n + 1 sont des nombres premiers entre eux.
Deux nombres entiers consécutifs sont donc des nombres premiers entre eux.
EOM
}

exercise_16();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

