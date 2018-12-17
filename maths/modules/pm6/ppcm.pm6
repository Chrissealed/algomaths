unit module ppcm;

use v6;

=begin pod
=NAME class PPCM in B<algomaths> Perl6 modules : maths/modules/pm6/B<ppcm.pm6>
=AUTHOR https://github.com/Chrissealed/algomaths.git
=VERSION 2018.12.16 18:50

=for head1
Ce module contient une classe : PPCM qui dispose du rôle 'PrimeFactors'
et qui utilise les classes ArePrime et PGCD.

Cette classe comporte deux attributs requis : B<integer1> et B<integer2>, qui sont
des entiers différents de 0 qui seront utilisés par les méthodes de la classe
et un attribut facultatif de type B<Str> qui peut prendre l'une des valeurs suivantes :
=item B<euclide> ou B<e> ou B<:> ou B<÷>;
=item B<subtraction> ou B<s> ou B<-> ou B<−>;
=item B<factorization> ou B<f> ou B<*> ou B<×> et
=item B<divisors-listing> ou B<d> ou B<#> ou B</>.

Sa valeur par défaut est B<euclide>; cet algorithme est utilisé
par l'une des méthodes du module B<prime-factors.pm6> :
=item B<have-common-divisor($pgcd-algorithm)>.

La classe B<PrimeFactors> contient trois méthodes distinctes pour calculer le PPCM
(plus petit commun multiple) de deux entiers :
=item B<by-larger-number-multiples>(--> Int) qui procède par additions du plus grand
nombre et division du résultat par le plus petit nombre.
Elle retourne le PPCM recherché qui est donc un entier.
=item B<by-prime-factors>(--> Int) qui procède par décomposition des nombres en
facteurs premiers et qui utilise pour cela la méthode B<breakdown> du module
B<prime-factors> dont la classe a le rôle.
Cette méthode dispose d'un tableau des facteurs extraits
des deux nombres qu'elle multiplie pour obtenir le PPCM recherché et retourné.
=item B<by-use-of-pgcd>(-->Int) qui comme son nom l'indique recherche d'abord
le PGCD des deux entiers avant de diviser leur multiple par celui-ci,
le résultat étant le PPCM recherché, c'est-à-dire un entier en valeur de retour
comme l'indiquent les signatures de ces méthodes.

Le rôle B<PrimeFactors> possède en outre un attribut requis destiné à écrire
dans un fichier les informations qui apparaissent à l'écran
et qui décrivent les différentes étapes des opérations.
Il s'agit de B<Teeput::Tput $t is required is rw> :
il faut lui passer un objet de type B<Teeput::Tput> du module
B<teeput.pm6>. Référez-vous à la doc de ce module
pour plus d'informations.
=end pod

use are-prime;
use pgcd;
use prime-factors;

class PPCM does PrimeFactors is export {
    # Défini dans le rôle PrimeFactors
    #has Teeput::Tput $.t is required is rw;

