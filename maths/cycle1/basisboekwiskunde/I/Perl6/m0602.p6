use corrective;
use method06 :methodwording, :exe02;
use integer-divisors-listing;

sub answering {
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '@',
    );
    my @a;
    @a = $divisors-listing.list-divisors(20);
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

