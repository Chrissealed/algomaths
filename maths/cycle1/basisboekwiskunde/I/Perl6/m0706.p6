use corrective;
use method07 :methodwording, :exe06;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 45,
        integer2 => 225,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_06();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

