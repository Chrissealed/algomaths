use corrective;
use method10 :methodwording, :exe15;

sub answering {
    say qq:to/EOM/;
259 = 258 × 1 + 1 donc PGCD(259;258) = PGCD(258;1) = 1
donc 258 et 259 sont des nombres premiers entre eux.
EOM
}

exercise_15();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

