unit module Operations-on-fractions;

use v6;

=begin pod
=NAME OperationsOnFractions.
=AUTHOR Christian Béloscar.
=VERSION 0.1.
=for head1
Ce module est destiné à faire des opérations sur des fractions.

Il utilise les modules 'ppcm.pm6' et 'irreducible-fraction.pm6'
et hérite du rôle 'PrimeFactors'.
La méthode principale de la classe 'OperationsOnFractions'
est 'calculate-fractions(Str $operation) ou le
=item paramètre '$operation' est soit 'add-up' ou '+'
soit 'subtract' ou '-' ou '−', soit 'multiply' ou '*' ou '×'
soit 'divide' ou ':' ou '÷',
dans le cas ou il n'y a que deux fractions.

Elle renvoie une paire (Pair) comme valeur de retour.
Les champs obligatoires à renseigner sont 'numerator1',
'denominator1', 'numerator2' et 'denominator2'
correspondant aux numérateur et dénominateur de chaque
fraction sur laquelle pratiquer l'opération choisie.

Les deux champs suivants sont facultatifs :
=item 'numerator3' et 'denominator3', pour lesquels
d'autres opérateurs sont disponibles, c'est-à-dire :
=item 'add-upx2' ou '++', 'subtractx2' ou '--' ou '−−',
'add-up-subtract' ou '+-' ou '+−', et enfin
'subtract-add-up' ou '-+' ou '−+'.

Ensuite, trois champs booléens facultatifs associés aux champs
'numerator/denominator' servent à préciser si l'on
effectue la réduction de la fraction en question
avant le traitement des données,
=item ce sont 'reduce-fraction1', 'reduce-fraction2'
et 'reduce-fraction3';

ces champs par défaut sont à False,
autrement dit on ne tente pas d'opérer une réduction de chaque fraction
avant d'effectuer l'opération.
Noter que la dernière fraction résultante de l'opération
est toujours donnée irréductible, mais qu'on peut jouer
sur deux autres attributs Booléens à True par défaut :
=item 'reduce-last-once', et 'reduce-last-one';

le premier visant à réduire une seule fois
la première fraction calculée dans une liste chaînée
d'opérations (par exemple : +−),
et le deuxième à réduire systématiquement la dernière
fraction obtenue à tous les niveaux de cette liste.
Ces attributs visent à modifier les opérations de calcul
de manière à produire plusieurs options pour générer
un même résultat.
Viennent ensuite deux autres champs facultatifs :
=item 'breakdown'factors' et 'compute'prime'factors'

