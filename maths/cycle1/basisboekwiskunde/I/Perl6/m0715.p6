use corrective;
use method07 :methodwording, :exe15;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 1024,
        integer2 => 1152,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_15();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

