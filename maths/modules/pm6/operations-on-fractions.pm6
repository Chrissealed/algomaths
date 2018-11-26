unit module Operations-on-fractions;

use v6;

=begin pod
=NAME OperationsOnFractions
=AUTHOR Christian Béloscar
=VERSION 0.1
=for head1
Ce module est destiné à faire des opérations sur des fractions.

Il utilise les modules B<ppcm.pm6>, B<irreducible-fraction.pm6>
et B<prime-factors.pm6>
et hérite du rôle B<PrimeFactors>.
La méthode principale de la classe B<OperationsOnFractions>
est B<calculate-fractions(Str $operation)> ou le
=item paramètre B<$operation> est soit 'add-up' ou '+' ou 'a'
soit 'subtract' ou '-' ou '−' ou 's', soit 'multiply' ou '*' ou '×' ou 'm'
soit 'divide' ou ':' ou '÷' ou 'd',
dans le cas ou il n'y a que deux fractions.

Elle renvoie une B<paire> (Pair) comme valeur de retour.
Les champs obligatoires à renseigner sont B<nudepair1>, et B<nudepair2>,
correspondant aux numérateur et dénominateur de chaque
fraction sur laquelle pratiquer l'opération choisie.

On peut justement se demander pourquoi l'implémentation des fractions
se fait par l'emploi du type B<Pair> plutôt que du type B<Rat> (nombre rationnel) 
et que l'objet renvoyé par B<calculate-fractions(Str $operation)>
est une paire et non une fraction.
Cette implémentation est en fait sujette à la multiplication
des options pour le calcul des fractions;
en effet les fractions littérales sont automatiquement réduites
à leur plus simple expression ce qui oblitère la possibilité
de choisir expressément la façon dont on veut effectuer les calculs.
En fournissant les données sous cette forme,
on a plus de contrôle sur le déroulement des calculs,
par exemple on a le choix de réduire ou pas les fractions
en entrée en fournissant une valeur True aux booléens
B<reduce-fractionN> (Voir ci-dessous).
De même on pourra choisir de livrer la dernière fraction
résultante sans la réduire systématiquement. (Voir plus bas).

Le champ suivant est facultatif :
=item B<nudepair3>, pour lequel
d'autres opérateurs sont disponibles pour l'B<addition>
et la B<soustraction> uniquement, c'est-à-dire :
=item 'add-upx2' ou '++' ou 'aa', 'subtractx2' ou '--' ou '−−' ou 'ss',
'add-up-subtract' ou '+-' ou '+−' ou 'as', et enfin
'subtract-add-up' ou '-+' ou '−+' ou 'sa'.

Ensuite, trois champs booléens facultatifs associés aux champs
B<nudepair1>, B<nudepair2> et B<nudepair3> servent à préciser si l'on
effectue la réduction de la fraction en question
avant le traitement des données,
=item ce sont B<reduce-fraction1>, B<reduce-fraction2>
et B<reduce-fraction3>;

ces champs par défaut sont à B<False>,
autrement dit on ne tente pas d'opérer une réduction de chaque fraction
avant d'effectuer l'opération.
Noter que la dernière fraction résultante de l'opération
est toujours donnée irréductible, mais qu'on peut jouer
sur deux autres attributs Booléens :
=item B<reduce-last-once> (B<False> par défaut), et
B<reduce-last-one> (B<True> par défaut);

le premier visant dans le cadre de l'addition ou de la soustraction
à réduire une seule fois
la première fraction au terme du calcul dans une liste chaînée
d'opérations (par exemple : +−),
et le deuxième à réduire systématiquement la dernière
fraction obtenue à tous les niveaux de cette liste
ou bien lors d'une opération simple (+ ou −).
Ces attributs visent à modifier les opérations de calcul
de manière à produire plusieurs options pour générer
un même résultat.

Trois autres attributs, complétant les deux précédants
peuvent être utilisés lors d'une opération de multiplication
ou de division, ce sont :
=item B<breakdown-factors1>, réduire les facteurs de la première fraction,
=item B<breakdown-factors2>, réduire les facteurs de la deuxième fraction,
=item B<breakdown-factors3>, réduire les facteurs de la troisième fraction facultative.

