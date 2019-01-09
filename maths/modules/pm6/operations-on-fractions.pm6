unit module Operations-on-fractions;

use v6;

=begin pod
=NAME B<OperationsOnFractions> : B<algomaths> Perl 6 module in /maths/modules/pm6/B<operations-on-fractions.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.01.09

=for head1
Ce module est destiné à faire des opérations sur des fractions.

Il utilise les modules B<ppcm.pm6>, B<irreducible-fraction.pm6>
et B<prime-factors.pm6>
et hérite du rôle B<PrimeFactors>.
La méthode principale de la classe B<OperationsOnFractions>
est B<calculate-fractions(Str $operation)> ou le
paramètre B<$operation> peut être l'un des suivants :
=item 'add-up' ou '+' ou 'a',
=item 'subtract' ou '-' ou '−' ou 's',
=item 'multiply' ou '*' ou '×' ou 'm',
=item 'divide' ou ':' ou '÷' ou 'd',

ceci dans le cas ou il on opère que sur que deux fractions.

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
=item 'add-upx2' ou '++' ou 'aa',
=item 'subtractx2' ou '--' ou '−−' ou 'ss',
=item 'add-up-subtract' ou '+-' ou '+−' ou 'as', et enfin
=item 'subtract-add-up' ou '-+' ou '−+' ou 'sa'.

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

le premier visant dans le cadre de l'B<U<addition>> ou de la B<U<soustraction>>
à réduire une seule fois
la première fraction au terme du calcul dans une liste chaînée
d'opérations (par exemple : +−) lors du calcul de trois fractions,
et le deuxième à réduire systématiquement la dernière
fraction obtenue à tous les niveaux de cette liste
ou bien lors d'une opération simple (+ ou −).
Ces attributs visent à modifier les opérations de calcul
de manière à produire plusieurs options pour générer
un même résultat.

Six autres attributs, peuvent être utilisés lors d'une opération de
B<U<multiplication>> ou de B<U<division>>, pour une granularité maximale, ce sont :
=item B<breakdown-numerator1>, réduire en facteurs premiers le numérateur de la première fraction,
=item B<breakdown-numerator2>, réduire en facteurs premiers le numérateur de la deuxième fraction,
=item B<breakdown-numerator3>, réduire en facteurs premiers le numérateur de la troisième fraction facultative.
=item B<breakdown-denominator1>, réduire en facteurs premiers le dénominateur de la première fraction,
=item B<breakdown-denominator2>, réduire en facteurs premiers le dénominateur de la deuxième fraction,
=item B<breakdown-denominator3>, réduire en facteurs premiers le dénominateur de la troisième fraction facultative.

Ces six attributs ont par défaut la valeur B<False>.

Viennent ensuite deux autres champs facultatifs
utilisables pour la B<U<multiplication>> ou la B<U<division>> de fractions uniquement
et qui jouent avec les six attributs décrits précédemment :
=item B<breakdown-numerators>
=item B<breakdown-denominators> 

qui pour le premier réduit en facteurs premiers les numérateurs de chaque fraction
et le deuxième réduit en facteurs premiers les dénominateurs de chaque fraction;
ces attributs sont tous les deux à B<True> par défaut.

Vous disposez ainsi de deux niveaux de contrôle,
l'un global pour tous les numérateurs et/ou dénominateurs
et l'autre pour un contrôle dont la granularité
vous permet d'agir exactement sur les numérateurs
et/ou dénominateurs de chaque fraction séparément.

Note: chaque fois que vous mettez à B<True> l'un des six attributs
granulaires, l'attribut global correspondant (c'est-à-dire B<breakdown-numerators>
et/ou B<breakdown-denominators>) est automatiquement désactivé.

=item L'attribut B<compute-prime-factors>

enfin permet de supprimer les facteurs en double
dans le numérateur et le dénominateur de deux fractions
pour opérer leur réduction. Ce champ est à B<True>
par défaut lui aussi.

Les autres champs, facultatifs, sont destinés à choisir
parmi les diverses méthodes utilisées pour le calcul
des méthodes de classes appelées en interne :
=for item
B<which-ppcm-algorithm>, peut prendre l'une des valeurs suivantes :
=item 'by-larger-number-multiples' ou 'b.l.n.m.' ou 'by-m' ou 'bm';
=item 'by-prime-factors' ou 'b.p.f.' ou 'by-f' ou 'bf';
=item 'by-use-of-pgcd' ou 'b.u.o.p.' ou 'by-p' ou 'bp' (utilisé par défaut).

Ce dernier attribut n'est B<pas> utilisé pour la B<U<multiplication>> ou la B<U<division>>,
mais uniquement pour l'B<U<addition>> ou la B<U<soustraction>>
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
pour le calcul du PPCM.

La classe possède en outre un B<attribut requis> destiné à écrire
dans un fichier les informations qui apparaissent à l'écran
et qui décrivent les différentes étapes des opérations
laissant ainsi un I<témoin> du calcul effectué.
Celui-ci (pour info) est défini dans le rôle sous-jacent B<PrimeFactors>.
Il s'agit de B<Teeput::Tput $t is required is rw> :
il faut lui passer un objet de type B<Teeput::Tput> du module
B<teeput.pm6>. Ses méthodes sont utilisées en remplacement des méthodes
B<U<put>> (tput), B<U<print>> (tprint) ou B<U<say>> (tsay).
Référez-vous à la doc de ce module pour plus d'informations.
=end pod

use ppcm;
use irreducible-fraction;
use prime-factors;

class OperationsOnFractions does PrimeFactors is export {
    # Défini dans le rôle PrimeFactors
    #has Teeput::Tput $.t is required is rw;
    
