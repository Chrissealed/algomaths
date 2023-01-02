#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/fm3/I/Perl6/B<m0107.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.13
=end pod

use corrective;
use teeput;
use method01;

sub answering {
    class T does Tput {}
    my $t = T.new(
        writefile => True,
        filemode => ':a', # :mod<wo>, :create, :append
        closefile => False,
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/I/Perl6/output/m0107.txt",
    );
    $t.tput: 'a.';
    my Int $i = 2;
    my Int $j = 2;
    my Bool $flag = False;
    my Int $m = 0;
    my Int $n = 0;
    while (11 * $i < 150) {
        $m = 11 * $i;
        while (13 * $j < 150) {
            $n = 13 * $j;
            if $n == $m {
                $t.tput: "Le nombre $n > 0 et < 150  est à la fois multiple de 11 et de 13 : $n = 11 × $i et 13 × $j.";
                $flag = True;
                $j += 1;
                last;
            }
            $j += 1;
        }
        $i += 1;
        # Réinitialisation de j pour la boucle suivante;
        $j = 2;
    }
    $t.tput: "Pas de multiple commun à 11 et 13 compris entre 0 et 150!" if !$flag;
;
    $t.tput: 'b.';
    $i = 2;
    $j = 2;
    $flag = False;
    $m = 0;
    $n = 0;
    while (11 * $i < 150) {
        $m = 11 * $i;
        while (15 * $j < 150) {
            $n = 15 * $j;
            if ($n == $m) {
                $t.tput: "Le nombre $n > 0 et < 150  est à la fois multiple de 11 et de 15 : $n = 11 × $i et 15 × $j";
                $flag = True;
                $j += 1;
                last;
            }
            $j += 1;
        }
        $i += 1;
        # Réinitialisation de j pour la boucle suivante;
        $j = 2;
    }
    $t.tput: "Pas de multiple commun à 11 et 15 compris entre 0 et 150!" if !$flag;

    $t.closefile = True;
    $t.tput: '';
}

my $xchoice = ChooseX.new();
$xchoice.exercise_07();
my Bool $boolean = do-put-up-method();
if $boolean {
    $xchoice.put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    $xchoice.show-examples;
}
do-put-up-correct-version();
answering();

