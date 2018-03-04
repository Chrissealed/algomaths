use corrective;
use method05 :methodwording, :exe06b;
use pgcd :subtractalgo;

my Int ($int1, $int2) = 1;
my Str ($strint1, $strint2) = "";
my $pgcd = PGCD.new(
    # Pour construire la classe PGCD pour la méthode 'subtraction algorithm'
    integer1 => 1,
    integer2 => 1,
);
sub answering {
    do-put-up-correct-version();
    $pgcd.integer1 = $int1;
    $pgcd.integer2 = $int2;
    $pgcd.subtraction_algorithm();
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

