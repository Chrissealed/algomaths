use corrective;
use method06 :methodwording, :exe05;
use pgcd :subtractalgo;

sub answering {
    my $pgcd = PGCD.new(
        array-or-hash => '@',
        integer1 => 877,
        integer2 => 531,
    );
    $pgcd.subtraction_algorithm();
}

exercise_05();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

