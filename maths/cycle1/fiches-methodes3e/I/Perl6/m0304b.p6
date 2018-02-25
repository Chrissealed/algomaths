use corrective;
use method03 :methodwording, :exe04b;
use integer-divisors-listing-array;

my $strint = '';
sub answering {
    my $divisors-listing = IntegerDivisorsListingA.new;
    my @a;
    @a = $divisors-listing.list-divisors(Int($strint));
    say @a;
}

exercise_04b();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
loop {
    $strint = prompt "Saisissez un entier positif non nul (0 pour finir) : ";
    last if Int($strint) == 0;
    do-put-up-correct-version();
    answering();
}

