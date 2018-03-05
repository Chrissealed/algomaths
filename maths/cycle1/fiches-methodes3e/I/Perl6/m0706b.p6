use corrective;
use method07 :methodwording, :exe06b;
use pgcd :euclidealgo;

my Int ($int1, $int2) = 1;
my Str ($strint1, $strint2) = "";
my $pgcd = PGCD.new();
sub answering {
    do-put-up-correct-version();
    # Pour construire la classe PGCD pour la méthode 'euclide algorithm'
    $pgcd.dividend = $int1;
    $pgcd.divisor = $int2;
    $pgcd.euclide_algorithm();
}

exercise_06b();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
LABELOUTLOOP:
loop {
    $strint1 = prompt "Donnez un dividende entier positif (0 pour finir) : ";
    exit if $strint1 eq '0' || $strint1 eq '';
    try {
        $int1 = Int($strint1);
    }
    if $! {
        say "Saisie invalide !";
        $! = Any;
        redo;
    }
    if ($int1 < 0) {
        say "Saisie invalide !";
        redo;
    }
    loop {
        $strint2 = prompt "Donnez un divisor entier positif < ou = au dividende : ";
        try {
            $int2 = Int($strint2);
        }
        if $! {
            say "Saisie invalide !";
            $! = Any;
            redo; 
        }
        if ($int2 < 0) {
           say "Saisie invalide !";
           redo;
        }
        answering;
        redo LABELOUTLOOP;
    }
}

