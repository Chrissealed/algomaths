use corrective;
use method06 :methodwording, :exe04;
use pgcd :subtractalgo;

sub answering {
    my $pgcd = PGCD.new(
        array-or-hash => '@',
        integer1 => 4092,
        integer2 => 1705,
    );
    $pgcd.subtraction_algorithm();
}

exercise_04();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

