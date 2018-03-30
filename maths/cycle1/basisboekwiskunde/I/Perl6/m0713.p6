use corrective;
use method07 :methodwording, :exe13;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 875,
        integer2 => 1125,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_13();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

