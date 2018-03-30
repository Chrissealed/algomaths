use corrective;
use method07 :methodwording, :exe08;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 90,
        integer2 => 196,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_08();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

