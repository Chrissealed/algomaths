use corrective;
use method07 :methodwording, :exe01;
use pgcd :euclidealgo;

sub answering {
    my $pgcd = PGCD.new(
        array-or-hash => '@',
        dividend => 780,
        divisor => 504,
    );
    $pgcd.euclide_algorithm();
}

exercise_01();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