(remarquez les séparateurs ' qui sont parfaitement valides);
le premier de ces champs est destiné à établir la liste
des facteurs premiers d'un entier différent de 0;
le deuxième permet de supprimer les facteurs en double
dans le numérateur et le dénominateur pour opérer la
réduction de la fraction. Ces deux champs sont à True
par défaut.

Les autres champs, facultatifs, sont destinés à choisir
parmi les diverses méthodes utilisées pour le calcul
en interne :
=for item
'which-ppcm-algorithm' peut prendre l'une des valeurs suivantes :
'by-larger-number-multiples' ou 'b.l.n.m.' ou 'bm';
'by-prime-factors' ou 'b.p.f.' ou 'bf';
'by-use-of-pgcd' ou 'b.u.o.p.' ou 'bp' (utilisé par défaut).
=for item
'which-irreducible-fraction-algorithm' peut prendre les valeurs :
'euclide' ou 'e' ou ':' ou '÷' (utilisé par défaut);
'subtraction' ou 's' ou '-' ou '−';
'factorization' ou 'f' ou '*' ou '×'.
=for item
'which-pgcd-algorithm' peut prendre l'une des valeurs :
'euclide' ou 'e' ou ':' ou '÷' (utilisé par défaut);
'subtraction' ou 's' ou '-' ou '−';
'factorization' ou 'f' ou '*' ou '×';
'divisors-listing' ou 'd' ou '#' ou '/'.
=end pod

use ppcm;
use irreducible-fraction;
use prime-factors;

class OperationsOnFractions does PrimeFactors is export {
    has Int $.numerator1 is required is rw where { $_ != 0 or die "Valeur de champ invalide! Numérateur différent de 0 requis." }
    has Int $.denominator1 is required is rw where { $_ != 0 or die "Valeur de champ invalide! Dénominateur différent de 0 requis." }
    has Bool $.reduce-fraction1 is rw = False;
    has Int $.numerator2 is required is rw where { $_ != 0 or die "Valeur de champ invalide! Numérateur différent de 0 requis." }
    has Int $.denominator2 is required is rw where { $_ != 0 or die "Valeur de champ invalide! Dénominateur différent de 0 requis." }
    has Bool $.reduce-fraction2 is rw = False;
    has Int $.numerator3 is rw where { $_ != 0 or die "Valeur de champ invalide! Numérateur différent de 0 requis." }
    has Int $.denominator3 is rw where { $_ != 0 or die "Valeur de champ invalide! Dénominateur différent de 0 requis." }
    has Bool $.reduce-fraction3 is rw = False;
    has Bool $.reduce-last-one is rw = True;
    has Bool $.reduce-last-once is rw = True;
    has Bool $.breakdown'factors is rw = True;
    has Bool $.compute'prime'factors is rw = True;
    has Str $.which-ppcm-algorithm is rw where { ($_ ~~ / 'by-larger-number-multiples' || 'b.l.n.m.' || 'bm' || 'by-prime-factors' || 'b.p.f.' || 'bf' || 'by-use-of-pgcd' || 'b.u.o.p.' || 'bp' /) or
    die "Champ de classe invalide! Attendu 'by-larger-number-multiples' ou 'b.l.n.m.' ou 'bm', ou 'by-prime-factors' ou 'b.p.f.' ou 'bf', ou 'by-use-of-pgcd' ou 'b.u.o.p.' ou 'bp'."; }
    = 'b.u.o.p.'; 
    has Str $.which-irreducible-fraction-algorithm is rw where { ($_ ~~ / 'euclide' || 'e' || ':' || '÷' || 'subtraction' || 's' || '-' || '−' || 'factorization' || 'f' || '*' || '×' /) or
    die "Champ de classe invalide! Attendu 'euclide' ou 'e' ou ':' ou '÷', ou 'subtraction' ou 's' ou '-' ou '−', ou 'factorization' ou  'f' ou '*' ou '×'."; }
    = '÷';
    has Str $.which-pgcd-algorithm is rw where { $_ ~~ / euclide || 'e' || ':' || '÷' || subtraction || 's' || \- || '−' || factorization || 'f' || '*' || '×' || divisors\-listing || 'd' || '#' || '/' / 
    or die "Valeur de champ invalide! Précisez 'euclide' ou 'e' ou ':' ou '÷'; 'subtraction' ou 's' ou '-' ou '−'; 'factorization' ou 'f' ou '*' ou '×'; 'divisors-listing' ou 'd' ou '#' ou '/'"; }
    = 'euclide';
    
=begin pod
=for head1
Voici la liste des méthodes de la classe OperationsOnFractions :
=for head2
reduce-fraction(Int $numerator, Int $denominator --> Pair)

Cette méthode destinée à obtenir la fraction irréductible
à partir du numérateur et du dénominateur passés en argument
utilise la classe IrreducibleFraction du module 'irreducible-fraction.pm6'
et utilse deux attributs de la classe, soit
'which-irreducible-fraction-algorithm' et 'which-pgcd-algorithm'
qui déterminent le choix pour le premier de l'algorithme
de la méthode utilisée en interne par IrreducibleFraction
pour effectuer les calculs, ainsi que l'algorithme
du module 'pgdc.pm6' dont IrreducibleFraction se servira en interne.
=end pod

    method reduce-fraction(Int $numerator, Int $denominator, Str $sign = '' --> Pair) {
        my Pair $P;
        my Str $irreducible-fraction-algorithm = self.which-irreducible-fraction-algorithm;
        my $irreducible = IrreducibleFraction.new(
            numerator => $numerator,
            denominator => $denominator,
            pgcd-algorithm => self.which-pgcd-algorithm,
        );
        given $irreducible-fraction-algorithm {
            when / 'e' || ':' || '÷' || 'euclide' / { $P = $irreducible.reduce-fraction-with-euclide-algorithm(); }
            when / 's' || '-' || '−' || 'subtraction' / { $P = $irreducible.reduce-fraction-with-subtraction-algorithm(); }
            when / 'f' || '*' || '×' || 'factorization' / { $P = $irreducible.reduce-fraction-with-factorization-algorithm($sign); }
            #default { $P = $irreducible.reduce-fraction-with-euclide-algorithm(); }
        }
        $P = Int($P.key) => $P.value;
        return $P;
    }

=begin pod
=for head2
add-up(Pair $pair1, Pair $pair2 --> Pair)

Cette méthode renvoie l'addition des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
'numerator1', 'denominator1' et 'numerator2' et 'denominator2'.
Elle utilise les modules 'ppcm.pm6' et 'pgcd.pm6',
ainsi que la méthode de la classe 'reduce-fraction($numerator, $denominator'). 
Elle renvoie une paire constituée du numérateur et du dénominateur
de la fraction résultante.
=end pod

    method add-up(Pair $pair1, Pair $pair2 --> Pair) {
        my Int $n1 = $pair1.key;
        my Int $n2 = $pair2.key;
        my Int $d1 = $pair1.value;
        my Int $d2 = $pair2.value;
        my Int $p = 0;
        my Int $numerator = 0;
        my Int $denominator = 0;
        my Int $multiple1 = 0;
        my Int $multiple2 = 0;
        my Pair $pair;
        say "On cherche le PPCM de $d1 et $d2 :";
        my Str $ppcm-algorithm = self.which-ppcm-algorithm;
        my Str $pgcd-algorithm = self.which-pgcd-algorithm;
        if ($d1 == $d2) {
            $numerator = $n1 + $n2;
            $denominator = $d1;
            put 'Les deux fractions ont même dénominateur donc :';
            say "$n1/$d1 + $n2/$d2 = $n1 + $n2/$denominator;";
            $pair = $numerator => $denominator;
            say();
            if ($!reduce-last-once || $!reduce-last-one) {
                say "On simplifie la dernière fraction obtenue :";
                $pair = self.reduce-fraction($numerator, $denominator);
            }
            return $pair;
        }
        else {
            my $ppcm = PPCM.new(
                integer1 => $d1,
                integer2 => $d2,
                which-pgcd-algorithm => $pgcd-algorithm,
            );
            given $ppcm-algorithm {
                when / 'b.l.n.m.' || 'bm' || 'by-larger-number-multiples' / { $p = $ppcm.by-larger-number-multiples; }
                when / 'b.p.f.' || 'bf' || 'by-prime-factors' / { $p = $ppcm.by-prime-factors; }
                when / 'b.u.o.p.' || 'bp' || 'by-use-of-pgcd' / { $p = $ppcm.by-use-of-pgcd; }
                #default { $p = $ppcm.by-use-of-pgcd; }
            }
            $multiple1 = $p div $d1;
            $multiple2 = $p div $d2;
            say "$n1/$d1 + $n2/$d2 = $n1×$multiple1/$d1×$multiple1 + $n2×$multiple2/$d2×$multiple2;";
        }
        say "on effectue les calculs :";
        my Int $numerator1 = $n1 * $multiple1;
        my Int $numerator2 = $n2 * $multiple2;
        my Int $denominator1 = $d1 * $multiple1;
        my Int $denominator2 = $d2 * $multiple2;
        say "$n1/$d1 + $n2/$d2 = $numerator1/$denominator1 + $numerator2/$denominator2;";
        say();
        put 'on ajoute les numérateurs et on garde le dénominateur commun :';
        $numerator = $numerator1 + $numerator2;
        $denominator = $p;
        say "$numerator/$denominator.";
        say();
        if ($!reduce-last-once || $!reduce-last-one) {
            say "On simplifie la dernière fraction obtenue :";
            $pair = self.reduce-fraction($numerator, $denominator);
        } else {
            $pair = $numerator => $denominator;
        }
        return $pair;
    }

=begin pod
=for head2
add-upx2(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair)

Cette méthode renvoie l'addition des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
'numerator1', 'denominator1', 'numerator2', 'denominator2'
et 'numerator3' et 'denominator3' pour calculer la somme
de trois fractions.
Elle utilise les modules 'ppcm.pm6' et 'pgcd.pm6',
ainsi que la méthode de la classe : 'reduce-fraction($numerator, $denominator'). 
Elle renvoie une paire constituée par le numérateur et le dénominateur
de la fraction résultante.
=end pod

    method add-upx2(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair) {
        my Pair $pair = self.add-up($pair1, $pair2);
        my Int $n1 = $pair.key;
        my Int $n2 = $pair3.key;
        my Int $d1 = $pair.value;
        my Int $d2 = $pair3.value;
        my Int $p = 0;
        my Int $numerator = 0;
        my Int $denominator = 0;
        my Int $multiple1 = 0;
        my Int $multiple2 = 0;
        say "On cherche le PPCM de $d1 et $d2 :";
        my Str $ppcm-algorithm = self.which-ppcm-algorithm;
        my Str $pgcd-algorithm = self.which-pgcd-algorithm;
        if ($d1 == $d2) {
            $numerator = $n1 + $n2;
            $denominator = $d1;
            put 'Les deux fractions ont même dénominateur donc :';
            say "$n1/$d1 + $n2/$d2 = $n1 + $n2/$denominator;";
            $pair = $numerator => $denominator;
            say "$numerator/$denominator.";
            say();
            if ($!reduce-last-one) {
                say "On simplifie la dernière fraction obtenue :";
                $pair = self.reduce-fraction($numerator, $denominator);
            }
            return $pair;
        }
        else {
            my $ppcm = PPCM.new(
                integer1 => $d1,
                integer2 => $d2,
                which-pgcd-algorithm => $pgcd-algorithm,
            );
            given $ppcm-algorithm {
                when / 'b.l.n.m.' || 'bm' || 'by-larger-number-multiples' / { $p = $ppcm.by-larger-number-multiples; }
                when / 'b.p.f.' || 'bf' || 'by-prime-factors' / { $p = $ppcm.by-prime-factors; }
                when / 'b.u.o.p.' || 'bp' || 'by-use-of-pgcd' / { $p = $ppcm.by-use-of-pgcd; }
                #default { $p = $ppcm.by-use-of-pgcd; }
            }
            $multiple1 = $p div $d1;
            $multiple2 = $p div $d2;
            say "$n1/$d1 + $n2/$d2 = $n1×$multiple1/$d1×$multiple1 + $n2×$multiple2/$d2×$multiple2;";
        }
        say "on effectue les calculs :";
        my Int $numerator1 = $n1 * $multiple1;
        my Int $numerator2 = $n2 * $multiple2;
        my Int $denominator1 = $d1 * $multiple1;
        my Int $denominator2 = $d2 * $multiple2;
        say "$n1/$d1 + $n2/$d2 = $numerator1/$denominator1 + $numerator2/$denominator2;";
        say();
        put 'on ajoute les numérateurs et on garde le dénominateur commun :';
        $numerator = $numerator1 + $numerator2;
        $denominator = $p;
        say "$numerator/$denominator.";
        say();
        if ($!reduce-last-once || $!reduce-last-one) {
            say "On simplifie la dernière fraction obtenue :";
            $pair = self.reduce-fraction($numerator, $denominator);
        } else {
            $pair = $numerator div $denominator;
        }
        return $pair;
    }

