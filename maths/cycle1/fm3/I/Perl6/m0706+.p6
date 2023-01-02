#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe06b, :examples;
use pgcd;

my Int ($int1, $int2) = 1;
my Str $str = "";
sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0706+.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => $int1,
        integer2 => $int2,
    );
    do-put-up-correct-version();
    $pgcd.euclide_algorithm();

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_06b();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}

loop {
    $str = "Donnez un dividende entier relatif (0 pour finir) : ";
    $int1 = prompt-for-user-input($str);
    $str = "Donnez un diviseur entier relatif différent de 0 : ";
    $int2 = prompt-for-user-input($str);
    answering();
}

