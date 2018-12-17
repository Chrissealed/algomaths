#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method05 :methodwording, :exe01b, :examples;
use prime-factors;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0501b.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    class P does PrimeFactors {}
    my $prime = P.new( t => $t );
    my %p = $prime.breakdown(72);
    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_01b();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

