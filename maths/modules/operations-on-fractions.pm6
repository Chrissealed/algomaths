unit module Operations-on-fractions;

use v6;

=begin pod
Ce module est destiné à faire des opérations sur des fractions.
Il utilise les modules 'ppcm.pm6' et 'irreducible-fraction.pm6'.
La première méthode de la classe 'OperationsOnFractions'
est 'add-up-or-subtract-fractions(Str $operation) ou le
paramètre '$operation' est soit 'add-up' ou '+'
soit 'subtract' ou '-'.
Elle renvoie une paire (Pair) comme valeur de retour.
Les champs obligatoires à renseigner sont 'nominator1',
'denominator1', 'nominator2' et 'denominator2'
correspondant aux numérateur et dénominateur de chaque
fraction sur laquelle pratiquer l'opération choisie.
Les autres champs, facultatifs, sont destinés à choisir
parmi les diverses méthodes utilisées pour le calcul
en interne :
=item 1) 'which-ppcm-algorithm' peut prendre l'une des valeurs suivantes :
- 'by-larger-number-multiples' ou '1';
- 'by-prime-factors' ou '2';
- 'by-use-of-pgcd' ou '3'.
=item 2) 'which-irreducible-fraction-algorithm' peut prendre les valeurs :
- 'euclide' ou '1';
- 'subtraction' ou '2';
- 'factorization' ou '3'.
=item 3) 'which-pgcd-algorithm' peut prendre l'une des valeurs :
- 'euclide' ou ':' ou '1';
- 'subtraction' ou '-' ou '2';
- 'factorization' ou '*' ou '3';
- 'divisors-listing' ou '#' ou '4'.
=end pod

use ppcm;
use irreducible-fraction;

class OperationsOnFractions is export {
    has Int $.nominator1 is required is rw where { $_ != 0 or die "Valeur de champ invalide! numérateur différent de 0 requis." }
    has Int $.denominator1 is required is rw where { $_ != 0 or die "Valeur de champ invalide! dénominateur différent de 0 requis." }
    has Int $.nominator2 is required is rw where { $_ != 0 or die "Valeur de champ invalide! numérateur différent de 0 requis." }
    has Int $.denominator2 is required is rw where { $_ != 0 or die "Valeur de champ invalide! dénominateur différent de 0 requis." }
    has Str $.which-ppcm-algorithm is rw where { ($_ ~~ / 'by-larger-number-multiples' || 1 || 'by-prime-factors' || 2 || 'by-use-of-pgcd' || 3 /) or
    die "Champ de classe invalide! Attendu 'by-larger-number-multiples' ou '1', ou 'by-prime-factors' ou '2', ou 'by-use-of-pgcd' ou '3'."; }
    = '3'; 
    has Str $.which-irreducible-fraction-algorithm is rw where { ($_ ~~ / 'euclide' || 1 || 'subtraction' || 2 || 'factorization' || 3 /) or
    die "Champ de classe invalide! Attendu 'euclide' ou '1', ou 'subtraction' ou '2', ou 'factorization' ou '3'."; }
    = '1';
    has Str $.which-pgcd-algorithm is rw where { $_ ~~ / euclide || ':' || 1 || subtraction || \-  || 2 || factorization || '*' || 3 || divisors\-listing || '#' || 4 / 
    or die "Valeur de champ invalide! Précisez 'euclide' ou ':' ou '1'; 'subtract' ou '-' ou '2'; 'factorization' ou '*' ou '3'; 'divisors-listing' ou '#' ou '4'"; }
    = 'euclide';
    