Ces trois attributs ont par défaut la valeur B<True>.

Viennent ensuite deux autres champs facultatifs
utilisables pour la multiplication ou la division de fractions uniquement
et qui jouent avec les trois attributs décrits précédemment :
=item B<breakdown'factors> et B<compute'prime'factors>

(remarquez les séparateurs ' qui sont parfaitement valides
et utilisés pour les distinguer des méthodes du même nom);
le premier de ces champs est destiné à établir la liste
des facteurs premiers d'un entier différent de 0;
il a par défaut la valeur B<True> et si un ou plus des trois
attributs précédents se voit donné la valeur B<False>,
la réduction de la fraction concernée n'aura pas lieu.
Autrement dit pour que cette réduction se produise,
il faut à la fois que ces deux attributs aient la valeur B<True>
ce qui est le cas par défaut.
Si vous passez la valeur B<False> a B<breakdown'factors>,
la réduction de toutes les fractions sera inhibée toutes ensemble.

Le deuxième attribut B<compute'prime'factors>
permet de supprimer les facteurs en double
dans le numérateur et le dénominateur pour opérer la
réduction de la fraction. Ces deux champs sont à B<True>
par défaut.

Les autres champs, facultatifs, sont destinés à choisir
parmi les diverses méthodes utilisées pour le calcul
des méthodes de classes appelées en interne :
=for item
B<which-ppcm-algorithm>, peut prendre l'une des valeurs suivantes :
=item 'by-larger-number-multiples' ou 'b.l.n.m.' ou 'by-m' ou 'bm';
=item 'by-prime-factors' ou 'b.p.f.' ou 'by-f' ou 'bf';
=item 'by-use-of-pgcd' ou 'b.u.o.p.' ou 'by-p' ou 'bp' (utilisé par défaut).

Ce dernier attribut n'est pas utilisé pour la multiplication ou la division,
mais uniquement pour l'addition ou la soustraction
afin de choisir l'algorithme qui sera utilisé pour le calcul
par la classe PPCM.
=for item
B<which-irreducible-fraction-algorithm> peut prendre les valeurs :
=item 'euclide' ou 'e' ou ':' ou '÷' (utilisé par défaut);
=item 'subtraction' ou 's' ou '-' ou '−';
=item 'factorization' ou 'f' ou '*' ou '×'.

Cet attribut est destiné à choisir la méthode qui sera utilisée
par la classe B<IrreducibleFraction> pour la réduction
d'une fraction à sa plus simple expression.
=for item
B<which-pgcd-algorithm> peut prendre l'une des valeurs :
=item 'euclide' ou 'e' ou ':' ou '÷' (utilisé par défaut);
=item 'subtraction' ou 's' ou '-' ou '−';
=item 'factorization' ou 'f' ou '*' ou '×';
=item 'divisors-listing' ou 'd' ou '#' ou '/'.

Cet attribut peut être employé pour toutes les opérations;
il détermine l'algorithme utilisé par la classe PGCD
pour le calcul du PPCM :
=end pod

use ppcm;
use irreducible-fraction;
use prime-factors;

class OperationsOnFractions does PrimeFactors is export {
    has Pair $.nudepair1 is required is rw where { $_.key.WHAT === (Int) && $_.value.WHAT === (Int) && $_.value != 0 or
    die "Valeur de champ invalide! Entier relatif et dénominateur différent de 0 requis." }
    has Bool $.reduce-fraction1 is rw = False;
    # Pour la multiplication ou la division
    has Bool $.breakdown-factors1 is rw = True;

    has Pair $.nudepair2 is required is rw where { $_.key.WHAT === (Int) && $_.value.WHAT === (Int) && $_.value != 0 or
    die "Valeur de champ invalide! Entier relatif et dénominateur différent de 0 requis." }
    has Bool $.reduce-fraction2 is rw = False;
    # Pour la multiplication ou la division
    has Bool $.breakdown-factors2 is rw = True;

