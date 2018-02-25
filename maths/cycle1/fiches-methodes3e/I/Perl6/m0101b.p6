use corrective;
use method01 :methodwording, :exe01;

sub answering {
    say "Existe-t-il un entier q tel que 180 = 15q ?";
    my Int $integer = 180;
    my Int $divisor = 15;
    my Real $q = $integer / $divisor;
    if ($integer % $divisor == 0) {
        say "$integer est divisible par $divisor :";
        say "il existe un entier q tel que $divisor × q = $integer : $q.";
    } else {
        say "$integer n'est pas le produit de $divisor par un entier q.";
    }

    say "";
    say "Existe-t-il un entier q tel que 260 = 15q ?";
    $integer = 260;
    $q = $integer / $divisor;
    my Int $m = $divisor * $q.round;
    my Int $n = $divisor * ($q.round + 1);
    if ($integer % $divisor == 0) {
        say "$integer est divisible par $divisor :";
        say "il existe un entier q tel que $divisor × $q = $integer : $q.";
    } else {
        say "$integer n'est pas le produit de $divisor par un entier q :";
        say "$integer ÷ $divisor = $q";
        say "$divisor × ", $q.round, " = $m";
        say "$divisor × ", $q.round+1, " = $n";
        say "or $m < $integer < $n";
        say "et comme ", $q.round, " et ", $q.round+1, " sont deux entiers consécutifs,";
        say "alors il n'existe pas d'entier q tel que $integer = $divisor × q.";
    }
}  

exercise_01();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method;
}
do-put-up-correct-version();
answering();
