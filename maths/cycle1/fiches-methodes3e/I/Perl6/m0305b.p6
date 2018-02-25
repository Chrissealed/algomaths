use corrective;
use method03 :methodwording, :exe05;
use integer-divisors-listing;


sub answering {
    my Int $pupils = 32;
    my %h;
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '%',
    );
    %h = $divisors-listing.list-divisors($pupils);
    say();
    say "Les possibilités sont :";
    for %h.sort(*.key.Int)>>.kv -> ($k, $v) {
        say "$k groupes de $v élèves." if ($k != 1 && $k != 32);
    }
}

exercise_05();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version;
answering();

