use corrective;
use method05 :methodwording, :exe01;
use pgcd :subtractalgo;

sub answering {
    my $pgcd = PGCD.new(
        array-or-hash => '@',
        integer1 => 1210,
        integer2 => 462,
    );
    $pgcd.subtraction_algorithm();
}

exercise_01();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

