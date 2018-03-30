use corrective;
use method07 :methodwording, :exe12;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 1122,
        integer2 => 1815,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_12();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

