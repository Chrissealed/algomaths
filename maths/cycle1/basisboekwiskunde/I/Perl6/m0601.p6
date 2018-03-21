use corrective;
use method06 :methodwording, :exe01;
use integer-divisors-listing;

sub answering {
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '@',
    );
    my @a;
    @a = $divisors-listing.list-divisors(12);
    say @a;
    say();
    @a = $divisors-listing.list-divisors(20);
    say @a;
    say();
    @a = $divisors-listing.list-divisors(32);
    say @a;
    say();
    @a = $divisors-listing.list-divisors(108);
    say @a;
    say();
    @a = $divisors-listing.list-divisors(144);
    say @a;
    say();
}

exercise_01();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

