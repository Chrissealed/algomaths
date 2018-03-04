use corrective;
use method05 :methodwording, :exe02;
use pgcd :subtractalgo;

sub answering {
    my $pgcd = PGCD.new(
        array-or-hash => '@',
        integer1 => 510,
        integer2 => 374,
    );
    $pgcd.subtraction_algorithm();
}

exercise_02();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();


