use corrective;
use method06 :methodwording, :exe03;
use pgcd :subtractalgo;

sub answering {
    my $pgcd = PGCD.new(
        array-or-hash => '@',
        integer1 => 2015,
        integer2 => 1789,
    );
    $pgcd.subtraction_algorithm();
}

exercise_03();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