=begin pod
=for head2
subtract(Pair $pair1, Pair $pair2 --> Pair)

Cette méthode renvoie la soustraction des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
'numerator1', 'denominator1' et 'numerator2' et 'denominator2'.
Elle utilise les modules 'ppcm.pm6' et 'pgcd.pm6',
ainsi que la méthode de la classe 'reduce-fraction($numerator, $denominator'). 
Elle renvoie une paire constituée du numérateur et du dénominateur
de la fraction résultante.
=end pod

    method subtract(Pair $pair1, Pair $pair2 --> Pair) {
        my Int $n1 = $pair1.key;
        my Int $n2 = $pair2.key;
        my Int $d1 = $pair1.value;
        my Int $d2 = $pair2.value;
        my Int $p = 0;
        my Int $numerator = 0;
        my Int $denominator = 0;
        my Int $multiple1 = 0;
        my Int $multiple2 = 0;
        my Pair $pair;
        say "On cherche le PPCM de $d1 et $d2 :";
        my Str $ppcm-algorithm = self.which-ppcm-algorithm;
        my Str $pgcd-algorithm = self.which-pgcd-algorithm;
        if ($d1 == $d2) {
            $numerator = $n1 - $n2;
            $denominator = $d1;
            put 'Les deux fractions ont même dénominateur donc :';
            say "$n1/$d1 − $n2/$d2 = $n1 − $n2/$denominator;";
            $pair = $numerator => $denominator;
            say "$numerator/$denominator";
            say();
            if ($!reduce-last-one) {
                say "On simplifie la dernière fraction obtenue :";
                $pair = self.reduce-fraction($numerator, $denominator);
            }
            return $pair;
        }
        else {
            my $ppcm = PPCM.new(
                integer1 => $d1,
                integer2 => $d2,
                which-pgcd-algorithm => $pgcd-algorithm,
            );
            given $ppcm-algorithm {
                when / 'b.l.n.m.' || 'bm' || 'by-larger-number-multiples' / { $p = $ppcm.by-larger-number-multiples; }
                when / 'b.p.f.' || 'bf' || 'by-prime-factors' / { $p = $ppcm.by-prime-factors; }
                when / 'b.u.o.p.' || 'bp' || 'by-use-of-pgcd' / { $p = $ppcm.by-use-of-pgcd; }
                #default { $p = $ppcm.by-use-of-pgcd; }
            }
            $multiple1 = $p div $d1;
            $multiple2 = $p div $d2;
            say "$n1/$d1 − $n2/$d2 = $n1×$multiple1/$d1×$multiple1 − $n2×$multiple2/$d2×$multiple2;";
        }
        say "on effectue les calculs :";
        my Int $numerator1 = $n1 * $multiple1;
        my Int $numerator2 = $n2 * $multiple2;
        my Int $denominator1 = $d1 * $multiple1;
        my Int $denominator2 = $d2 * $multiple2;
        say "$n1/$d1 − $n2/$d2 = $numerator1/$denominator1 − $numerator2/$denominator2;";
        say();
        put 'on soustrait les numérateurs et on garde le dénominateur commun :';
        $numerator = $numerator1 − $numerator2;
        $denominator = $p;
        say "$numerator/$denominator.";
        say();
        if ($!reduce-last-one) {
            say "On simplifie la dernière fraction obtenue :";
            $pair = self.reduce-fraction($numerator, $denominator);
        }
        return $pair;
    }

