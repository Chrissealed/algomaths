use corrective;
use method03 :methodwording, :exe06b;
use integer-divisors-listing;
use common-arrays-elements;

my Str ($n1, $n2);
sub answering {
    do-put-up-correct-version();
    my @a = ();
    my Int (@int_a, @int_b, @int_c) = ();

    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '@',
    );
    say "Diviseurs de $n1 :";
    try {
        @a = $divisors-listing.list-divisors(Int($n1));
    }
    if $! { say "Saisie invalide!" }
    say "Diviseurs de $n2 :";
    try {
        @int_b = $divisors-listing.list-divisors(Int($n2));
    }
    if $! { say "Saisie invalide!" }
    for @a -> $elem {
        @int_a.push(Int($elem));
    }

    @int_a = @int_a.sort;
    @int_b = @int_b.sort;
    @int_c = common-arrays-elements(@int_a, @int_b);
    say "Les diviseurs communs à $n1 et $n2 sont :";
    say @int_c;
}

exercise_06b();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
loop {
    $n1 = prompt "Donnez un premier entier positif (0 pour finir) : ";
    last if $n1 eq '0';
    $n2 = prompt "Donnez un deuxième entier positif : ";
    answering();
}