    has Pair $.nudepair1 is required is rw where { $_.key.WHAT === (Int) && $_.value.WHAT === (Int) && $_.value != 0 or
    die "Valeur de champ invalide! Entiers relatifs et dénominateur différent de 0 requis." }
    has Bool $.reduce-fraction1 is rw = False;
    # Pour la multiplication ou la division 
    has Bool $.breakdown-numerator1 is rw = False;
    has Bool $.breakdown-denominator1 is rw = False;

    has Pair $.nudepair2 is required is rw where { $_.key.WHAT === (Int) && $_.value.WHAT === (Int) && $_.value != 0 or
    die "Valeur de champ invalide! Entiers relatifs et dénominateur différent de 0 requis." }
    has Bool $.reduce-fraction2 is rw = False;
    # Pour la multiplication ou la division 
    has Bool $.breakdown-numerator2 is rw = False;
    has Bool $.breakdown-denominator2 is rw = False;

    has Pair $.nudepair3 is rw where { $_.key.WHAT === (Int) && $_.value.WHAT === (Int) && $_.value != 0 or
    die "Valeur de champ invalide! Entiers relatifs et dénominateur différent de 0 requis." }
    has Bool $.reduce-fraction3 is rw = False;
    # Pour la multiplication ou la division 
    has Bool $.breakdown-numerator3 is rw = False;
    has Bool $.breakdown-denominator3 is rw = False;
    # Attributs globaux pour tous les numérateurs
    # et dénominateurs de toutes les fractions
    # dans le cadre de la multiplication ou de la division uniquement
    has Bool $.breakdown-numerators is rw = True;
    has Bool $.are-prime-nu = False;
    has Bool $.breakdown-denominators is rw = True;
    has Bool $.are-prime-de = False;
    has Bool $.compute-prime-factors is rw = True;
    
    # Pour l'addition et la soustraction
    has Bool $.reduce-last-once is rw = False;
    # Pour toutes les opérations
    has Bool $.reduce-last-one is rw = True;

