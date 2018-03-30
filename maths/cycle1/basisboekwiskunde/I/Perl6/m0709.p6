use corrective;
use method07 :methodwording, :exe09;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 243,
        integer2 => 135,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_09();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

