use corrective;
use method07 :methodwording, :exe18;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 875,
        integer2 => 900,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_18();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

