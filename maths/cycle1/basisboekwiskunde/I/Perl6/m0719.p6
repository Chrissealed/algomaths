use corrective;
use method07 :methodwording, :exe19;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 1960,
        integer2 => 5880,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_19();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

