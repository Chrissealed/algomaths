use corrective;
use method05 :methodwording, :exe03;
use pgcd :subtractalgo;

sub answering {
    my $pgcd = PGCD.new(
        array-or-hash => '@',
        integer1 => 189,
        integer2 => 55,
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

