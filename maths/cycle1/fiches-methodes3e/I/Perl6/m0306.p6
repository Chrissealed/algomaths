use corrective;
use method03 :methodwording, :exe06;
use integer-divisors-listing;
use common-arrays-elements;


sub answering {
    my Int ($n1, $n2) = 72, 84;
    my @a = ();
    my Int (@int_a, @int_b, @int_c) = ();

    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '@',
    );
    say "Diviseurs de $n1 :";
    @a = $divisors-listing.list-divisors($n1);
    #say @a;
    say "Diviseurs de $n2 :";
    @int_b = $divisors-listing.list-divisors($n2);
    #say @int_b;
    for @a -> $elem {
        @int_a.push(Int($elem));
    }

    @int_a = @int_a.sort;
    @int_b = @int_b.sort;
    @int_c = common-arrays-elements(@int_b, @int_a);
    say "Les diviseurs communs à $n1 et $n2 sont :";
    say @int_c;
}

exercise_06();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