=begin pod
=for head2
subtractx2(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair)

Cette méthode renvoie la soustraction des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
'numerator1', 'denominator1', 'numerator2', 'denominator2'
et 'numerator3' et 'denominator3' pour calculer la différence
de trois fractions.
Elle utilise les modules 'ppcm.pm6' et 'pgcd.pm6',
ainsi que la méthode de la classe : 'reduce-fraction($numerator, $denominator'). 
Elle renvoie une paire constituée par le numérateur et le dénominateur
de la fraction résultante.
=end pod

    method subtractx2(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair) {
        my Pair $pair = self.subtract($pair1, $pair2);
        my Int $n1 = $pair.key;
        my Int $n2 = $pair3.key;
        my Int $d1 = $pair.value;
        my Int $d2 = $pair3.value;
        my Int $p = 0;
        my Int $numerator = 0;
        my Int $denominator = 0;
        my Int $multiple1 = 0;
        my Int $multiple2 = 0;
        say "On cherche le PPCM de $d1 et $d2 :";
        my Str $ppcm-algorithm = self.which-ppcm-algorithm;
        my Str $pgcd-algorithm = self.which-pgcd-algorithm;
        if ($d1 == $d2) {
            $numerator = $n1 − $n2;
            $denominator = $d1;
            put 'Les deux fractions ont même dénominateur donc :';
            say "$n1/$d1 − $n2/$d2 = $n1 − $n2/$denominator;";
            $pair = $numerator => $denominator;
            say "$numerator/$denominator.";
            say();
            if ($!reduce-last-one || $!reduce-last-once) {
                say "On simplifie la dernière fraction obtenue :";
                $pair = self.reduce-fraction($numerator, $denominator);
            }
            return $pair;
        }
        else {
            my $ppcm = PPCM.new(
                integer1 => $d1,
                integer2 => $d2,
                which-pgcd-algorithm => $pgcd-algorithm,
            );
            given $ppcm-algorithm {
                when / 'b.l.n.m.' || 'bm' || 'by-larger-number-multiples' / { $p = $ppcm.by-larger-number-multiples; }
                when / 'b.p.f.' || 'bf' || 'by-prime-factors' / { $p = $ppcm.by-prime-factors; }
                when / 'b.u.o.p.' || 'bp' || 'by-use-of-pgcd' / { $p = $ppcm.by-use-of-pgcd; }
                #default { $p = $ppcm.by-use-of-pgcd; }
            }
            $multiple1 = $p div $d1;
            $multiple2 = $p div $d2;
            say "$n1/$d1 − $n2/$d2 = $n1×$multiple1/$d1×$multiple1 − $n2×$multiple2/$d2×$multiple2;";
        }
        say "on effectue les calculs :";
        my Int $numerator1 = $n1 * $multiple1;
        my Int $numerator2 = $n2 * $multiple2;
        my Int $denominator1 = $d1 * $multiple1;
        my Int $denominator2 = $d2 * $multiple2;
        say "$n1/$d1 − $n2/$d2 = $numerator1/$denominator1 − $numerator2/$denominator2;";
        say();
        put 'on ajoute les numérateurs et on garde le dénominateur commun :';
        $numerator = $numerator1 - $numerator2;
        $denominator = $p;
        say "$numerator/$denominator.";
        say();
        if ($!reduce-last-one || $!reduce-last-once) {
            say "On simplifie la dernière fraction obtenue :";
            $pair = self.reduce-fraction($numerator, $denominator);
        } else {
            $pair = $numerator div $denominator;
        }
        return $pair;
    }

