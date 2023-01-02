#!/usr/bin/env perl6

use v6;

=begin pod
=NAME B<MAIN.p6> : Perl 6 executable in B<algomaths>/maths/cycle1
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.07
=HISTORY 2019.02.07;

2022.12.26 : Emploi de `run' à la place de `shell'
pour accéder à la cible $ALGOMATHS/maths/cycle1/<cours>/init.p6

Modification de l'entête de la doc `pod'

=end pod

INIT {
   put 'Nice to meet you! Hope that this program will help you to make progress and have fun.';
}

sub select-a-course() {
    my Str $init-file-path = '';
    loop {
        my Str $course = prompt "Veuillez choisir un cours du cycle 1 S.V.P. (bbw, fm3 ou ms3) > ";
        if ($course eq 'bbw') {
            $init-file-path = "%*ENV<ALGOMATHS>/maths/cycle1/bbw/init.p6";
            last;
        } elsif ($course eq 'fm3') {
            $init-file-path = "%*ENV<ALGOMATHS>/maths/cycle1/fm3/init.p6";
            last;
        } elsif ($course eq 'ms3') {
            $init-file-path = "%*ENV<ALGOMATHS>/maths/cycle1/ms3/init.p6";
            last;
        } else {
            put "Identifiant du cours invalide!";
        }
    }
    
    if ($init-file-path.IO ~~ :r & :x) {
        run 'perl6', '--', $init-file-path;
    } 
    else {
        say "Désolé ! Le fichier $init-file-path est inaccessible.";
    }
}

select-a-course();

END {
   put 'Bye! Hope to see you later.';
}

