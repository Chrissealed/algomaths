#!/usr/bin/env perl6

use v6;

=begin pod
=NAME B<algomaths1.p6> : Perl 6 executable pour B<algomaths>/maths/cycle1
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2022.12.26
=HISTORY 2019.02.01;

2022.12.26 : Emploi de `run' à la place de `shell'
pour accéder à la cible $ALGOMATHS/maths/cycle1/MAIN.p6

Modification de l'entête de la doc `pod'

=end pod

my Str $target-file = "%*ENV<ALGOMATHS>/maths/cycle1/MAIN.p6";
run 'perl6', $target-file;