=begin pod
=for head2
add-up-subtract(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair)

Cette méthode renvoie l'addition des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
'numerator1', 'denominator1', 'numerator2', 'denominator2'
et la soustraction des 'numerator3' et 'denominator3'
pour calculer la somme des deux premières fractions
et la différence du résultat et de la troisième fraction.
Elle utilise les modules 'ppcm.pm6' et 'pgcd.pm6',
ainsi que la méthode de la classe : 'reduce-fraction($numerator, $denominator'). 
Elle renvoie une paire constituée par le numérateur et le dénominateur
de la fraction résultante.
=end pod

    method add-up-subtract(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair) {
        my Pair $pair = self.add-up($pair1, $pair2);
        my Int $n1 = $pair.key;
        my Int $n2 = $pair3.key;
        my Int $d1 = $pair.value;
        my Int $d2 = $pair3.value;
        my Int $p = 0;
        my Int $numerator = 0;
        my Int $denominator = 0;
        my Int $multiple1 = 0;
        my Int $multiple2 = 0;
        say "On cherche le PPCM de $d1 et $d2 :";
        my Str $ppcm-algorithm = self.which-ppcm-algorithm;
        my Str $pgcd-algorithm = self.which-pgcd-algorithm;
        if ($d1 == $d2) {
            $numerator = $n1 − $n2;
            $denominator = $d1;
            put 'Les deux fractions ont même dénominateur donc :';
            say "$n1/$d1 − $n2/$d2 = $n1 − $n2/$denominator;";
            $pair = $numerator => $denominator;
            say "$numerator/$denominator.";
            say();
            if ($!reduce-last-one || $!reduce-last-once) {
                say "On simplifie la dernière fraction obtenue :";
                $pair = self.reduce-fraction($numerator, $denominator);
            }
            return $pair;
        }
        else {
            my $ppcm = PPCM.new(
                integer1 => $d1,
                integer2 => $d2,
                which-pgcd-algorithm => $pgcd-algorithm,
            );
            given $ppcm-algorithm {
                when / 'b.l.n.m.' || 'bm' || 'by-larger-number-multiples' / { $p = $ppcm.by-larger-number-multiples; }
                when / 'b.p.f.' || 'bf' || 'by-prime-factors' / { $p = $ppcm.by-prime-factors; }
                when / 'b.u.o.p.' || 'bp' || 'by-use-of-pgcd' / { $p = $ppcm.by-use-of-pgcd; }
                #default { $p = $ppcm.by-use-of-pgcd; }
            }
            $multiple1 = $p div $d1;
            $multiple2 = $p div $d2;
            say "$n1/$d1 − $n2/$d2 = $n1×$multiple1/$d1×$multiple1 − $n2×$multiple2/$d2×$multiple2;";
        }
        say "on effectue les calculs :";
        my Int $numerator1 = $n1 * $multiple1;
        my Int $numerator2 = $n2 * $multiple2;
        my Int $denominator1 = $d1 * $multiple1;
        my Int $denominator2 = $d2 * $multiple2;
        say "$n1/$d1 − $n2/$d2 = $numerator1/$denominator1 − $numerator2/$denominator2;";
        say();
        put 'on soustrait les numérateurs et on garde le dénominateur commun :';
        $numerator = $numerator1 - $numerator2;
        $denominator = $p;
        say "$numerator/$denominator.";
        say();
        if ($!reduce-last-one || $!reduce-last-once) {
            say "On simplifie la dernière fraction obtenue :";
            $pair = self.reduce-fraction($numerator, $denominator);
        } else {
            $pair = $numerator => $denominator;
        }
        return $pair;
    }

