use corrective;
use method05 :methodwording, :exe04;
use pgcd :subtractalgo;

sub answering {
    my $pgcd = PGCD.new(
        array-or-hash => '@',
        integer1 => 2072,
        integer2 => 370,
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

