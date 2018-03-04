use corrective;
use method06 :methodwording, :exe01;
use pgcd :subtractalgo;

sub answering {
    my $pgcd = PGCD.new(
        array-or-hash => '@',
        integer1 => 1260,
        integer2 => 735,
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