=begin pod
=for head2
subtract-add-up(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair)

Cette méthode est l'inverse de la précédente, c'est-à-dire qu'elle
renvoie la soustraction des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
'numerator1', 'denominator1', 'numerator2', 'denominator2'
pour calculer la différence des deux premières fractions
et la somme du résultat et de la troisième fraction.
Elle utilise les modules 'ppcm.pm6' et 'pgcd.pm6',
ainsi que la méthode de la classe : 'reduce-fraction($numerator, $denominator'). 
Elle renvoie une paire constituée par le numérateur et le dénominateur
de la fraction résultante.
=end pod

    method subtract-add-up(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair) {
        my Pair $pair = self.subtract($pair1, $pair2);
        my Int $n1 = $pair.key;
        my Int $n2 = $pair3.key;
        my Int $d1 = $pair.value;
        my Int $d2 = $pair3.value;
        my Int $p = 0;
        my Int $numerator = 0;
        my Int $denominator = 0;
        my Int $multiple1 = 0;
        my Int $multiple2 = 0;
        say "On cherche le PPCM de $d1 et $d2 :";
        my Str $ppcm-algorithm = self.which-ppcm-algorithm;
        my Str $pgcd-algorithm = self.which-pgcd-algorithm;
        if ($d1 == $d2) {
            $numerator = $n1 + $n2;
            $denominator = $d1;
            put 'Les deux fractions ont même dénominateur donc :';
            say "$n1/$d1 + $n2/$d2 = $n1 + $n2/$denominator;";
            $pair = $numerator => $denominator;
            say "$numerator/$denominator.";
            say();
            if ($!reduce-last-one || $!reduce-last-once) {
                say "On simplifie la dernière fraction obtenue :";
                $pair = self.reduce-fraction($numerator, $denominator);
            }
            return $pair;
        }
        else {
            my $ppcm = PPCM.new(
                integer1 => $d1,
                integer2 => $d2,
                which-pgcd-algorithm => $pgcd-algorithm,
            );
            given $ppcm-algorithm {
                when / 'b.l.n.m.' || 'bm' || 'by-larger-number-multiples' / { $p = $ppcm.by-larger-number-multiples; }
                when / 'b.p.f.' || 'bf' || 'by-prime-factors' / { $p = $ppcm.by-prime-factors; }
                when / 'b.u.o.p.' || 'bp' || 'by-use-of-pgcd' / { $p = $ppcm.by-use-of-pgcd; }
                #default { $p = $ppcm.by-use-of-pgcd; }
            }
            $multiple1 = $p div $d1;
            $multiple2 = $p div $d2;
            say "$n1/$d1 + $n2/$d2 = $n1×$multiple1/$d1×$multiple1 + $n2×$multiple2/$d2×$multiple2;";
        }
        say "on effectue les calculs :";
        my Int $numerator1 = $n1 * $multiple1;
        my Int $numerator2 = $n2 * $multiple2;
        my Int $denominator1 = $d1 * $multiple1;
        my Int $denominator2 = $d2 * $multiple2;
        say "$n1/$d1 + $n2/$d2 = $numerator1/$denominator1 + $numerator2/$denominator2;";
        say();
        put 'on ajoute les numérateurs et on garde le dénominateur commun :';
        $numerator = $numerator1 + $numerator2;
        $denominator = $p;
        say "$numerator/$denominator.";
        say();
        if ($!reduce-last-one || $!reduce-last-once) {
            say "On simplifie la dernière fraction obtenue :";
            $pair = self.reduce-fraction($numerator, $denominator);
        } else {
            $pair = $numerator div $denominator;
        }
        return $pair;
    }

=begin pod
=for head2
breakdown-factors(Int @array-of-factors --> Array)