    # Pour l'addition et la soustraction
    my $ppcm-algorithm-one-junction = 'by-larger-number-multiples' ^ 'b.l.n.m.' ^ 'by-m' ^ 'bm' ^
                                      'by-prime-factors' ^ 'b.p.f.' ^ 'by-f' ^ 'bf' ^
                                      'by-use-of-pgcd' ^ 'b.u.o.p.' ^ 'by-p' ^ 'bp'; 
    has Str $.which-ppcm-algorithm is rw where { $_ ~~ $ppcm-algorithm-one-junction or
        die "Champ de classe invalide! Attendu
            'by-larger-number-multiples' ou 'b.l.n.m.' ou 'by-m' ou 'bm';
            'by-prime-factors' ou 'b.p.f.' ou 'by-f' ou 'bf';
            'by-use-of-pgcd' ou 'b.u.o.p.' ou 'by-p' ou 'bp'."; }
        = 'b.u.o.p.';
    # Aussi pour la multiplication et la division
    my $irreducible-fraction-algorithm-one-junction = 'euclide' ^ 'e' ^ ':' ^ '÷' ^
                                                      'subtraction' ^ 's' ^ '-' ^ '−' ^
                                                      'factorization' ^ 'f' ^ '*' ^ '×';
    has Str $.which-irreducible-fraction-algorithm is rw where { $_ ~~ $irreducible-fraction-algorithm-one-junction or
        die "Champ de classe invalide! Attendu
            'euclide' ou 'e' ou ':' ou '÷';
            'subtraction' ou 's' ou '-' ou '−';
            'factorization' ou 'f' ou '*' ou '×'."; }
        = '÷';
    my $pgcd-algorithm-one-junction = 'euclide' ^ 'e' ^ ':' ^ '÷' ^
                                      'subtraction' ^ 's' ^ '-' ^ '−' ^
                                      'factorization' ^ 'f' ^ '*' ^ '×' ^
                                      'divisors-listing' ^ 'd' ^ '#' ^ '/';
    has Str $.which-pgcd-algorithm is rw where { $_ ~~ $pgcd-algorithm-one-junction or
        die "Champ de classe invalide! Attendu
            'euclide' ou 'e' ou ':' ou '÷'
            'subtraction' ou 's' ou '-' ou '−'
            'factorization' ou 'f' ou '*' ou '×'
            'divisors-listing' ou 'd' ou '#' ou '/'."; }
        = '÷';

=begin pod
=for head1
Voici la liste des méthodes de la classe OperationsOnFractions :
=for head2
calculate-fractions(Str:D $operation --> Pair:D) {}

Cette méthode est la principale de la classe,
qui donne accès à toutes les autres méthodes
− bien que celles-là ne soient pas privées et sont
donc accessibles isolément −
en employant un seul argument, le type d'opération
à effectuer. (Voir plus haut)

=for head2
are-they-prime(Int:D @numerators, Int:D @denominators --> Pair:D) {}

Cette méthode a pour but de déterminer si les numérateurs et les
dénominateurs sont des facteurs premiers.
Les arguments correspondant sont des tableaux de 2 ou 3 éléments.
Si oui, les attributs de la classe en lecture seule B<are-prime-nu> et/ou
B<are-prime-de> sont passés à B<True>.
La méthode renvoie une paire constituée de deux valeurs booléenes :
la première composante correspondant aux numérateurs
et la deuxième au dénominateurs.

=for head2
reduce-fraction(Int:D $numerator, Int:D $denominator, Str $sign = '' --> Pair:D) {}

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

    method are-they-prime(Int:D @numerators, Int:D @denominators --> Pair:D) {
        if defined($!nudepair3) {
            if ($!breakdown-numerators) || ($!breakdown-numerator1 && $!breakdown-numerator2 && $!breakdown-numerator3) {
                $!are-prime-nu = True;
            }
            else {
                if is-prime(@numerators[0]) && is-prime(@numerators[1]) && is-prime(@numerators[2]) {
                    $!are-prime-nu = True;
                } else { $!are-prime-nu = False; }
            }
        }
        else {
            if ($!breakdown-numerators) || ($!breakdown-numerator1 && $!breakdown-numerator2) {
                $!are-prime-nu = True;
            }
            else {
                if is-prime(@numerators[0]) && is-prime(@numerators[1]) {
                    $!are-prime-nu = True;
                } else { $!are-prime-nu = False; }
            }
        }

        if defined($!nudepair3) {
            if ($!breakdown-denominators) || ($!breakdown-denominator1 && $!breakdown-denominator2 && $!breakdown-denominator3) {
                $!are-prime-de = True;
            }
            else {
                if is-prime(@denominators[0]) && is-prime(@denominators[1]) && is-prime(@denominators[2]) {
                    $!are-prime-de = True;
                } else { $!are-prime-de = False; }
            }
        }
        else {
            if ($!breakdown-denominators) || ($!breakdown-denominator1 && $!breakdown-denominator2) {
                $!are-prime-de = True;
            }
            else {
                if is-prime(@denominators[0]) && is-prime(@denominators[1]) {
                    $!are-prime-de = True;
                } else { $!are-prime-de = False; }
            }
        }
        my Pair $are-they-prime;
        $are-they-prime = $!are-prime-nu => $!are-prime-de;
        return $are-they-prime;
    }
    
    method reduce-fraction(Int:D $numerator, Int:D $denominator, Str $sign = '' --> Pair:D) {
        my Pair $P;
        my Str $irreducible-fraction-algorithm = $!which-irreducible-fraction-algorithm;
        my $irreducible = IrreducibleFraction.new(
            t => $!t,
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
        }
        $P = Int($P.key) => $P.value;
        return $P;
    }

=begin pod
=for head2
add-up(Pair:D $pair1, Pair:D $pair2, Int $times = 0 --> Pair:D) {}

Cette méthode renvoie l'addition des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
B<nudepair1> et B<nudepair2>.
Elle utilise les modules B<ppcm.pm6> et B<pgcd.pm6>,
ainsi que la méthode de la classe
B<reduce-fraction>(Int:D $numerator, Int:D $denominator, Str $sign = '' --> Pair:D) {}
par l'entremise de laquelle sont appelées les méthodes du module
B<irreducible-fraction.pm6>.

Le paramètre B<$times> s'il est mis à 1
et que l'attribut de la classe B<reduce-last-onB<U<c>e>>
est passé à B<True>, la méthode ne réduira pas la fraction résultante
lors d'un premier appel, mais la réduira lors d'un appel subséquent
lors de l'effectuation d'un calcul sur trois fractions par la méthode 
B<calculate-fractions>(Str:D $operation --> Pair:D) {}
Elle renvoie une B<paire> constituée du numérateur et du dénominateur
de la fraction résultante.
=end pod

    method add-up(Pair:D $pair1, Pair:D $pair2, Int $times = 0 --> Pair:D) {
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
        
        $!t.tput: "On cherche le PPCM de $d1 et $d2 :";
        my Str $ppcm-algorithm = $!which-ppcm-algorithm;
        my Str $pgcd-algorithm = $!which-pgcd-algorithm;
        if ($d1 == $d2) {
            $numerator = $n1 + $n2;
            $denominator = $d1;
            $!t.tput: 'Les deux fractions ont même dénominateur donc :';
            $!t.tput: "$n1/$d1 + $n2/$d2 = $n1 + $n2/$denominator = {$n1 + $n2}/$denominator.";
            $pair = $numerator => $denominator;
            $!t.tput('');
            if ($!reduce-last-once && ($times == 1) || $!reduce-last-one && ($times == 0)) {
                $!t.tput: "On simplifie la dernière fraction obtenue :";
                $pair = $.reduce-fraction($numerator, $denominator);
            }
            return $pair;
        }
        else {
            my $ppcm = PPCM.new(
                t => $!t,
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
            }
            $multiple1 = $PPCM div $d1;
            $multiple2 = $PPCM div $d2;
            $!t.tput: "$n1/$d1 + $n2/$d2 = $n1×$multiple1/$d1×$multiple1 + $n2×$multiple2/$d2×$multiple2;";
        }
        $!t.tput: "on effectue les calculs :";
        my Int $numerator1 = $n1 * $multiple1;
        my Int $numerator2 = $n2 * $multiple2;
        my Int $denominator1 = $d1 * $multiple1;
        my Int $denominator2 = $d2 * $multiple2;
        $!t.tput: "$n1/$d1 + $n2/$d2 = $numerator1/$denominator1 + $numerator2/$denominator2;";
        $!t.tprint: "\n";
        $!t.tput: 'on ajoute les numérateurs et on garde le dénominateur commun :';
        $numerator = $numerator1 + $numerator2;
        $denominator = $PPCM;
        $!t.tput: "$numerator/$denominator.";
        $!t.tprint: "\n";
        if ($!reduce-last-once && ($times == 1) || $!reduce-last-one && ($times == 0)) {
            $!t.tput: "On simplifie la dernière fraction obtenue :";
            $pair = $.reduce-fraction($numerator, $denominator);
        } else {
            $pair = $numerator => $denominator;
        }
        return $pair;
    }

=begin pod
=for head2
add-upx2(Pair:D $pair1, Pair:D $pair2, Pair:D $pair3 --> Pair:D) {}

Cette méthode renvoie l'addition des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
B<nudepair1>, B<nudepair2> et B<nudepair3>, pour calculer la somme
de trois fractions.
Elle utilise les modules B<ppcm.pm6> et B<pgcd.pm6>,
ainsi que la méthode de la classe : B<reduce-fraction($numerator, $denominator)>. 
Elle renvoie une B<paire> constituée par le numérateur et le dénominateur
de la fraction résultante.
=end pod

    method add-upx2(Pair:D $pair1, Pair:D $pair2, Pair:D $pair3 --> Pair:D) {
        my Pair $pair = $.add-up($pair1, $pair2, 1);
        $pair = $.add-up($pair, $pair3);
        return $pair;
    }

=begin pod
=for head2
subtract(Pair:D $pair1, Pair:D $pair2, Int $times = 0 --> Pair:D) {}

Cette méthode renvoie la soustraction des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
B<nudepair1> et B<nudepair2>.
Elle utilise les modules B<ppcm.pm6> et B<pgcd.pm6>,
ainsi que la méthode de la classe B<reduce-fraction($numerator, $denominator)>. 
Le paramètre B<$times> a le même effet que pour l'opération B<add-up> (voir plus haut).
Elle renvoie une paire constituée du numérateur et du dénominateur
de la fraction résultante.
=end pod

    method subtract(Pair:D $pair1, Pair:D $pair2, Int $times = 0 --> Pair:D) {
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
        $!t.tput: "On cherche le PPCM de $d1 et $d2 :";
        my Str $ppcm-algorithm = $!which-ppcm-algorithm;
        my Str $pgcd-algorithm = $!which-pgcd-algorithm;
        if ($d1 == $d2) {
            $numerator = $n1 - $n2;
            $denominator = $d1;
            $!t.tput: 'Les deux fractions ont même dénominateur donc :';
            $!t.tput: "$n1/$d1 − $n2/$d2 = $n1 − $n2/$denominator = {$n1-$n2}/$denominator.";
            $pair = $numerator => $denominator;
            $!t.tprint: "\n";
            if ($!reduce-last-once && ($times == 1) || $!reduce-last-one && ($times == 0)) {
                $!t.tput: "On simplifie la dernière fraction obtenue :";
                $pair = $.reduce-fraction($numerator, $denominator);
            }
            return $pair;
        }
        else {
            my $ppcm = PPCM.new(
                t => $!t,
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
            }
            $multiple1 = $PPCM div $d1;
            $multiple2 = $PPCM div $d2;
            $!t.tput: "$n1/$d1 − $n2/$d2 = $n1×$multiple1/$d1×$multiple1 − $n2×$multiple2/$d2×$multiple2;";
        }
        $!t.tput: "on effectue les calculs :";
        my Int $numerator1 = $n1 * $multiple1;
        my Int $numerator2 = $n2 * $multiple2;
        my Int $denominator1 = $d1 * $multiple1;
        my Int $denominator2 = $d2 * $multiple2;
        $!t.tput: "$n1/$d1 − $n2/$d2 = $numerator1/$denominator1 − $numerator2/$denominator2;";
        $!t.tprint: "\n";
        $!t.tput: 'on soustrait les numérateurs et on garde le dénominateur commun :';
        $numerator = $numerator1 − $numerator2;
        $denominator = $PPCM;
        $pair = $numerator => $denominator;
        $!t.tput: "$numerator/$denominator.";
        $!t.tprint: "\n";
        if ($!reduce-last-once && ($times == 1) || $!reduce-last-one && ($times == 0)) {
            $!t.tput: "On simplifie la dernière fraction obtenue :";
            $pair = $.reduce-fraction($numerator, $denominator);
        }
        return $pair;
    }

=begin pod
=for head2
subtractx2(Pair:D $pair1, Pair:D $pair2, Pair:D $pair3 --> Pair:D) {}

Cette méthode renvoie la soustraction des numérateurs et dénominateurs
passés aux attributs de la classe, c'est-à-dire,
B<nudepair1>, B<nudepair2> et B<nudepair3> pour calculer la différence
de trois fractions.
Elle utilise les modules B<ppcm.pm6> et B<pgcd.pm6>,
ainsi que la méthode de la classe : B<reduce-fraction($numerator, $denominator)>. 
Elle renvoie une B<paire> constituée par le numérateur et le dénominateur
de la fraction résultante.
=end pod

    method subtractx2(Pair:D $pair1, Pair:D $pair2, Pair:D $pair3 --> Pair:D) {
        my Pair $pair = $.subtract($pair1, $pair2, 1);
        $pair = $.subtract($pair, $pair3);
        return $pair;
    }

=begin pod
=for head2
add-up-subtract(Pair:D $pair1, Pair:D $pair2, Pair:D $pair3 --> Pair:D) {}

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

    method add-up-subtract(Pair:D $pair1, Pair:D $pair2, Pair:D $pair3 --> Pair:D) {
        my Pair $pair = $.add-up($pair1, $pair2, 1);
        $pair = $.subtract($pair, $pair3);
        return $pair;
    }

=begin pod
=for head2
subtract-add-up(Pair:D $pair1, Pair:D $pair2, Pair $pair3:D --> Pair:D) {}

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

    method subtract-add-up(Pair:D $pair1, Pair:D $pair2, Pair:D $pair3 --> Pair:D) {
        my Pair $pair = $.subtract($pair1, $pair2, 1);
        $pair = $.add-up($pair, $pair3);
        return $pair;
    }

=begin pod
=for head2
breakdown-factors(Int:D @array-of-factors, Str:D $nu'de --> Array:D) {}

Cette méthode décompose un tableau de facteurs en facteurs premiers.
(remarquez le séparateur ' du deuxième paramètre qui est parfaitement valide en Perl 6).
Elle utilise la méthode B<breakdown> du rôle B<PrimeFactors>.
L'argument B<$nu'de> peut contenir les valeurs B<nu> ou B<de>
(pour 'numerator'/'denominator') pour indiquer à la fonction
qu'elle doit retourner soit un tableau des numérateurs,
soit un tableau des dénominateurs.
Consultez la documentation du module B<prime-factors.pm6>
pour plus d'informations.
=end pod

    method breakdown-factors(Int:D @array-of-factors, Str:D $nu'de --> Array:D) {
        my %hash1{Int};
        my %hash2{Int};
        my %hash3{Int};
        my Int @array;
        my $nu'de-one-junction = 'nu' ^ 'de';
        
        if ($nu'de eq $nu'de-one-junction) {
            $!t.tput: "Facteurs premiers de @array-of-factors[0] :";
            # Méthode du rôle PrimeFactors
            %hash1 = $.breakdown(@array-of-factors[0]);
            push @array, |%hash1.values;
            $!t.tput: "Facteurs premiers de @array-of-factors[1] :";
            # Méthode du rôle PrimeFactors
            %hash2 = $.breakdown(@array-of-factors[1]);
            push @array, |%hash2.values;
            if defined(@array-of-factors[2]) {
                $!t.tput: "Facteurs premiers de @array-of-factors[2] :";
                # Méthode du rôle PrimeFactors
                %hash3 = $.breakdown(@array-of-factors[2]);
                push @array, |%hash3.values;
            }
        }
        @array = @array.sort;
        $!t.tprint: "\n";
        return @array;
    }

=begin pod
=head2 breakdown-numerator(Int:D $numerator --> Array:D) {}

Cette méthode permet d'ajouter de la granularité aux opérations
en réduisant en facteurs premiers uniquement le ou les numérateurs
de chaque fraction prise isolément.
Elle utilise les attributs B<breakdown-numerator1> et/ou B<breakdown-numerator2>
et/ou B<breakdown-numerator3>.
Si l'un de ces trois attributs est passé à b<True>, cela désactivera
automatiquement l'attribut global B<breakdown-numerators>.
=end pod

    method breakdown-numerator(Int:D $numerator --> Array:D) {
        my %hash{Int};
        my Int @array;
        
        $!t.tput: "facteurs premiers de $numerator :";
        # méthode du rôle primefactors
        %hash = $.breakdown($numerator);
        push @array, |%hash.values;
        
        @array = @array.sort;
        $!t.tprint: "\n";
        return @array;
    }

=begin pod
=head2 breakdown-denominator(Int:D $numerator --> Array:D) {}

Cette méthode permet d'ajouter de la granularité aux opérations
en réduisant en facteurs premiers uniquement le ou les denominateurs
de chaque fraction prise isolément.
Elle utilise les attributs B<breakdown-denominator1> et/ou B<breakdown-denominator2>
et/ou B<breakdown-denominator3>.
Si l'un de ces trois attributs est passé à b<True>, cela désactivera
automatiquement l'attribut global B<breakdown-denominators>.
=end pod

    method breakdown-denominator(Int:D $denominator --> Array:D) {
        my %hash{Int};
        my Int @array = ();
        
        $!t.tput: "facteurs premiers de $denominator :";
        # méthode du rôle primefactors
        %hash = $.breakdown($denominator);
        push @array, |%hash.values;
        
        @array = @array.sort;
        $!t.tprint: "\n";
        return @array;
    }

=begin pod
=for head2
fractions-product-sign(Pair:D $p1, Pair $p2:D, Pair $p3? --> Str:D) {}

Cette méthode est utilisée pour déduire le signe du résultat
du produit des fractions passées en arguments aux attributs
de la classe que sont B<nudepair1>, B<nudepair2> et
facultativement B<nudepair3> avant d'effectuer les calculs.
Cette méthode est employée uniquement pour des opérations
de B<multiplication> ou de B<division>.
Elle retourne '+' ou '−' qui seront convertis en '' ou '-'
pour leur utilisation effective.
=end pod

    method fractions-product-sign(Pair:D $p1, Pair:D $p2, Pair $p3? --> Str:D) {
        my $product-n = $p1.key * $p2.key;
        my $product-d = $p1.value * $p2.value;
        if defined($p3) {
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
multiply(Pair:D $pair1, Pair:D $pair2, Pair $pair3? --> Pair:D) {}

Cette méthode est utilisée pour multiplier deux ou trois
fractions données en arguments sous forme de paires
numérateur => dénominateur passées aux attributs de classe
B<nudepair1>, B<nudepair2> et facultativement B<nudepair3>.
Elle retourne une nouvelle B<paire>.
=end pod

    method multiply(Pair:D $pair1, Pair:D $pair2, Pair $pair3? --> Pair:D) {
        my Pair $P1 = abs($pair1.key) => abs($pair1.value);
        my Pair $P2 = abs($pair2.key) => abs($pair2.value);
        my Pair $P3 = abs($pair3.key) => abs($pair3.value) if defined($pair3);
        my Str $sign = '';
        if defined($pair3) {
            $sign = $.fractions-product-sign($pair1, $pair2, $pair3);
            $!t.tprint: "Signe du produit de {$pair1.key}/{$pair1.value} par {$pair2.key}/{$pair2.value} et {$pair3.key}/{$pair3.value} : ";
        } else {
            $sign = $.fractions-product-sign($pair1, $pair2);
            $!t.tprint: "Signe du produit de {$pair1.key}/{$pair1.value} par {$pair2.key}/{$pair2.value} : ";
        }
        given $sign {
            when '+' {
                $!t.tput: "$sign.";
                $sign = '';
            }
            when '−' {
                $!t.tput: "$sign.";
                $sign = '-';
            }
        }
        my Int ($n1, $n2) = 0;
        my Int ($d1, $d2) = 0;

        $!t.tprint: "\n";
        my Int @numerators = ();
        my Int @denominators = ();
        my Int $numerator = 0;
        my Int $denominator = 0;
        $!t.tput: 'On multiplie les numérateurs de chaque fraction puis les dénominateurs :';

        my Int (@n1, @n2, @n3) = ();
        if ($!breakdown-numerator1) {
            $!breakdown-numerators = False;
            @n1 = |$.breakdown-numerator($P1.key);
        }
        else {
            push @n1, $P1.key;
        }
        if ($!breakdown-numerator2) {
            $!breakdown-numerators = False;
            @n2 = |$.breakdown-numerator($P2.key);
        }
        else {
            push @n2, $P2.key;
        }
        if defined($pair3) {
            if ($!breakdown-numerator3) {
                $!breakdown-numerators = False;
                @n3 = |$.breakdown-numerator($P3.key);
            }
            else {
                push @n3, $P3.key;
            }
        }
        push @numerators, |@n1, |@n2;
        push @numerators, |@n3 if defined($pair3);
        if ($!breakdown-numerators) {
            @numerators = |$.breakdown-factors(@numerators, 'nu');
        }
        $numerator = [*] @numerators;
        @numerators = @numerators.sort;

        my Int (@d1, @d2, @d3) = ();
        if ($!breakdown-denominator1) {
            $!breakdown-denominators = False;
            @d1 = |$.breakdown-denominator($P1.value);
        }
        else {
            push @d1, $P1.value;
        }
        if ($!breakdown-denominator2) {
            $!breakdown-denominators = False;
            @d2 = |$.breakdown-denominator($P2.value);
        }
        else {
            push @d2, $P2.value;
        }
        if defined($pair3) {
            if ($!breakdown-denominator3) {
                $!breakdown-denominators = False;
                @d3 = |$.breakdown-denominator($P3.value);
            }
            else {
                push @d3, $P3.value;
            }
        }
        push @denominators, |@d1, |@d2;
        push @denominators, |@d3 if defined($pair3);
        if ($!breakdown-denominators) {
            @denominators = |$.breakdown-factors(@denominators, 'de');
        }
        $denominator = [*] @denominators;
        @denominators = @denominators.sort;

        my Pair $prime = $.are-they-prime(@numerators, @denominators); 
        if defined($pair3) {
            $!are-prime-nu == True ?? $!t.tprint: "Facteurs premiers " !! $!t.tprint: "Facteurs ";
            $!t.tput: "obtenus pour {$P1.key} × {$P2.key} × {$P3.key} = $numerator : @numerators[].";
        } else {
            $!are-prime-nu == True ?? $!t.tprint: "Facteurs premiers " !! $!t.tprint: "Facteurs ";
            $!t.tput: "obtenus pour {$P1.key} × {$P2.key} = $numerator : @numerators[].";
        }

        if defined($pair3) {
            $!are-prime-de == True ?? $!t.tprint: "Facteurs premiers " !! $!t.tprint: "Facteurs ";
            $!t.tput: "obtenus pour {$P1.value} × {$P2.value} × {$P3.value} = $denominator : @denominators[].";
        } else {
            $!are-prime-de == True ?? $!t.tprint: "Facteurs premiers " !! $!t.tprint: "Facteurs ";
            $!t.tput: "obtenus pour {$P1.value} × {$P2.value} = $denominator : @denominators[].";
        }

=begin pod
=for head2
reduce-fractions-prime-factors(Int:D @numerators, Int:D @denominators, Int $return-array = 1 --> Array:D) {}

Cette méthode appartient au rôle B<PrimeFactors> :
elle consiste à produire les facteurs qui sont dans l'un des tableaux
mais pas dans l'autre. Il faut passer l'argument 1 (c'est la valeur par défaut)
à l'argument B<$return-array>
pour retourner le premier tableau, c'est-à-dire les numérateurs
ou 2 pour retourner le deuxième tableau, celui des dénominateurs.
Elle est implémentée ici directement dans le code et n'est donc
pas disponible comme méthode du module B<operations-on-fractions>
mais seulement comme méthode du module B<prime-factors.pm6>
dont je rappelle qu'il définit le rôle B<PrimeFactors>
employé par la classe B<OperationsOnFractions>.
Consultez aussi la documentation du module B<prime-factors.pm6>.
=end pod

        my Int @prime-factors-n;
        my Int @prime-factors-d;
        if ($!compute-prime-factors) {
            # Méthode du rôle PrimeFactors
            @prime-factors-n = |$.reduce-fractions-prime-factors(@numerators, @denominators, 1);
            $numerator = [*] @prime-factors-n;
            # Méthode du rôle PrimeFactors
            @prime-factors-d = |$.reduce-fractions-prime-factors(@numerators, @denominators, 2);
            $denominator = [*] @prime-factors-d;
            $!are-prime-nu && $!are-prime-de ?? $!t.tprint: "Facteurs premiers résultants : "
                                             !! $!t.tprint: "Facteurs résultants : ";
            if @prime-factors-n.elems == 0 { push @prime-factors-n, 1; }
            if @prime-factors-d.elems == 0 { push @prime-factors-d, 1; }
            $!t.tput: "@prime-factors-n[] ; @prime-factors-d[]."
        }

        $!t.tput: "Fraction résultante : $sign$numerator/$denominator.";
        if ($denominator == 1 || $denominator == -1) {
            $!t.tput: "Soit $sign$numerator/$denominator = $sign$numerator.";
        }
        $!t.tprint: "\n";
        my Pair $P;
        if ($!reduce-last-one) {
            $!t.tput: 'On simplifie la dernière fraction obtenue :';
            $P = $.reduce-fraction(Int($sign ~ $numerator), $denominator, $sign);
        } else {
            $P = Int($sign ~ $numerator) => $denominator;
        }
        return $P;
    }

=begin pod
=for head2
divide(Pair:D $pair1, Pair:D $pair2 --> Pair:D) {}

Cette méthode est utilisée pour diviser deux fractions
données en arguments sous forme de paires
numérateur => dénominateur passées aux attributs de classe
B<nudepair1> et B<nudepair2>.
Elle retourne une nouvelle B<paire>.
Remarquez que l'attribut B<nudepair3> n'est pas utilisé
contrairement aux autres opérations et sera donc ignoré.
=end pod

    method divide(Pair:D $pair1, Pair:D $pair2 --> Pair:D) {
        my Pair $P1 = abs($pair1.key) => abs($pair1.value);
        my Pair $P2 = abs($pair2.value) => abs($pair2.key);
        my Str $sign = '';
        $sign = $.fractions-product-sign($pair1, $pair2);
        $!t.tprint: "Signe de la division de {$pair1.key}/{$pair1.value} par {$pair2.key}/{$pair2.value} : ";
        given $sign {
            when '+' {
                $!t.tput: "$sign.";
                $sign = '';
            }
            when '−' {
                $!t.tput: "$sign.";
                $sign = '-';
            }
        }
        my Int ($n1, $n2) = 0;
        my Int ($d1, $d2) = 0;

        $!t.tprint: "\n";
        my Int @numerators = ();
        my Int @denominators = ();
        my Int $numerator = 0;
        my Int $denominator = 0;
        $!t.tprint: 'On multiplie le premier nombre en écriture fractionnaire par l\'inverse du second : ';
        $!t.tput: "{$pair1.key} × {$pair2.value} = {$pair1.key * $pair2.value}";

        my Int (@n1, @n2) = ();
        if ($!breakdown-numerator1) {
            $!breakdown-numerators = False;
            @n1 = |$.breakdown-numerator($P1.key);
        }
        else {
            push @n1, $P1.key;
        }
        if ($!breakdown-numerator2) {
            $!breakdown-numerators = False;
            @n2 = |$.breakdown-numerator($P2.key);
        }
        else {
            push @n2, $P2.key;
        }
        push @numerators, |@n1, |@n2;
        if ($!breakdown-numerators) {
            @numerators = |$.breakdown-factors(@numerators, 'nu');
        }
        $numerator = [*] @numerators;
        @numerators = @numerators.sort;

        my Int (@d1, @d2) = ();
        if ($!breakdown-denominator1) {
            $!breakdown-denominators = False;
            @d1 = |$.breakdown-denominator($P1.value);
        }
        else {
            push @d1, $P1.value;
        }
        if ($!breakdown-denominator2) {
            $!breakdown-denominators = False;
            @d2 = |$.breakdown-denominator($P2.value);
        }
        else {
            push @d2, $P2.value;
        }
        push @denominators, |@d1, |@d2;
        if ($!breakdown-denominators) {
            @denominators = |$.breakdown-factors(@denominators, 'de');
        }
        $denominator = [*] @denominators;
        @denominators = @denominators.sort;

        my Pair $prime = $.are-they-prime(@numerators, @denominators); 
        $!are-prime-nu == True ?? $!t.tprint: "Facteurs premiers " !! $!t.tprint: "Facteurs ";
        $!t.tput: "obtenus pour {$P1.key} × {$P2.key} = $numerator : @numerators[].";

        $!are-prime-de == True ?? $!t.tprint: "Facteurs premiers " !! $!t.tprint: "Facteurs ";
        $!t.tput: "obtenus pour {$P1.value} × {$P2.value} = $denominator : @denominators[].";

        my Int @prime-factors-n;
        my Int @prime-factors-d;
        if ($!compute-prime-factors) {
            # Méthode du rôle PrimeFactors
            @prime-factors-n = |$.reduce-fractions-prime-factors(@numerators, @denominators, 1);
            $numerator = [*] @prime-factors-n;
            # Méthode du rôle PrimeFactors
            @prime-factors-d = |$.reduce-fractions-prime-factors(@numerators, @denominators, 2);
            $denominator = [*] @prime-factors-d;
            $!are-prime-nu && $!are-prime-de ?? $!t.tprint: "Facteurs premiers résultants : "
                                             !! $!t.tprint: "Facteurs résultants : ";
            if @prime-factors-n.elems == 0 { push @prime-factors-n, 1; }
            if @prime-factors-d.elems == 0 { push @prime-factors-d, 1; }
            $!t.tput: "@prime-factors-n[] ; @prime-factors-d[]."
        }

        $!t.tput: "Fraction résultante : $sign$numerator/$denominator.";
        if ($denominator == 1 || $denominator == -1) {
            $!t.tput: "Soit $sign$numerator/$denominator = $sign$numerator.";
        }
        $!t.tprint: "\n";
        my Pair $P;
        if ($!reduce-last-one) {
            $!t.tput: 'On simplifie la dernière fraction obtenue :';
            $P = $.reduce-fraction(Int($sign ~ $numerator), $denominator, $sign);
        } else {
            $P = Int($sign ~ $numerator) => $denominator;
        }
        return $P;
    }

=begin pod
=head2 deliver-fraction-sign(Int:D $key, Int:D $value --> Str:D) {}

Cette méthode permet de distribuer le signe de chacune des fractions
prises isolément.
Elle est utilisée si l'un des attributs B<reduce-fraction1> et/ou
B<reduce-fraction2> et/ou B<reduce-fraction3> sont passés à B<True>
dans la méthode B<calculate-fractions>(Str:D $operation --> Pair:D);
je rappelle ici que ces trois champs sont à B<False> par défaut.
=end pod

    method deliver-fraction-sign(Int:D $key, Int:D $value --> Str:D) {
        my Str $sign = '';
        ($key > 0 && $value > 0) ?? ($sign = '') !! ($sign = '-');
        ($key < 0 && $value < 0) ?? ($sign = '-') !! ($sign = '');
        ($key > 0 && $value < 0) ?? ($sign = '-') !! ($sign = '');
        ($key < 0 && $value > 0) ?? ($sign = '-') !! ($sign = '');
        return $sign;
    }

    method calculate-fractions(Str:D $operation --> Pair:D) {
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
        my Str $sign = '';

        if ($!reduce-fraction1) {
            $sign = $.deliver-fraction-sign($n1, $d1);
            $!t.tput: 'On simplifie si possible la première fraction :';
            $P1 = $.reduce-fraction($n1, $d1, $sign);
            $n1 = Int($P1.key); $d1 = $P1.value;
            $!t.tput: "Fraction réduite : $n1/$d1.";
            $!t.tprint: "\n";
        }

        if ($!reduce-fraction2) {
            $sign = $.deliver-fraction-sign($n2, $d2);
            $!t.tput: 'On simplifie si possible la deuxième fraction :';
            $P2 = $.reduce-fraction($n2, $d2, $sign);
            $n2 = Int($P2.key); $d2 = $P2.value;
            $!t.tput: "Fraction réduite : $n2/$d2.";
            $!t.tprint: "\n";
        }

        
        if ! defined($!nudepair3) {
            my $add-up-one-junction = 'add-up' ^ '+' ^ 'a';
            my $subtract-one-junction = 'subtract' ^ '-' ^ '−' ^ 's';
            my $multiply-one-junction = 'multiply' ^ '*' ^ '×' ^ 'm';
            my $divide-one-junction = 'divide' ^ ':' ^ '÷' ^ 'd';
            given $operation {
               when $add-up-one-junction { $P3 = $.add-up($P1, $P2); }
               when $subtract-one-junction { $P3 = $.subtract($P1, $P2); }
               when $multiply-one-junction { $P3 = $.multiply($P1, $P2); }
               when $divide-one-junction { $P3 = $.divide($P1, $P2); }
               default { say "Opération non définie pour deux opérateurs!
                             'add-up' ou '+' ou 'a';
                             'subtract' ou '-' ou '−' ou 's';
                             'multiply' ou '*' ou '×' ou 'm';
                             'divide' ou ':' ou '÷' ou 'd' attendus." }
            } 
            return $P3;
        }

        if defined($!nudepair3) {
            if ($!reduce-fraction3) {
                $sign = $.deliver-fraction-sign($n3, $d3);
                $!t.tput: 'On simplifie si possible la troisième fraction :';
                $P3 = $.reduce-fraction($n3, $d3, $sign);
                $n3 = Int($P3.key); $d3 = $P3.value;
                $!t.tput: "Fraction réduite : $n3/$d3.";
                $!t.tprint: "\n";
            }
            my $add-upx2-one-junction = 'add-upx2' ^ '++' ^ 'aa';
            my $add-up-subtract-one-junction = 'add-up-subtract' ^ '+-' ^ '+−' ^ 'as';
            my $subtractx2-one-junction = 'subtractx2' ^ '--' ^ '−−' ^ 'ss';
            my $subtract-add-up-one-junction = 'subtract-add-up' ^ '-+' ^ '−+' ^ 'sa';
            my $multiply-one-junction = 'multiply' ^ '*' ^ '×' ^ 'm';
            my $divide-one-junction = 'divide' ^ ':' ^ '÷' ^ 'd';
            given $operation {
                when $add-upx2-one-junction { $P4 = $.add-upx2($P1, $P2, $P3); }
                when $add-up-subtract-one-junction { $P4 = $.add-up-subtract($P1, $P2, $P3); }
                when $subtractx2-one-junction { $P4 = $.subtractx2($P1, $P2, $P3); }
                when $subtract-add-up-one-junction { $P4 = $.subtract-add-up($P1, $P2, $P3); }
                when $multiply-one-junction { $P4 = $.multiply($P1, $P2, $P3); }
                when $divide-one-junction { $P4 = $.divide($P1, $P2); }
                default { say "Opération non définie pour trois opérateurs!
                              'add-upx2' ou '++' ou 'aa';
                              'add-up-subtract' ou '+-' ou '+−' ou 'as';
                              'subtractx2' ou '--' ou '−−' ou 'ss';
                              'subtract-add-up' ou '-+' ou '−+' ou 'sa';
                              'multiply' ou '*' ou '×' ou 'm';
                              'divide' ou ':' ou '÷' ou 'd' attendus." }
            }
            return $P4;
        }
    }

}
