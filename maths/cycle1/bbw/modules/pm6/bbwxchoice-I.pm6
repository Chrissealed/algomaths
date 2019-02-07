unit module bbwxchoice-I;

use v6;

=begin pod
=NAME class B<BbwXChoice-I> in B<algomaths>/maths/bbw/modules/pm6/B<bbwxchoice-I.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.07
=end pod

use teeput;

class BbwXChoice-I does Teeput::Tput is export {
    has Str $.chapter is required;
    has Str $.path is required;

    method stop(--> Bool:D) {
        my Bool $confirm = False;
        my $answer = prompt "Voulez-vous vraiment quitter ? O/n > ";
        if $answer ~~ / <[oO]> / { $confirm = True; }
        return $confirm;
    }

    method x-choice(Bool $put-blank-line = False, Bool $last = False --> Array:D) {
        my $stats-file1 = 'I-statistics.txt';
        my $t = Tput.new(
            writefile => True,
            filemode => ':a', # :mode<wo>, :create, :append
            writetty => False,
            closefile => True,
            filepath => "%*ENV<ALGOMATHS>/maths/cycle1/bbw/stats/$stats-file1",
        );
        my Str $method01 = 'Addition.';
        my Str $method02 = 'Soustraction.';
        my Str $method03 = 'Multiplication.';
        my Str $method04 = 'Division avec reste.';
        my Str $method01to04 = 'Les 4 opérations.';
        my Str $method05 = 'Décomposer un entier en facteurs premiers.';
        my Str $method06 = 'Déterminer tous les facteurs d\'un entier.';
        my Str $method07 = 'PGCD.';
        my Str $method08 = 'PPCM.';
        my Str $method09 = 'PGCD et PPCM.';
        my Str $pseudopath = '$ALGOMATHS/maths/cycle1/bbw/I/Perl6';
        state Str @status = ();
        my Bool $confirm = False;

        if $put-blank-line { $t.tprint: "\n" }
        if $last { push @status, '-1'; return @status; }
        my Str $xchoice = prompt "Choisissez un exercice : (0,1,2,3 ou 4 puis chiffres et lettres accolés; ex: 504c); (q ou Q pour quitter) > ";
        my $time = now.DateTime;
        given $xchoice {
            when / <[qQ]> /
            {
                $confirm = self.stop(); 
                if ($confirm) {
                    $t.tprint: "\n"; push @status, '-1';
                    return @status;
                }
                else { @status = self.x-choice; }
            }
            when '1' { $t.tput: "1. $method01 ($pseudopath/output/m0101.txt) -- $time"; shell "perl6 -I $!path $!path/m0101.p6"; push @status, '1'; }
            when '2' { $t.tput: "2. $method02 ($pseudopath/output/m0102.txt) -- $time"; shell "perl6 -I $!path $!path/m0102.p6"; push @status, '2'; }
            when '3' { $t.tput: "3. $method03 ($pseudopath/output/m0103.txt) -- $time"; shell "perl6 -I $!path $!path/m0103.p6"; push @status, '3'; }
            when '4' { $t.tput: "4. $method04 ($pseudopath/output/m0104.txt) -- $time"; shell "perl6 -I $!path $!path/m0104.p6"; push @status, '4'; }
            when '0' { $t.tput: "0. $method01to04 ($pseudopath/output/m01to04.txt) -- $time"; shell "perl6 -I $!path $!path/m01to04.p6"; push @status, '0'; }

            when '501a' { $t.tput: "501a. $method05 ($pseudopath/output/m0501a.txt) -- $time"; shell "perl6 -I $!path $!path/m0501a.p6"; push @status, '501a'; }
            when '501b' { $t.tput: "501b. $method05 ($pseudopath/output/m0501b.txt) -- $time"; shell "perl6 -I $!path $!path/m0501b.p6"; push @status, '501b'; }
            when '501c' { $t.tput: "501c. $method05 ($pseudopath/output/m0501c.txt) -- $time"; shell "perl6 -I $!path $!path/m0501c.p6"; push @status, '501c'; }
            when '501d' { $t.tput: "501d. $method05 ($pseudopath/output/m0501d.txt) -- $time"; shell "perl6 -I $!path $!path/m0501d.p6"; push @status, '501d'; }
            when '501e' { $t.tput: "501e. $method05 ($pseudopath/output/m0501e.txt) -- $time"; shell "perl6 -I $!path $!path/m0501e.p6"; push @status, '501e'; }
            when '502a' { $t.tput: "502a. $method05 ($pseudopath/output/m0502a.txt) -- $time"; shell "perl6 -I $!path $!path/m0502a.p6"; push @status, '502a'; }
            when '502b' { $t.tput: "502b. $method05 ($pseudopath/output/m0502b.txt) -- $time"; shell "perl6 -I $!path $!path/m0502b.p6"; push @status, '502b'; }
            when '502c' { $t.tput: "502c. $method05 ($pseudopath/output/m0502c.txt) -- $time"; shell "perl6 -I $!path $!path/m0502c.p6"; push @status, '502c'; }
            when '502d' { $t.tput: "502d. $method05 ($pseudopath/output/m0502d.txt) -- $time"; shell "perl6 -I $!path $!path/m0502d.p6"; push @status, '502d'; }
            when '502e' { $t.tput: "502e. $method05 ($pseudopath/output/m0502e.txt) -- $time"; shell "perl6 -I $!path $!path/m0502e.p6"; push @status, '502e'; }
            when '503a' { $t.tput: "503a. $method05 ($pseudopath/output/m0503a.txt) -- $time"; shell "perl6 -I $!path $!path/m0503a.p6"; push @status, '503a'; }
            when '503b' { $t.tput: "503b. $method05 ($pseudopath/output/m0503b.txt) -- $time"; shell "perl6 -I $!path $!path/m0503b.p6"; push @status, '503b'; }
            when '503c' { $t.tput: "503c. $method05 ($pseudopath/output/m0503c.txt) -- $time"; shell "perl6 -I $!path $!path/m0503c.p6"; push @status, '503c'; }
            when '503d' { $t.tput: "503d. $method05 ($pseudopath/output/m0503d.txt) -- $time"; shell "perl6 -I $!path $!path/m0503d.p6"; push @status, '503d'; }
            when '503e' { $t.tput: "503e. $method05 ($pseudopath/output/m0503e.txt) -- $time"; shell "perl6 -I $!path $!path/m0503e.p6"; push @status, '503e'; }
            when '504a' { $t.tput: "504a. $method05 ($pseudopath/output/m0504a.txt) -- $time"; shell "perl6 -I $!path $!path/m0504a.p6"; push @status, '504a'; }
            when '504b' { $t.tput: "504b. $method05 ($pseudopath/output/m0504b.txt) -- $time"; shell "perl6 -I $!path $!path/m0504b.p6"; push @status, '504b'; }
            when '504c' { $t.tput: "504c. $method05 ($pseudopath/output/m0504c.txt) -- $time"; shell "perl6 -I $!path $!path/m0504c.p6"; push @status, '504c'; }
            when '504d' { $t.tput: "504d. $method05 ($pseudopath/output/m0504d.txt) -- $time"; shell "perl6 -I $!path $!path/m0504d.p6"; push @status, '504d'; }
            when '504e' { $t.tput: "504e. $method05 ($pseudopath/output/m0504e.txt) -- $time"; shell "perl6 -I $!path $!path/m0504e.p6"; push @status, '504e'; }
            when '505a' { $t.tput: "505a. $method05 ($pseudopath/output/m0505a.txt) -- $time"; shell "perl6 -I $!path $!path/m0505a.p6"; push @status, '505a'; }
            when '505b' { $t.tput: "505b. $method05 ($pseudopath/output/m0505b.txt) -- $time"; shell "perl6 -I $!path $!path/m0505b.p6"; push @status, '505b'; }
            when '505c' { $t.tput: "505c. $method05 ($pseudopath/output/m0505c.txt) -- $time"; shell "perl6 -I $!path $!path/m0505c.p6"; push @status, '505c'; }
            when '505d' { $t.tput: "505d. $method05 ($pseudopath/output/m0505d.txt) -- $time"; shell "perl6 -I $!path $!path/m0505d.p6"; push @status, '505d'; }
            when '505e' { $t.tput: "505e. $method05 ($pseudopath/output/m0505e.txt) -- $time"; shell "perl6 -I $!path $!path/m0505e.p6"; push @status, '505e'; }

            when '601a' { $t.tput: "601a. $method06 ($pseudopath/output/m0601a.txt) -- $time"; shell "perl6 -I $!path $!path/m0601a.p6"; push @status, '601a'; }
            when '601b' { $t.tput: "601b. $method06 ($pseudopath/output/m0601b.txt) -- $time"; shell "perl6 -I $!path $!path/m0601b.p6"; push @status, '601b'; }
            when '601c' { $t.tput: "601c. $method06 ($pseudopath/output/m0601c.txt) -- $time"; shell "perl6 -I $!path $!path/m0601c.p6"; push @status, '601c'; }
            when '601d' { $t.tput: "601d. $method06 ($pseudopath/output/m0601d.txt) -- $time"; shell "perl6 -I $!path $!path/m0601d.p6"; push @status, '601d'; }
            when '601e' { $t.tput: "601e. $method06 ($pseudopath/output/m0601e.txt) -- $time"; shell "perl6 -I $!path $!path/m0601e.p6"; push @status, '601e'; }
            when '602a' { $t.tput: "602a. $method06 ($pseudopath/output/m0602a.txt) -- $time"; shell "perl6 -I $!path $!path/m0602a.p6"; push @status, '602a'; }
            when '602b' { $t.tput: "602b. $method06 ($pseudopath/output/m0602b.txt) -- $time"; shell "perl6 -I $!path $!path/m0602b.p6"; push @status, '602b'; }
            when '602c' { $t.tput: "602c. $method06 ($pseudopath/output/m0602c.txt) -- $time"; shell "perl6 -I $!path $!path/m0602c.p6"; push @status, '602c'; }
            when '602d' { $t.tput: "602d. $method06 ($pseudopath/output/m0602d.txt) -- $time"; shell "perl6 -I $!path $!path/m0602d.p6"; push @status, '602d'; }
            when '602e' { $t.tput: "602e. $method06 ($pseudopath/output/m0602e.txt) -- $time"; shell "perl6 -I $!path $!path/m0602e.p6"; push @status, '602e'; }

            when '701a' { $t.tput: "701a. $method07 ($pseudopath/output/m0701a.txt) -- $time"; shell "perl6 -I $!path $!path/m0701a.p6"; push @status, '701a'; }
            when '701b' { $t.tput: "701b. $method07 ($pseudopath/output/m0701b.txt) -- $time"; shell "perl6 -I $!path $!path/m0701b.p6"; push @status, '701b'; }
            when '701c' { $t.tput: "701c. $method07 ($pseudopath/output/m0701c.txt) -- $time"; shell "perl6 -I $!path $!path/m0701c.p6"; push @status, '701c'; }
            when '701d' { $t.tput: "701d. $method07 ($pseudopath/output/m0701d.txt) -- $time"; shell "perl6 -I $!path $!path/m0701d.p6"; push @status, '701d'; }
            when '701e' { $t.tput: "701e. $method07 ($pseudopath/output/m0701e.txt) -- $time"; shell "perl6 -I $!path $!path/m0701e.p6"; push @status, '701e'; }
            when '702a' { $t.tput: "702a. $method07 ($pseudopath/output/m0701a.txt) -- $time"; shell "perl6 -I $!path $!path/m0702a.p6"; push @status, '702a'; }
            when '702b' { $t.tput: "702b. $method07 ($pseudopath/output/m0702b.txt) -- $time"; shell "perl6 -I $!path $!path/m0702b.p6"; push @status, '702b'; }
            when '702c' { $t.tput: "702c. $method07 ($pseudopath/output/m0702c.txt) -- $time"; shell "perl6 -I $!path $!path/m0702c.p6"; push @status, '702c'; }
            when '702d' { $t.tput: "702d. $method07 ($pseudopath/output/m0702d.txt) -- $time"; shell "perl6 -I $!path $!path/m0702d.p6"; push @status, '702d'; }
            when '702e' { $t.tput: "702e. $method07 ($pseudopath/output/m0702e.txt) -- $time"; shell "perl6 -I $!path $!path/m0702e.p6"; push @status, '702e'; }
            when '703a' { $t.tput: "703a. $method07 ($pseudopath/output/m0703a.txt) -- $time"; shell "perl6 -I $!path $!path/m0703a.p6"; push @status, '703a'; }
            when '703b' { $t.tput: "703b. $method07 ($pseudopath/output/m0703b.txt) -- $time"; shell "perl6 -I $!path $!path/m0703b.p6"; push @status, '703b'; }
            when '703c' { $t.tput: "703c. $method07 ($pseudopath/output/m0703c.txt) -- $time"; shell "perl6 -I $!path $!path/m0703c.p6"; push @status, '703c'; }
            when '703d' { $t.tput: "703d. $method07 ($pseudopath/output/m0703d.txt) -- $time"; shell "perl6 -I $!path $!path/m0703d.p6"; push @status, '703d'; }
            when '703e' { $t.tput: "703e. $method07 ($pseudopath/output/m0703e.txt) -- $time"; shell "perl6 -I $!path $!path/m0703e.p6"; push @status, '703e'; }
            when '704a' { $t.tput: "704a. $method07 ($pseudopath/output/m0704a.txt) -- $time"; shell "perl6 -I $!path $!path/m0704a.p6"; push @status, '704a'; }
            when '704b' { $t.tput: "704b. $method07 ($pseudopath/output/m0704b.txt) -- $time"; shell "perl6 -I $!path $!path/m0704b.p6"; push @status, '704b'; }
            when '704c' { $t.tput: "704c. $method07 ($pseudopath/output/m0704c.txt) -- $time"; shell "perl6 -I $!path $!path/m0704c.p6"; push @status, '704c'; }
            when '704d' { $t.tput: "704d. $method07 ($pseudopath/output/m0704d.txt) -- $time"; shell "perl6 -I $!path $!path/m0704d.p6"; push @status, '704d'; }
            when '704e' { $t.tput: "704e. $method07 ($pseudopath/output/m0704e.txt) -- $time"; shell "perl6 -I $!path $!path/m0704e.p6"; push @status, '704e'; }

            when '801a' { $t.tput: "801a. $method08 ($pseudopath/output/m0801a.txt) -- $time"; shell "perl6 -I $!path $!path/m0801a.p6"; push @status, '801a'; }
            when '801b' { $t.tput: "801b. $method08 ($pseudopath/output/m0801b.txt) -- $time"; shell "perl6 -I $!path $!path/m0801b.p6"; push @status, '801b'; }
            when '801c' { $t.tput: "801c. $method08 ($pseudopath/output/m0801c.txt) -- $time"; shell "perl6 -I $!path $!path/m0801c.p6"; push @status, '801c'; }
            when '801d' { $t.tput: "801d. $method08 ($pseudopath/output/m0801d.txt) -- $time"; shell "perl6 -I $!path $!path/m0801d.p6"; push @status, '801d'; }
            when '801e' { $t.tput: "801e. $method08 ($pseudopath/output/m0801e.txt) -- $time"; shell "perl6 -I $!path $!path/m0801e.p6"; push @status, '801e'; }
            when '802a' { $t.tput: "802a. $method08 ($pseudopath/output/m0802a.txt) -- $time"; shell "perl6 -I $!path $!path/m0802a.p6"; push @status, '802a'; }
            when '802b' { $t.tput: "802b. $method08 ($pseudopath/output/m0802b.txt) -- $time"; shell "perl6 -I $!path $!path/m0802b.p6"; push @status, '802b'; }
            when '802c' { $t.tput: "802c. $method08 ($pseudopath/output/m0802c.txt) -- $time"; shell "perl6 -I $!path $!path/m0802c.p6"; push @status, '802c'; }
            when '802d' { $t.tput: "802d. $method08 ($pseudopath/output/m0802d.txt) -- $time"; shell "perl6 -I $!path $!path/m0802d.p6"; push @status, '802d'; }
            when '802e' { $t.tput: "802e. $method08 ($pseudopath/output/m0802e.txt) -- $time"; shell "perl6 -I $!path $!path/m0802e.p6"; push @status, '802e'; }
            when '803a' { $t.tput: "803a. $method08 ($pseudopath/output/m0803a.txt) -- $time"; shell "perl6 -I $!path $!path/m0803a.p6"; push @status, '803a'; }
            when '803b' { $t.tput: "803b. $method08 ($pseudopath/output/m0803b.txt) -- $time"; shell "perl6 -I $!path $!path/m0803b.p6"; push @status, '803b'; }
            when '803c' { $t.tput: "803c. $method08 ($pseudopath/output/m0803c.txt) -- $time"; shell "perl6 -I $!path $!path/m0803c.p6"; push @status, '803c'; }
            when '803d' { $t.tput: "803d. $method08 ($pseudopath/output/m0803d.txt) -- $time"; shell "perl6 -I $!path $!path/m0803d.p6"; push @status, '803d'; }
            when '803e' { $t.tput: "803e. $method08 ($pseudopath/output/m0803e.txt) -- $time"; shell "perl6 -I $!path $!path/m0803e.p6"; push @status, '803e'; }
            when '804a' { $t.tput: "804a. $method08 ($pseudopath/output/m0804a.txt) -- $time"; shell "perl6 -I $!path $!path/m0804a.p6"; push @status, '804a'; }
            when '804b' { $t.tput: "804b. $method08 ($pseudopath/output/m0804b.txt) -- $time"; shell "perl6 -I $!path $!path/m0804b.p6"; push @status, '804b'; }
            when '804c' { $t.tput: "804c. $method08 ($pseudopath/output/m0804c.txt) -- $time"; shell "perl6 -I $!path $!path/m0804c.p6"; push @status, '804c'; }
            when '804d1' { $t.tput: "804d1. $method08 ($pseudopath/output/m0804d1.txt) -- $time"; shell "perl6 -I $!path $!path/m0804d1.p6"; push @status, '804d1'; }
            when '804d2' { $t.tput: "804d2. $method08 ($pseudopath/output/m0804d2.txt) -- $time"; shell "perl6 -I $!path $!path/m0804d2.p6"; push @status, '804d2'; }
            when '804d3' { $t.tput: "804d3. $method08 ($pseudopath/output/m0804d3.txt) -- $time"; shell "perl6 -I $!path $!path/m0804d3.p6"; push @status, '804d3'; }
            when '804e' { $t.tput: "804e. $method08 ($pseudopath/output/m0804e.p6) -- $time"; shell "perl6 -I $!path $!path/m0804e.p6"; push @status, '804e'; }

            when '901a' { $t.tput: "9. $method09 ($pseudopath/output/m0901a.txt) -- $time"; shell "perl6 -I $!path $!path/m0901a.p6"; push @status, '901a'; }
            when '901b' { $t.tput: "9. $method09 ($pseudopath/output/m0901b.txt) -- $time"; shell "perl6 -I $!path $!path/m0901b.p6"; push @status, '901b'; }
            when '901c' { $t.tput: "9. $method09 ($pseudopath/output/m0901c.txt) -- $time"; shell "perl6 -I $!path $!path/m0901c.p6"; push @status, '901c'; }
            when '901d' { $t.tput: "9. $method09 ($pseudopath/output/m0901d.txt) -- $time"; shell "perl6 -I $!path $!path/m0901d.p6"; push @status, '901d'; }
            when '901e' { $t.tput: "9. $method09 ($pseudopath/output/m0901e.txt) -- $time"; shell "perl6 -I $!path $!path/m0901e.p6"; push @status, '901e'; }
            when '902a' { $t.tput: "9. $method09 ($pseudopath/output/m0902a.txt) -- $time"; shell "perl6 -I $!path $!path/m0902a.p6"; push @status, '902a'; }
            when '902b' { $t.tput: "9. $method09 ($pseudopath/output/m0902b.txt) -- $time"; shell "perl6 -I $!path $!path/m0902b.p6"; push @status, '902b'; }
            when '902c' { $t.tput: "9. $method09 ($pseudopath/output/m0902c.txt) -- $time"; shell "perl6 -I $!path $!path/m0902c.p6"; push @status, '902c'; }
            when '902d' { $t.tput: "9. $method09 ($pseudopath/output/m0902d.txt) -- $time"; shell "perl6 -I $!path $!path/m0902d.p6"; push @status, '902d'; }
            when '902e' { $t.tput: "9. $method09 ($pseudopath/output/m0902e.txt) -- $time"; shell "perl6 -I $!path $!path/m0902e.p6"; push @status, '902e'; }

            default  { put "Saisie invalide!"; push @status, '-1'; }
        }
        return @status;
    }
}