    has Pair $.nudepair3 is rw where { $_.key.WHAT === (Int) && $_.value.WHAT === (Int) && $_.value != 0 or
    die "Valeur de champ invalide! Entier relatif et dénominateur différent de 0 requis." }
    has Bool $.reduce-fraction3 is rw = False;
    # Pour la multiplication ou la division
    has Bool $.breakdown-factors3 is rw = True;
    
    # Pour l'addition et la soustraction
    has Bool $.reduce-last-once is rw = False;
    # Pour toutes les opérations
    has Bool $.reduce-last-one is rw = True;
    # Pour la multiplication ou la division 
    has Bool $.breakdown'factors is rw = True;
    has Bool $.compute'prime'factors is rw = True;

    # Pour l'addition et la soustraction
    my $ppcm-algorithm-one-junction = 'by-larger-number-multiples' ^ 'b.l.n.m' ^ 'by-m' ^ 'bm' ^
                                      'by-prime-factors' ^ 'b.p.f.' ^ 'by-f' ^ 'bf' ^
                                      'by-use-of-pgcd' ^ 'b.u.o.p.' ^ 'by-p' ^ 'bp'; 
    has Str $.which-ppcm-algorithm is rw where { $_ ~~ $ppcm-algorithm-one-junction or
        die "Champ de classe invalide! Attendu\n
            'by-larger-number-multiples' ou 'b.l.n.m.' ou 'by-m' ou 'bm';\n
            'by-prime-factors' ou 'b.p.f.' ou 'by-f' ou 'bf';\n
            'by-use-of-pgcd' ou 'b.u.o.p.' ou 'by-p' ou 'bp'."; }
        = 'b.u.o.p.';
    # Aussi pour la multiplication et la division
    my $irreducible-fraction-algorithm-one-junction = 'euclide' ^ 'e' ^ ':' ^ '÷' ^
                                                      'subtraction' ^ 's' ^ '-' ^ '−' ^
                                                      'factorization' ^ 'f' ^ '*' ^ '×';
    has Str $.which-irreducible-fraction-algorithm is rw where { $_ ~~ $irreducible-fraction-algorithm-one-junction or
        die "Champ de classe invalide! Attendu\n
            'euclide' ou 'e' ou ':' ou '÷';\n
            'subtraction' ou 's' ou '-' ou '−';\n
            'factorization' ou 'f' ou '*' ou '×'."; }
        = '÷';
    my $pgcd-algorithm-one-junction = 'euclide' ^ 'e' ^ ':' ^ '÷' ^
                                      'subtraction' ^ 's' ^ '-' ^ '−' ^
                                      'factorization' ^ 'f' ^ '*' ^ '×' ^
                                      'divisors-listing' ^ 'd' ^ '#' ^ '/';
    has Str $.which-pgcd-algorithm is rw where { $_ ~~ $pgcd-algorithm-one-junction or
        die "Champ de classe invalide! Attendu\n
            'euclide' ou 'e' ou ':' ou '÷'\n
            'subtraction' ou 's' ou '-' ou '−'\n
            'factorization' ou 'f' ou '*' ou '×'\n
            'divisors-listing' ou 'd' ou '#' ou '/'."; }
        = '÷';
    
=begin pod
=for head1
Voici la liste des méthodes de la classe OperationsOnFractions :
=for head2
calculate-fractions(Str $operation --> Pair) {}

Cette méthode est la principale de la classe,
qui donne accès à toutes les autres méthodes
− bien que celles-là ne soient pas privées et sont
donc accessibles isolément −
en employant un seul argument, le type d'opération
à effectuer. (Voir plus haut)
=for head2
reduce-fraction(Int $numerator, Int $denominator, Str $sign = '' --> Pair) {}

Cette méthode destinée à obtenir la fraction irréductible
à partir du numérateur et du dénominateur passés en argument
utilise la classe B<IrreducibleFraction> du module B<irreducible-fraction.pm6>
et utilise deux attributs de la classe, soit
B<which-irreducible-fraction-algorithm> et B<which-pgcd-algorithm>
qui déterminent le choix pour le premier de l'algorithme
de la méthode utilisée en interne par B<IrreducibleFraction>
pour effectuer les calculs, et pour le deuxième l'algorithme
du module B<pgdc.pm6> dont B<IrreducibleFraction> se servira en interne.
Pour gérer correctement les nombres négatifs avec l'opération B<multiply> uniquement,
il faut mettre le troisième argument B<$sign> à '-' afin d'appeler l'une des méthodes
=item B<reduce-fraction-with-euclide-algorithm($sign)>;
=item B<reduce-fraction-with-subtraction-algorithm($sign)>
=item B<reduce-fraction-with-factorization-algorithm($sign)>;
Le signe + n'est pas écrit, il est géré par la valeur par défaut de B<$sign>,
une chaîne vide.
=end pod

    method reduce-fraction(Int $numerator, Int $denominator, Str $sign = '' --> Pair) {
        my Pair $P;
        my Str $irreducible-fraction-algorithm = $!which-irreducible-fraction-algorithm;
        my $irreducible = IrreducibleFraction.new(
            numerator => $numerator,
            denominator => $denominator,
            pgcd-algorithm => $!which-pgcd-algorithm,
        );
        my $euclide-one-junction = 'e' ^ ':' ^ '÷' ^ 'euclide';
        my $subtraction-one-junction = 's' ^ '-' ^ '−' ^ 'subtraction';
        my $factorization-one-junction = 'f' ^ '*' ^ '×' ^ 'factorization';
        given $irreducible-fraction-algorithm {
            when $euclide-one-junction { $P = $irreducible.reduce-fraction-with-euclide-algorithm($sign); }
            when $subtraction-one-junction { $P = $irreducible.reduce-fraction-with-subtraction-algorithm($sign); }
            when $factorization-one-junction { $P = $irreducible.reduce-fraction-with-factorization-algorithm($sign); }
            #default { $P = $irreducible.reduce-fraction-with-euclide-algorithm(); }
        }
        $P = Int($P.key) => $P.value;
        return $P;
    }

=begin pod
=for head2
add-up(Pair $pair1, Pair $pair2, Int $times = 0 --> Pair) {}

Cette méthode renvoie l'addition des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
B<nudepair1> et B<nudepair2>.
Elle utilise les modules B<ppcm.pm6> et B<pgcd.pm6>,
ainsi que la méthode de la classe B<reduce-fraction($numerator, $denominator)>. 
Le paramètre B<$times> s'il est mis à 1
et que l'attribut de la classe B<reduce-last-onU<c>e>
est passé à B<True>, la méthode ne réduira pas la fraction résultante
lors d'un premier appel, mais la réduira lors d'un appel subséquent.
Elle renvoie une B<paire> constituée du numérateur et du dénominateur
de la fraction résultante.
=end pod

    method add-up(Pair $pair1, Pair $pair2, Int $times = 0 --> Pair) {
        my Int $n1 = $pair1.key;
        my Int $n2 = $pair2.key;
        my Int $d1 = $pair1.value;
        my Int $d2 = $pair2.value;
        my Int $PPCM = 0;
        my Int $numerator = 0;
        my Int $denominator = 0;
        my Int $multiple1 = 0;
        my Int $multiple2 = 0;
        my Pair $pair;
        say "On cherche le PPCM de $d1 et $d2 :";
        my Str $ppcm-algorithm = $!which-ppcm-algorithm;
        my Str $pgcd-algorithm = $!which-pgcd-algorithm;
        if ($d1 == $d2) {
            $numerator = $n1 + $n2;
            $denominator = $d1;
            put 'Les deux fractions ont même dénominateur donc :';
            say "$n1/$d1 + $n2/$d2 = $n1 + $n2/$denominator = {$n1 + $n2}/$denominator.";
            $pair = $numerator => $denominator;
            say();
            if ($!reduce-last-once && ($times == 1) || $!reduce-last-one && ($times == 0)) {
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
            my $by-larger-number-multiples-one-junction = 'b.l.n.m.' ^ 'by-m' ^ 'bm' ^ 'by-larger-numbers-multiples';
            my $by-prime-factors-one-junction = 'b.p.f.' ^ 'by-f' ^ 'bf' ^ 'by-prime-factors';
            my $by-use-of-pgcd-one-junction = 'b.u.o.p.' ^ 'by-p' ^ 'bp' ^ 'by-use-of-pgcd';
            given $ppcm-algorithm {
                when $by-larger-number-multiples-one-junction { $PPCM = $ppcm.by-larger-number-multiples; }
                when $by-prime-factors-one-junction { $PPCM = $ppcm.by-prime-factors; }
                when $by-use-of-pgcd-one-junction { $PPCM = $ppcm.by-use-of-pgcd; }
                #default { $p = $ppcm.by-use-of-pgcd; }
            }
            $multiple1 = $PPCM div $d1;
            $multiple2 = $PPCM div $d2;
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
        $denominator = $PPCM;
        say "$numerator/$denominator.";
        say();
        if ($!reduce-last-once && ($times == 1) || $!reduce-last-one && ($times == 0)) {
            say "On simplifie la dernière fraction obtenue :";
            $pair = self.reduce-fraction($numerator, $denominator);
        } else {
            $pair = $numerator => $denominator;
        }
        return $pair;
    }

=begin pod
=for head2
add-upx2(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair) {}

Cette méthode renvoie l'addition des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
B<nudepair1>, B<nudepair2> et B<nudepair3>, pour calculer la somme
de trois fractions.
Elle utilise les modules B<ppcm.pm6> et B<pgcd.pm6>,
ainsi que la méthode de la classe : B<reduce-fraction($numerator, $denominator)>. 
Elle renvoie une B<paire> constituée par le numérateur et le dénominateur
de la fraction résultante.
=end pod

    method add-upx2(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair) {
        my Pair $pair = self.add-up($pair1, $pair2, 1);
        $pair = self.add-up($pair, $pair3);
        return $pair;
    }

=begin pod
=for head2
subtract(Pair $pair1, Pair $pair2, Int $times = 0 --> Pair) {}

Cette méthode renvoie la soustraction des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
B<nudepair1> et B<nudepair2>.
Elle utilise les modules B<ppcm.pm6> et B<pgcd.pm6>,
ainsi que la méthode de la classe B<reduce-fraction($numerator, $denominator)>. 
Le paramètre B<$times> a le même effet que pour l'opération B<add-up> (voir plus haut).
Elle renvoie une paire constituée du numérateur et du dénominateur
de la fraction résultante.
=end pod

    method subtract(Pair $pair1, Pair $pair2, Int $times = 0 --> Pair) {
        my Int $n1 = $pair1.key;
        my Int $n2 = $pair2.key;
        my Int $d1 = $pair1.value;
        my Int $d2 = $pair2.value;
        my Int $PPCM = 0;
        my Int $numerator = 0;
        my Int $denominator = 0;
        my Int $multiple1 = 0;
        my Int $multiple2 = 0;
        my Pair $pair;
        say "On cherche le PPCM de $d1 et $d2 :";
        my Str $ppcm-algorithm = $!which-ppcm-algorithm;
        my Str $pgcd-algorithm = $!which-pgcd-algorithm;
        if ($d1 == $d2) {
            $numerator = $n1 - $n2;
            $denominator = $d1;
            put 'Les deux fractions ont même dénominateur donc :';
            say "$n1/$d1 − $n2/$d2 = $n1 − $n2/$denominator = {$n1-$n2}/$denominator.";
            $pair = $numerator => $denominator;
            say();
            if ($!reduce-last-once && ($times == 1) || $!reduce-last-one && ($times == 0)) {
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
            my $by-larger-number-multiples-one-junction = 'b.l.n.m.' ^ 'by-m' ^ 'bm' ^ 'by-larger-number-multiples';
            my $by-prime-factors-one-junction = 'b.p.f.' ^ 'by-f' ^ 'bf' ^ 'by-prime-factors';
            my $by-use-of-pgcd-one-junction = 'b.u.o.p.' ^ 'by-p' ^ 'bp' ^ 'by-use-of-pgcd';
            given $ppcm-algorithm {
                when $by-larger-number-multiples-one-junction { $PPCM = $ppcm.by-larger-number-multiples; }
                when $by-prime-factors-one-junction { $PPCM = $ppcm.by-prime-factors; }
                when $by-use-of-pgcd-one-junction { $PPCM = $ppcm.by-use-of-pgcd; }
                #default { $p = $ppcm.by-use-of-pgcd; }
            }
            $multiple1 = $PPCM div $d1;
            $multiple2 = $PPCM div $d2;
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
        $denominator = $PPCM;
        $pair = $numerator => $denominator;
        say "$numerator/$denominator.";
        say();
        if ($!reduce-last-once && ($times == 1) || $!reduce-last-one && ($times == 0)) {
            say "On simplifie la dernière fraction obtenue :";
            $pair = self.reduce-fraction($numerator, $denominator);
        }
        return $pair;
    }

=begin pod
=for head2
subtractx2(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair) {}

Cette méthode renvoie la soustraction des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
B<nudepair1>, B<nudepair2> et B<nudepair3> pour calculer la différence
de trois fractions.
Elle utilise les modules B<ppcm.pm6> et B<pgcd.pm6>,
ainsi que la méthode de la classe : B<reduce-fraction($numerator, $denominator)>. 
Elle renvoie une B<paire> constituée par le numérateur et le dénominateur
de la fraction résultante.
=end pod

    method subtractx2(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair) {
        my Pair $pair = self.subtract($pair1, $pair2, 1);
        $pair = self.subtract($pair, $pair3);
        return $pair;
    }

=begin pod
=for head2
add-up-subtract(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair)

Cette méthode renvoie l'addition des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
B<nudepair1> et B<nudepair2>,
et la soustraction des numérateurs et dénominateurs passés
à l'argument B<nudepair3>
pour calculer la somme des deux premières fractions
et la différence du résultat et de la troisième fraction.
Elle utilise les modules B<ppcm.pm6> et B<pgcd.pm6>,
ainsi que la méthode de la classe : B<reduce-fraction($numerator, $denominator)>. 
Elle renvoie une B<paire> constituée par le numérateur et le dénominateur
de la fraction résultante.
=end pod

    method add-up-subtract(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair) {
        my Pair $pair = self.add-up($pair1, $pair2, 1);
        $pair = self.subtract($pair, $pair3);
        return $pair;
    }

=begin pod
=for head2
subtract-add-up(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair) {}

Cette méthode est l'inverse de la précédente, c'est-à-dire qu'elle
renvoie la soustraction des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
B<nudepair1>, B<nudepair2>
pour calculer la différence des deux premières fractions
et la somme du résultat et de la troisième fraction
dont l'attribut de classe est B<nudepair3>.
Elle utilise les modules B<ppcm.pm6> et B<pgcd.pm6>,
ainsi que la méthode de la classe : B<reduce-fraction($numerator, $denominator)>. 
Elle renvoie une B<paire> constituée par le numérateur et le dénominateur
de la fraction résultante.
=end pod

    method subtract-add-up(Pair $pair1, Pair $pair2, Pair $pair3 --> Pair) {
        my Pair $pair = self.subtract($pair1, $pair2, 1);
        $pair = self.add-up($pair, $pair3);
        return $pair;
    }

=begin pod
=for head2
breakdown-factors(Int @array-of-factors --> Array) {}

Cette méthode décompose un tableau de facteurs en facteurs premiers.
Elle utilise la méthode B<breakdown> du rôle B<PrimeFactors>.
Consultez la documentation du module B<prime-factors.pm6>
pour plus d'informations.
=end pod

    method breakdown-factors(Int @array-of-factors --> Array) {
        my %hash1{Int};
        my %hash2{Int};
        my %hash3{Int};
        my Int @array;
        # Méthode du rôle PrimeFactors
        if ($!breakdown-factors1 && $!breakdown'factors) {
            say "Facteurs premiers de @array-of-factors[0] :";
            %hash1 = self.breakdown(@array-of-factors[0]);
            push @array, |%hash1.values;
        } else {
            # Pallier aux effets de bord des nombres négatifs
            push @array, abs(@array-of-factors[0]);
        }
        if ($!breakdown-factors2 && $!breakdown'factors) {
            say "Facteurs premiers de @array-of-factors[1] :";
            %hash2 = self.breakdown(@array-of-factors[1]);
            push @array, |%hash2.values;
        } else {
            push @array, @array-of-factors[1];
        }
        if defined(@array-of-factors[2]) {
            if ($!breakdown-factors3 && $!breakdown'factors) {
                say "Facteurs premiers de @array-of-factors[2] :";
                %hash3 = self.breakdown(@array-of-factors[2]);
                push @array, |%hash3.values;
            } else {
                push @array, @array-of-factors[2];
            }
        }
        @array = @array.sort;
        say "Facteurs premiers obtenus pour @array-of-factors[] : @array[];";
        say();
        return @array;
    }

=begin pod
=for head2
compute-prime-factors(Int @array1, Int @array2, Int $return-array = 1 --> Array) {}

Cette méthode elle aussi appelle une méthode de B<PrimeFactors> :
B<reduce-fractions-prime-factors(Int @numerators, Int @denominators, Int $return-array)>
Elle consiste à produire les facteurs qui sont dans l'un des tableaux
mais pas dans l'autre. Il faut passer l'argument 1 (par défaut) à B<$return-array>
pour retourner le premier tableau, c'est-à-dire les numérateurs
ou 2 pour retourner le deuxième tableau, celui des dénominateurs.
Consultez aussi la documentation du module B<prime-factors.pm6>.
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
fractions-product-sign(Pair $p1, Pair $p2, Pair $p3? --> Str) {}

Cette méthode est utilisée pour déduire le signe du résultat
du produit des fractions passées en arguments aux attributs
de la classe que sont B<nudepair1>, B<nudepair2> et
facultativement B<nudepair3> avant d'effectuer les calculs.
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
multiply(Pair $pair1, Pair $pair2, Pair $pair3? --> Pair) {}

Cette méthode est utilisée pour multiplier deux ou trois
fractions données en arguments sous forme de paires
numérateur => dénominateur passées aux attributs de classe
B<nudepair1>, B<nudepair2> et facultativement B<nudepair3>.
Elle renvoie une nouvelle B<paire> en valeur de retour.
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
            print "Signe du produit de {$P1.key}/{$P1.value} par {$P2.key}/{$P2.value} et {$P3.key}/{$P3.value} : ";
        } else {
            $sign = self.fractions-product-sign($P1, $P2);
            print "Signe du produit de {$P1.key}/{$P1.value} par {$P2.key}/{$P2.value} : ";
        }
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
        if ($!breakdown'factors) {
            push @a, $n1, $n2;
            push @b, $d1, $d2;
            if defined($pair3) {
                push @a, $n3;
                push @b, $d3;
            }
            @a = $!breakdown'factors(@a);
            @b = $!breakdown'factors(@b);
            if ($!compute'prime'factors) {
                @prime-factors1 = self.compute-prime-factors(@a, @b, 1);
                $numerator = [*] @prime-factors1;
                @prime-factors2 = self.compute-prime-factors(@a, @b, 2);
                $denominator = [*] @prime-factors2;
            }
        }
        else {
            push @a, $n1, $n2;
            if defined($pair3) { push @a, $n3; };
            push @b, $d1, $d2;
            if defined($pair3) { push @b, $d3; };
            if ($!compute'prime'factors) {
                @prime-factors1 = self.compute-prime-factors(@a, @b, 1);
                $numerator = [*] @prime-factors1;
                @prime-factors2 = self.compute-prime-factors(@a, @b, 2);
                $denominator = [*] @prime-factors2;
            } else {
                $numerator = [*] @a;
                $denominator = [*] @b;
            }
        }
        say "Fraction résultante : $sign$numerator/$denominator.";
        say();
        my Pair $P;
        if ($!reduce-last-one) {
            put 'On simplifie la dernière fraction obtenue :';
            $P = self.reduce-fraction($numerator, $denominator, $sign);
            if $P.key == (1 || -1) && $P.value == (1 || -1) {
                say "Fraction résolue : {$P.key div $P.value}.";
            }
        } else {
            $P = Int($sign ~ $numerator) => $denominator;
        }
        return $P;
    }

    method divide(Pair $pair1, Pair $pair2 --> Pair) {

    }

    method calculate-fractions(Str $operation --> Pair) {
        my Int $n1 = $!nudepair1.key;
        my Int $d1 = $!nudepair1.value;
        my Int $n2 = $!nudepair2.key;
        my Int $d2 = $!nudepair2.value;
        my Int $n3 = $!nudepair3.key if defined($!nudepair3);
        my Int $d3 = $!nudepair3.value if defined($!nudepair3);
        my Pair $P1 = $n1 => $d1;
        my Pair $P2 = $n2 => $d2;
        my Pair $P3 = $n3 => $d3 if defined($!nudepair3);
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

        if !defined($!nudepair3) {
            my $add-up-one-junction = 'add-up' ^ '+' ^ 'a';
            my $subtract-one-junction = 'subtract' ^ '-' ^ '−' ^ 's';
            my $multiply-one-junction = 'multiply' ^ '*' ^ '×' ^ 'm';
            my $divide-one-junction = 'divide' ^ ':' ^ '÷' ^ 'd';
            given $operation {
               when $add-up-one-junction { $P3 = self.add-up($P1, $P2); }
               when $subtract-one-junction { $P3 = self.subtract($P1, $P2); }
               when $multiply-one-junction { $P3 = self.multiply($P1, $P2); }
               when $divide-one-junction { $P3 = self.divide($P1, $P2); }
               default { say "Opération non définie pour deux opérateurs!\n
                             'add-up' ou '+' ou 'a';\n
                             'subtract' ou '-' ou '−' ou 's';\n
                             'multiply' ou '*' ou '×' ou 'm';\n
                             'divide' ou ':' ou '÷' ou 'd' attendus." }
            } 
            return $P3;
        }

        if defined($!nudepair3) {
            if ($!reduce-fraction3) {
                put 'On simplifie si possible la troisième fraction :';
                $P3 = self.reduce-fraction($n3, $d3);
                $n3 = Int($P3.key); $d3 = $P3.value;
                say "Fraction réduite : $n3/$d3.";
            }
            say();
            my $add-upx2-one-junction = 'add-upx2' ^ '++' ^ 'aa';
            my $add-up-subtract-one-junction = 'add-up-subtract' ^ '+-' ^ '+−' ^ 'as';
            my $subtractx2-one-junction = 'subtractx2' ^ '--' ^ '−−' ^ 'ss';
            my $subtract-add-up-one-junction = 'subtract-add-up' ^ '-+' ^ '−+' ^ 'sa';
            my $multiply-one-junction = 'multiply' ^ '*' ^ '×' ^ 'm';
            my $divide-one-junction = 'divide' ^ ':' ^ '÷' ^ 'd';
            given $operation {
                when $add-upx2-one-junction { $P4 = self.add-upx2($P1, $P2, $P3); }
                when $add-up-subtract-one-junction { $P4 = self.add-up-subtract($P1, $P2, $P3); }
                when $subtractx2-one-junction { $P4 = self.subtractx2($P1, $P2, $P3); }
                when $subtract-add-up-one-junction { $P4 = self.subtract-add-up($P1, $P2, $P3); }
                when $multiply-one-junction { $P4 = self.multiply($P1, $P2, $P3); }
                when $divide-one-junction { $P4 = self.divide($P1, $P2, $P3); }
                default { say "Opération non définie pour trois opérateurs!\n
                              'add-upx2' ou '++' ou 'aa';\n
                              'add-up-subtract' ou '+-' ou '+−' ou 'as';\n
                              'subtractx2' ou '--' ou '−−' ou 'ss';\n
                              'subtract-add-up' ou '-+' ou '−+' ou 'sa';\n
                              'multiply' ou '*' ou '×' ou 'm';\n
                              'divide' ou ':' ou '÷' ou 'd' attendus." }
            }
            return $P4;
        }
    }

}
