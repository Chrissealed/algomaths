use corrective;
use method06 :methodwording, :exe02;
use integer-divisors-listing;

sub answering {
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '@',
    );
    my @a;
    @a = $divisors-listing.list-divisors(72);
    say @a;
    say();
    @a = $divisors-listing.list-divisors(100);
    say @a;
    say();
    @a = $divisors-listing.list-divisors(1001);
    say @a;
    say();
    @a = $divisors-listing.list-divisors(561);
    say @a;
    say();
    @a = $divisors-listing.list-divisors(196);
    say @a;
    say();
}

exercise_02();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

