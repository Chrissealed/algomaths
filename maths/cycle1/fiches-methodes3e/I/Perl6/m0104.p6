use corrective;
use method01 :methodwording, :exe04;

sub answering {
    my Int $q1 = 4;
    my Int $q2 = $q1 + 1;
    say "$q1 × n et $q2 × n sont deux multiples consécutifs de l'entier n.";
    say "Plus généralement, étant donné deux entiers non nuls q1 et q2";
    say "tels que q2 = q1 + 1, q1 × n et q2 × n sont deux multiples consécutifs de n.";
}

exercise_04();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

