use corrective;
use method06 :methodwording, :exe06;
use pgcd :subtractalgo;

sub answering {
    my $pgcd = PGCD.new(
        array-or-hash => '@',
        integer1 => 108_777,
        integer2 => 61_206,
    );
    $pgcd.subtraction_algorithm();
}

exercise_06();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

