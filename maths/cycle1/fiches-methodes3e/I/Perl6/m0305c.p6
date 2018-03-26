use corrective;
use method03 :methodwording, :exe05b;
use integer-divisors-listing-hash;

my Str $pupils;
my Int $p;
sub answering {
    do-put-up-correct-version;
    my %h;
    my $divisors-listing = IntegerDivisorsListingH.new;
    %h = $divisors-listing.list-divisors($p);
    say();
    # Test pour un nombre premier
    if (%h.keys.elems != 1) {
        say "Les possibilités sont :";
        for %h.sort(*.key.Int)>>.kv -> ($k, $v) {
            say "$k groupes de $v élèves." if ($k != 1 && $k != $p);
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
    last if $pupils eq '0' || $pupils eq '';
    try {
        $p = Int($pupils);
    }
    if $! {
        say "Saisie invalide !";
        $! = Any;
        redo
    }
    answering();
}

