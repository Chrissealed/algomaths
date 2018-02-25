use corrective;
use method03 :methodwording, :exe04b;
use integer-divisors-listing;

my $strint = '';
sub answering {
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '%',
    );
    my %h;
    %h = $divisors-listing.list-divisors(Int($strint));
    say %h;
}

exercise_04b();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
loop {
    $strint = prompt "Saisissez un entier positif non nul (0 pour finir) : ";
    last if $strint ==  '0';
    do-put-up-correct-version();
    answering();
}

