use corrective;
use method07 :methodwording, :exe05;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 34,
        integer2 => 85,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_05();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

