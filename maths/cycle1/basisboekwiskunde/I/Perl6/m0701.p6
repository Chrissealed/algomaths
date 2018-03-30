use corrective;
use method07 :methodwording, :exe01;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 12,
        integer2 => 30,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_01();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

