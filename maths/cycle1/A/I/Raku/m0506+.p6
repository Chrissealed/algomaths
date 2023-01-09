#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method05 :methodwording, :exe06b, :examples;
use pgcd;

my Str $str = "";
my Int ($int1, $int2) = 0;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0506+.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    do-put-up-correct-version();
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => $int1,
        integer2 => $int2,
    );
    $pgcd.subtraction_algorithm();

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
    $str = "Donnez un premier entier relatif (0 pour finir) : ";
    $int1 = prompt-for-user-input($str);
    $str = "Donnez un deuxième entier relatif différent de 0 : ";
    $int2 = prompt-for-user-input($str);
    answering();
}

