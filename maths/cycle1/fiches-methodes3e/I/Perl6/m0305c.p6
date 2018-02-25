use corrective;
use method03 :methodwording, :exe05b;
use integer-divisors-listing-hash;

my Str $pupils;
sub answering {
    do-put-up-correct-version;
    my %h;
    my $divisors-listing = IntegerDivisorsListingH.new;
    #my $divisors-listing = IntegerDivisorsListing.new(
    #    array-or-hash => '%',
    #);
    try {
        %h = $divisors-listing.list-divisors(Int($pupils));
    }
    say();
    # Test pour un nombre premier
    if (%h.keys.elems == 1) {
        say "Les possibilités sont :";
        for %h.sort(*.key.Int)>>.kv -> ($k, $v) {
            try {
                say "$k groupes de $v élèves." if ($k != 1 && $k != Int($pupils));
            }
        }
    }
    # Si nous n'avons à faire à un nombre premier
    else { say "Aucune possibilité!" }
}

exercise_05b();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
loop {
    $pupils = prompt "Donnez un nombre d'élèves s.v.p. (0 pour finir) : ";
    last if $pupils eq '0';
    answering();
}

