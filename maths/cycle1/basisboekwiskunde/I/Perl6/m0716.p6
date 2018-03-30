use corrective;
use method07 :methodwording, :exe16;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 1243,
        integer2 => 1244,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_16();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