Cette méthode décompose un tableau de facteurs en facteurs premiers.
Elle utilise la méthode 'breakdown' du rôle PrimeFactors.
Consultez la documentation du module 'prime-factors.pm6'
pour plus d'informations.
=end pod

    method breakdown-factors(Int @array-of-factors --> Array) {
        my %hash1{Int};
        my %hash2{Int};
        my %hash3{Int};
        my Int @array;
        # Méthode du rôle PrimeFactors
        say "Facteurs premiers de @array-of-factors[0] :";
        %hash1 = self.breakdown(@array-of-factors[0]);
        push @array, |%hash1.values;
        say "Facteurs premiers de @array-of-factors[1] :";
        %hash2 = self.breakdown(@array-of-factors[1]);
        push @array, |%hash2.values;
        if defined(@array-of-factors[2]) {
            say "Facteurs premiers de @array-of-factors[2] :";
            %hash3 = self.breakdown(@array-of-factors[2]);
            push @array, |%hash3.values;
        }
        @array = @array.sort;
        say "Facteurs premiers obtenus pour @array-of-factors[] : @array[];";
        say();
        return @array;
    }

=begin pod
=for head2
compute-prime-factors(Int @array1, Int @array2, Int $return-array = 1 --> Array)

Cette méthode elle aussi appelle une méthode de PrimeFactors :
'reduce-fractions-prime-factors(Int @numerators, Int @denominators, Int $return-array)'
Elle consiste à produire les facteurs qui sont dans l'un des tableaux
mais pas dans l'autre. Il faut passer l'argument 1 (par défaut) à $return-array
pour retourner le premier tableau, c'est-à-dire les numérateurs
ou 2 pour retourner le deuxième tableau, celui des dénominateurs.
Consultez aussi la documentation du module 'prime-factors.pm6'.
=end pod

    method compute-prime-factors(Int @array1, Int @array2, Int $return-array = 1 --> Array) {
        given $return-array {
            when 1 {
                say "Réduction des facteurs du numérateur :";
                # Méthode du rôle PrimeFactors
                my Int @n = self.reduce-fractions-prime-factors(@array1, @array2, 1);
                say "facteurs réduits résultants de @array1[] : @n[].";
                return @n;
            }
            when 2 {
                say "Réduction des facteurs du dénominateur :";
                my Int @d = self.reduce-fractions-prime-factors(@array1, @array2, 2);
                say "facteurs réduits résultants de @array2[] : @d[].";
                return @d;
            }
        }
    }

=begin pod
=for head2
fractions-product-sign(Pair $p1, Pair $p2, Pair $p3? --> Str)

Cette méthode est utilisée pour déduire le signe du résultat
du produit des fractions passées en arguments
avant d'effectuer les calculs.
Elle retourne '+' ou '−'.
=end pod

    method fractions-product-sign(Pair $p1, Pair $p2, Pair $p3? --> Str) {
        my Int $n1 = $p1.key;
        my Int $n2 = $p2.key;
        my Int $d1 = $p1.value;
        my Int $d2 = $p2.value;
        my Int $n3;
        my Int $d3;
        if defined($p3) {
            $n3 = $p3.key;
            $d3 = $p3.value;
        }
        my $product-n = $p1.key * $p2.key;
        my $product-d = $p1.value * $p2.value;
        if defined($n3) && defined($d3) {
            $product-n *= $p3.key;
            $product-d *= $p3.value;
        }
        my $sign = '';
        if ($product-n > 0 && $product-d > 0) {
            $sign = '+';
        }
        elsif ($product-n < 0 && $product-d < 0) {
            $sign = '+';
        }
        elsif ($product-n > 0 && $product-d < 0) {
            $sign = '−'
        }
        elsif ($product-n < 0 && $product-d > 0) {
            $sign = '−'
        }
        return $sign;
    }

=begin pod
=for head2
multiply(Pair $pair1, Pair $pair2, Pair $pair3? --> Pair) 

