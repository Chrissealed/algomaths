use corrective;
use method02 :methodwording, :exe04;

sub answering {
    my Int ($dividend, $divisor, $quotient, $remainder) = 0;
    say "a.";
    say "La première égalité ne traduit aucune division euclidienne";
    say "parce que le reste est supérieur au diviseur,";
    say "soit 21 > 18 et 21 > 15 mais cependant 18 × 15 + 21 = ", 18*15+21, ".";

    say "b.";
    say "Cette égalité ne traduit pas la division euclidienne de 102 par 6";
    say "car 6 est égal au diviseur et ne peut donc pas être le reste";
    say "d'une division euclidienne par 6.";
    say "Cependant cette égalité traduit la division euclidienne de 102 par 16 car";
    say "6 est inférieur à 16;";
    if (Int(102/16) == 6) {
        $dividend = 102; $divisor = 16; $quotient = 6; $remainder = 6;
        say "le dividende est $dividend, le diviseur $divisor, le quotient $quotient et le reste $remainder,";
        say "on vérifie que 16 × 6 + 6 = ", 16 * 6 + 6, ".";
    } else {
        say "L'égalité ne convient pas.";
    }

    say "c.";
    say "Cette égalité traduit la division euclidienne de 142 par 8 car";
    say "6 est inférieur à 8;";
    if (Int(142/17) == 8) {
        $dividend = 142; $divisor = 17; $quotient = 8; $remainder = 6;
        say "le dividende est $dividend, le diviseur $divisor, le quotient $quotient et le reste $remainder,";
        say "on vérifie que 8 × 17 + 6 = ", 8 * 17 + 6, ".";
    } else {
        say "L'égalité ne convient pas.";
    }
    say "Cette égalité traduit aussi la division euclidienne de 142 par 17 car";
    say "6 est inférieur à 17;";
    if (Int(142/8) == 17) {
        $dividend = 142; $divisor = 8; $quotient = 17; $remainder = 6;
        say "le dividende est $dividend, le diviseur $divisor, le quotient $quotient et le reste $remainder,";
        say "on vérifie que 17 × 8 + 6 = ", 17 * 8 + 6, ".";
    } else {
        say "L'égalité ne convient pas.";
    }
}

exercise_04();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

