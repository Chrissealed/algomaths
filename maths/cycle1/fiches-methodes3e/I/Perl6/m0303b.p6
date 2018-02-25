use corrective;
use method03 :methodwording, :exe03;
use integer-divisors-listing;

sub answering {
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => 'hash',
    );
    my %h;
    %h = $divisors-listing.list-divisors(257);
    say %h; 
}

exercise_03();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

