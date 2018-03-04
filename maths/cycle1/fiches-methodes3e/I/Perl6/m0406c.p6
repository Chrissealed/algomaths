use corrective;
use method04 :methodwording, :exe06b;
use pgcd :divlistalgo;

my Int ($int1, $int2) = 1;
my Str ($strint1, $strint2) = "";
sub answering {
    do-put-up-correct-version();
    my $pgcd = PGCD.new(
        array-or-hash => '@',
        integer1 => $int1,
        integer2 => $int2,
    );
    $pgcd.divisors-listing_algorithm();
}

exercise_06b();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
LABELOUTLOOP:
loop {
    $strint1 = prompt "Donnez un premier entier positif (0 pour finir) : ";
    exit if $strint1 eq '0' || $strint1 eq '';
    try {
        $int1 = Int($strint1);
    }
    if $! {
        say "Saisie invalide !";
        $! = Any;
        redo;
    }
    loop {
        $strint2 = prompt "Donnez un deuxième entier positif : ";
        try {
            $int2 = Int($strint2);
        }
        if $! {
            say "Saisie invalide !";
            $! = Any;
            redo; 
        }
        answering;
        redo LABELOUTLOOP;
    }
}