    method add-up-or-subtract-fractions(Str $operation --> Pair) {
        my Int $n1 = self.nominator1;
        my Int $d1 = self.denominator1;
        my Int $n2 = self.nominator2;
        my Int $d2 = self.denominator2;
        if (!$operation ~~ / add\-up || '+' || subtract || '-' || multiply || '*' || divide || ':' /) {
            die "Argument $operation invalide! L'un de ceux-ci est requis : 'add-up' ou '+'; 'subtract' ou '-'; 'multiply' ou '*'; 'divide' ou ':'";
        }

        say "On cherche le PPCM de $d1 et $d2 :";
        my Str $ppcm-algorithm = self.which-ppcm-algorithm;
        my Int $p = 0;
        if ($d1 == $d2) {
            $p = $d1;
        }
        else {
            my $ppcm = PPCM.new(
                integer1 => $d1,
                integer2 => $d2,
            );
            given $ppcm-algorithm {
                when / 1 || 'by-larger-number-multiples' / { $p = $ppcm.by-larger-number-multiples; }
                when / 2 || 'by-prime-factors' / { $p = $ppcm.by-prime-factors; }
                when / 3 || 'by-use-of-pgcd' / { $p = $ppcm.by-use-of-pgcd; }
                #default { $p = $ppcm.by-use-of-pgcd; }
            }
        }
        say();
        say "on réduit au même dénominateur :";
        my Int $multiple1 = 0;
        my Int $multiple2 = 0;
        if ($d1 == $d2) {
            given $operation {
                when / 'add-up' || '+' / { say "$n1/$d1 + $n2/$d2 = $n1+$n2/$d1;" }
                when / 'subtract' || '-' / { say "$n1/$d1 − $n2/$d2 = $n1 − $n2/$d1;" }
                when / 'multiply' || '*' / {}
                when / 'divide' || ':' / {}
                default { die "Argument $operation invalide! 'add-up' ou '+', 'subtract' ou '-', 'multiply' ou '*', 'divide' ou ':' requis." }
            }
        } else {
            $multiple1 = $p div $d1;
            $multiple2 = $p div $d2;
            given $operation {
                when / 'add-up' || '+' / { say "$n1/$d1 + $n2/$d2 = $n1×$multiple1/$d1×$multiple1 + $n2×$multiple2/$d2×$multiple2;" }
                when / 'subtract' || '-' / { say "$n1/$d1 − $n2/$d2 = $n1×$multiple1/$d1×$multiple1 − $n2×$multiple2/$d2×$multiple2;" }
                when / 'multiply' || '*' / {}
                when / 'divide' || ':' / {}
                default { die "Argument $operation invalide! 'add-up' ou '+', 'subtract' ou '-', 'multiply' ou '*', 'divide' ou ':' requis." }
            }
        }
        say();
        say "on effectue les calculs :";
        my Int $numerator1; my Int $numerator2;
        my Int $denominator1; my Int $denominator2;
        if ($d1 == $d2) {
            $numerator1 = $n1;
            $numerator2 = $n2;
            $denominator1 = $d1;
            $denominator2 = $d2;
        } else {
            $numerator1 = $n1 * $multiple1;
            $numerator2 = $n2 * $multiple2;
            $denominator1 = $d1 * $multiple1;
            $denominator2 = $d2 * $multiple2;
            given $operation {
                when / 'add-up' || '+' / { say "$n1/$d1 + $n2/$d2 = $numerator1/$denominator1 + $numerator2/$denominator2;" }
                when / 'subtract' || '-' / { say "$n1/$d1 − $n2/$d2 = $numerator1/$denominator1 − $numerator2/$denominator2;" }
                when / 'multiply' || '*' / {}
                when / 'divide' || ':' / {}
                default { die "Argument invalide! 'add-up' ou '+', 'subtract' ou '-', 'multiply ou '*'', 'divide' ou ':' requis." }
            }
        }
        say();
        my Int $numerator = 0;
        my Int $denominator = 0;
        given $operation {
            when / 'add-up' || '+' / {
                say "on ajoute les numérateurs et on garde le dénominateur commun :";
                $numerator = $numerator1 + $numerator2;
            }
            when / 'subtract' || '-' / {
                say "on soustrait les numérateurs et on garde le dénominateur commun :";
                $numerator = $numerator1 - $numerator2;
            }
            when / 'multiply' || '*' / {}
            when / 'divide' || ':' / {}
        }
        $denominator = $p;
        say "$numerator/$denominator.";
        say();
        my $irreducible = IrreducibleFraction.new(
            numerator => $numerator,
            denominator => $denominator,
            pgcd-algorithm => self.which-pgcd-algorithm,
        );
        my Pair $P;
        say "On simplifie la dernière fraction obtenue :";
        my Str $irreducible-fraction-algorithm = self.which-irreducible-fraction-algorithm;
        given $irreducible-fraction-algorithm {
            when /'1' || 'euclide'/ { $P = $irreducible.reduce-fraction-with-euclide-algorithm(); }
            when /'2' || 'subtraction'/ { $P = $irreducible.reduce-fraction-with-subtraction-algorithm(); }
            when /'3' || 'factorization'/ { $P = $irreducible.reduce-fraction-with-factorization-algorithm(); }
            #default { $P = $irreducible.reduce-fraction-with-euclide-algorithm(); }
        }
        return $P;
    }