    has Int $.integer1 is required is rw where { ($_ != 0) or die "Valeur de champ invalide! Entier différent de 0 requis." };
    has Int $.integer2 is required is rw where { ($_ != 0) or die "Valeur de champ invalide! Entier différent de 0 requis." };
    my $pgcd-algorithm-one-junction = 'euclide' ^ 'e' ^ ':' ^ '÷' ^ 'subtraction' ^ 's' ^ '-' ^ '−' ^ 'factorization' ^ 'f' ^ '*' ^ '×' ^ 'divisors-listing' ^ 'd' ^ '#' ^ '/';
    has Str $.which-pgcd-algorithm is rw where { $_ ~~ $pgcd-algorithm-one-junction or 
    die "Valeur de champ invalide! Précisez
        'euclide' ou 'e' ou ':' ou '÷';
        'subtraction' ou 's' ou '-' ou '−';
        'factorization' ou 'f' ou '*' ou '×';
        'divisors-listing' ou 'd' ou '#' ou '/'."; }
    = 'euclide';
    
    method by-larger-number-multiples(--> Int) {
        my Int $int1 = $!integer1;
        my Int $int2 = $!integer2;
        $!t.tput: "− Recherche du PPCM : Méthode par additions successives du plus grand nombre à lui-même −";
        if ($int1 == 1 || $int1 == -1 || $int2 == 1 || $int2 == -1) {
            $!t.tput: "$int1 et $int2 n'ont pas de diviseurs communs autre que 1;";
            $!t.tput: "le PPCM de $int1 et $int2 est donc leur produit : {$int1 * $int2}.";
            return $int1 * $int2;
        }
        if (abs($int1) < abs($int2)) {
            # Intervertir $x et $y
            ($int1, $int2) = ($int2, $int1);
        }
        my Int $int = $int1;
        my Str $pgcd-algorithm = $!which-pgcd-algorithm;
        # Vérifier si les nombres sont premiers entre eux
        my $are-prime = ArePrime.new(
            t => $!t,
            integer1 => $int1,
            integer2 => $int2,
        );
        my Bool $have-common-divisor = $are-prime.have-common-divisor($pgcd-algorithm);
        if !$have-common-divisor {
            $!t.tput: "Le PGCD de $int1 et $int2 est égal à 1;";
            $!t.tput: "le PPCM de $int1 et $int2 est donc leur produit : {$int1 * $int2}.";
            return $int1 * $int2;
        }
        $!t.tput: "Reste de la division de $int1 par $int2 : {$int1 mod $int2}";
        if $int1 %% $int2 { return $int1; }
        loop {
            $!t.tprint: "$int + $int1 = ";
            $int += $int1;
            $!t.tput: "$int";
            $!t.tput: "Reste de la division de $int par $int2 : {$int mod $int2}";
            if $int %% $int2 { return $int; }
        }
    }

    method by-prime-factors(--> Int) {
        my $x = $!integer1;
        my $y = $!integer2;
        $!t.tput: "− Recherche du PPCM : Méthode par décomposition en facteurs premiers −";
        if ($x == 1 || $x == -1 || $y == 1 || $y == -1) {
            $!t.tput: "$x et $y n'ont pas de diviseurs communs autre que 1;";
            $!t.tput: "le PPCM de $x et $y est donc leur produit : {$x * $y}.";
            return $x * $y;
        }
        if ($x == $y) { return $x; }
        # Vérifier si les nombres sont premiers entre eux
        my Str $pgcd-algorithm = self.which-pgcd-algorithm;
        my $are-prime = ArePrime.new(
            t => $!t,
            integer1 => $x,
            integer2 => $y,
        );
        my Bool $have-common-divisor = $are-prime.have-common-divisor($pgcd-algorithm);
        if !$have-common-divisor {
            $!t.tput: "Le PGCD de $x et $y est égal à 1;";
            $!t.tput: "le PPCM de $x et $y est donc leur produit : {$x * $y}.";
            return $x * $y;
        }
        # Call méthode du module 'prime-factors' qui contient un rôle inclus dans
        # la classe PGCD
        my %h1 = $.breakdown($!integer1);
        my %h2 = $.breakdown($!integer2);
        my Int @a1 = %h1.values.sort;
        my Int @a2 = %h2.values.sort;
        my Int @a3 = ();
        my Int $f = 2;
        my Int $i = 0;
        my Int $j = 0;
        my Int $total1 = 1;
        my Int $total2 = 1;
        if @a1[@a1.end] >= @a2[@a2.end] {
            while ($f <= @a1[@a1.end]) {
                while ($i < @a1.elems) {
                    if $f == @a1[$i] {
                        $total1 = $f * $total1;
                    }
                    $i++;
                }
                while ($j < @a2.elems) {
                    if $f == @a2[$j] {
                        $total2 = $f * $total2;
                    }
                    $j++;
                }
                if ($total1 >= $total2) {
                    push @a3, $total1 if $total1 > 1;
                } else {
                    push @a3, $total2 if $total2 > 1;
                }
                repeat {
                    $f++;
                } until is-prime($f);
                $i = 0;
                $j = 0;
                $total1 = 1;
                $total2 = 1;
            }
        } else {
            while ($f <= @a2[@a2.end]) {
                while ($i < @a1.elems) {
                    if $f == @a1[$i] {
                        $total1 = $f * $total1;
                    }
                    $i++;
                }
                while ($j < @a2.elems) {
                    if $f == @a2[$j] {
                        $total2 = $f * $total2;
                    }
                    $j++;
                }
                if ($total1 >= $total2) {
                    push @a3, $total1 if $total1 > 1;
                } else {
                    push @a3, $total2 if $total2 > 1;
                }
                repeat {
                    $f++;
                } until is-prime($f);
                $i = 0;
                $j = 0;
                $total1 = 1;
                $total2 = 1;
            }
        }
        $i = 0;
        $!t.tput: "En prenant les plus grands facteurs de chaque liste, ";
        $!t.tprint: "le PPCM de $x et $y équivaut donc à : ";
        while ($i < @a3.end) {
            $!t.tprint: "@a3[$i] × ";
            $i++;
        }
        $!t.tput: "@a3[$i].";
        my $ppcm = [*] @a3;
        return $ppcm;
    }

    method by-use-of-pgcd(--> Int) {
        my Int $x = $!integer1;
        my Int $y = $!integer2;
        $!t.tput: "− Recherche du PPCM : Méthode par utilisation du PGCD −";
        if ($x == 1 || $x == -1 || $y == 1 || $y == -1) {
            $!t.tput: "$x et $y n'ont pas de diviseurs communs autre que 1;";
            $!t.tput: "le PPCM de $x et $y est donc leur produit : {$x * $y}.";
            return $x * $y if ($x == 1 || $x == -1);
            return $y * $x if ($y == 1 || $y == -1);
        }
        if (abs($y) > abs($x)) {
            # Inversion des termes
            ($x, $y) = ($y, $x);
        }
        # On ne vérifie pas que les nombres sont premiers entre eux
        # car on serait amené à rechercher deux fois leur PGCD
        my Str $pgcd-algorithm = $!which-pgcd-algorithm;
        my $pgcd = PGCD.new(
            t => $!t,
            integer1 => $x,
            integer2 => $y,
        );
        my Int $PGCD = 0;
        given $pgcd-algorithm {
            when / 'e' || ':' || '÷' || 'euclide' / { $PGCD = $pgcd.euclide_algorithm(); }
            when / 's' || '-' || '−' || 'subtraction' / { $PGCD = $pgcd.subtraction_algorithm(); }
            when / 'f' || '*' || '×' || 'factorization' / { $PGCD = $pgcd.factorization_algorithm(); }
            when / 'd' || '#' || '/' || 'divisors-listing' / { $PGCD = $pgcd.divisors-listing_algorithm(); }
        }
        if ($PGCD == 1) {
            $!t.tput: "Le PGCD de $x et $y est égal à 1;";
            $!t.tput: "le PPCM de $x et $y est donc leur produit : {$x * $y}.";
            return $x * $y;
        }
        my Int $product = $x * $y;
        $!t.tput: "Produit de $x par $y = $product;";
        my Int $ppcm = $product div $PGCD;
        $!t.tput: "PPCM($x ; $y) = $product div $PGCD = $ppcm.";
        return $ppcm;
    }

}
