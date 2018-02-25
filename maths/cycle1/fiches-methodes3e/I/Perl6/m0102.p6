use corrective;
use method01 :methodwording, :exe02;

sub answering {
    my Int $q = Int(300 / 53);
    my Int $m = $q * 53;
    say "Le produit de $q par 53 = $m";
    say "Les multiples de 53 compris entre 300 et 500 sont :";
    loop {
        $q += 1;
        $m = $q * 53;
        last if $m >= 500;
        say "$q × 53 = $m";
    }
}

exercise_02();
my $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