    method subtract-fractions(--> Pair) {
        my Int $n1 = self.nominator1;
        my Int $d1 = self.denominator1;
        my Int $n2 = self.nominator2;
        my Int $d2 = self.denominator2;

        say "On cherche le PPCM de $d1 et $d2 :";
        my $ppcm = PPCM.new(
            integer1 => $d1,
            integer2 => $d2,
        );
        my Str $ppcm-method = self.which-ppcm-method;
        my Int $p;
        given $ppcm-method {
            when '1' || 'by-larger-number-multiples' { $p = $ppcm.by-larger-number-multiples; }
            when '2' || 'by-prime-factors' { $p = $ppcm.by-prime-factors; }
            when '3' || 'by-use-of-pgcd' { $p = $ppcm.by-use-of-pgcd; }
            default { $p = $ppcm.by-use-of-pgcd; }
        }
        say();
        say "on réduit au même dénominateur :";
        my Int $multiple1 = 0;
        my Int $multiple2 = 0;
        if ($d1 == $d2) {
            $multiple1 = $d1;
            $multiple2 = $d2;
            say "$n1/$d1 − $n2/$d2 = $n1 − $n2/$d1;";
        } else {
            $multiple1 = $p div $d1;
            $multiple2 = $p div $d2;
            say "$n1/$d1 − $n2/$d2 = $n1×$multiple1/$d1×$multiple1 − $n2×$multiple2/$d2×$multiple2;";
        }
        say();
        say "on effectue les calculs :";
        my Int $numerator1; my Int $numerator2;
        my Int $denominator1; my Int $denominator2;
        if ($d1 == $d2) {
            $numerator1 = $n1;
            $numerator2 = $n2;
            $denominator1 = $d1;
            $denominator2 = $d2;
        } else {
            $numerator1 = $n1 * $multiple1;
            $numerator2 = $n2 * $multiple2;
            $denominator1 = $d1 * $multiple1;
            $denominator2 = $d2 * $multiple2;
            say "$n1/$d1 + $n2/$d2 = $numerator1/$denominator1 + $numerator2/$denominator2;";
        }
        say();
        say "on soustrait les numérateurs et on garde le dénominateur commun :";
        my Int $numerator = $numerator1 - $numerator2;
        my Int $denominator = $p;
        say "$numerator/$denominator";
        say();
        my $irreducible = IrreducibleFraction.new(
            numerator => $numerator,
            denominator => $denominator,
        );
        my Pair $P;
        say "on simplifie la dernière fraction obtenue :";
        my Str $irreducible-fraction-method = self.which-irreducible-fraction-method;
        given $irreducible-fraction-method {
            when '1' || 'reduce-fraction-with-euclide-algorithm' { $P = $irreducible.reduce-fraction-with-euclide-algorithm(); }
            when '2' || 'reduce-fraction-with-subtraction-algorithm' { $P = $irreducible.reduce-fraction-with-subtraction-algorithm(); }
            when '3' || 'reduce-fraction-with-factorization-algorithm' { $P = $irreducible.reduce-fraction-with-factorization-algorithm(); }
            default { $P = $irreducible.reduce-fraction-with-euclide-algorithm(); }
        }
        return $P;
    }

}