Cette méthode est utilisée pour multiplier deux ou trois
fractions données en arguments sous forme de paires
numérateur => dénominateur.
Elle renvoie une nouvelle paire en valeur de retour.
=end pod

    method multiply(Pair $pair1, Pair $pair2, Pair $pair3? --> Pair) {
        my Int $n1 = $pair1.key;
        my Int $n2 = $pair2.key;
        my Int $d1 = $pair1.value;
        my Int $d2 = $pair2.value;
        #my Int $n3 = 0;
        my Int $n3;
        #my Int $d3 = 0;
        my Int $d3;
        #if defined($pair3.key) && defined($pair3.value) {
        if defined($pair3) {
            $n3 = $pair3.key;
            $d3 = $pair3.value;
        }
        my Pair $P1 = $n1 => $d1;
        my Pair $P2 = $n2 => $d2;
        my Pair $P3;
        my Str $sign = '';
        if defined($pair3) {
            $P3 = $n3 => $d3;
            $sign = self.fractions-product-sign($P1, $P2, $P3);
        } else {
            $sign = self.fractions-product-sign($P1, $P2);
        }
        print "Signe du produit de {$P1.key}/{$P1.value} par {$P2.key}/{$P2.value} : ";
        given $sign {
            when '+' {
                say "$sign.";
                $sign = '';
            }
            when '−' {
                say "$sign.";
                $sign = '-';
            }
        }
        my Int @a = ();
        my Int @b = ();
        my Int @prime-factors1;
        my Int @prime-factors2;
        my Int $numerator = 0;
        my Int $denominator = 0;
        put 'On multiplie les numérateurs de chaque fraction puis les dénominateurs :';
        if (self.breakdown'factors) {
            push @a, $n1, $n2;
            push @b, $d1, $d2;
            if defined($n3) && defined($d3) {
                push @a, $n3;
                push @b, $d3;
            }
            @a = self.breakdown-factors(@a);
            @b = self.breakdown-factors(@b);
            if (self.compute'prime'factors) {
                @prime-factors1 = self.compute-prime-factors(@a, @b, 1);
                $numerator = [*] @prime-factors1;
                @prime-factors2 = self.compute-prime-factors(@a, @b, 2);
                $denominator = [*] @prime-factors2;
            }
        }
        else {
            push @a, $n1, $n2;
            if (defined($n3)) { push @a, $n3; };
            push @b, $d1, $d2;
            if (defined($d3)) { push @b, $d3; };
            $numerator = [*] @a;
            $denominator = [*] @b;
        }
        say "Fraction résultante : $sign$numerator/$denominator.";
        say();
        my Pair $P;
        if ($!reduce-last-one) {
            put 'On simplifie la dernière fraction obtenue :';
            $P = self.reduce-fraction($numerator, $denominator, $sign);
        } else {
            $P = Int($sign ~ $numerator) => $denominator;
        }
        return $P;
    }

    method divide(Pair $pair1, Pair $pair2 --> Pair) {

    }

    method calculate-fractions(Str $operation --> Pair) {
        my Int $n1 = $!numerator1;
        my Int $d1 = $!denominator1;
        my Int $n2 = $!numerator2;
        my Int $d2 = $!denominator2;
        my Int $n3 = $!numerator3 if defined(self.numerator3);
        my Int $d3 = $!denominator3 if defined(self.denominator3);
        my Pair $P1 = $n1 => $d1;
        my Pair $P2 = $n2 => $d2;
        my Pair $P3 = $n3 => $d3 if defined($!numerator3) && defined($!denominator3);
        my Pair $P4;

        if (self.reduce-fraction1 == True) {
            put 'On simplifie si possible la première fraction :';
            $P1 = self.reduce-fraction($n1, $d1);
            $n1 = Int($P1.key); $d1 = $P1.value;
            say "Fraction réduite : $n1/$d1.";
            say();
        }

        if (self.reduce-fraction2 == True) {
            put 'On simplifie si possible la deuxième fraction :';
            $P2 = self.reduce-fraction($n2, $d2);
            $n2 = Int($P2.key); $d2 = $P2.value;
            say "Fraction réduite : $n2/$d2.";
            say();
        }

        if (!defined($!numerator3) || !defined($!denominator3)) {
            given $operation {
               when / 'add-up' || '+' / { $P3 = self.add-up($P1, $P2); }
               when / 'subtract' || '-' || '−' / { $P3 = self.subtract($P1, $P2); }
               when / 'multiply' || '*' || '×' / { $P3 = self.multiply($P1, $P2); }
               when / 'divide' || ':' || '÷' / { $P3 = self.divide($P1, $P2); }
               default { say "Opération non définie pour deux opérateurs! 'add-up' ou '+', 'subtract' ou '-' ou '−', 'multiply' ou '*' ou '×', 'divide' ou ':' ou '÷' attendus." }
            } 
            return $P3;
        }

        if (defined($!numerator3) && defined($!denominator3)) {
            if (self.reduce-fraction3 == True) {
                put 'On simplifie si possible la troisième fraction :';
                $P3 = self.reduce-fraction($n3, $d3);
                $n3 = Int($P3.key); $d3 = $P3.value;
                say "Fraction réduite : $n3/$d3.";
            }
            say();
            given $operation {
                when / 'add-upx2' || '++' / { $P4 = self.add-upx2($P1, $P2, $P3); }
                when / 'add-up-subtract' || '+-' || '+−' / { $P4 = self.add-up-subtract($P1, $P2, $P3); }
                when / 'subtractx2' || '--' || '−−' / { $P4 = self.subtractx2($P1, $P2, $P3); }
                when / 'subtract-add-up' || '-+' || '−+' / { $P4 = self.subtract-add-up($P1, $P2, $P3); }
                when / 'multiplyx2' || '**' || '××' / { $P4 = self.multiply($P1, $P2, $P3); }
                default { say "Opération non définie pour trois opérateurs! 'add-upx2' ou '++', 'subtractx2' ou '--' ou '−−', 'multiplyx2' ou '**' ou '××', 'dividex2' ou '::' ou '÷÷' attendus." }
            }
            return $P4;
        }
    }

}
