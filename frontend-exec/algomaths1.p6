#!/usr/bin/env perl6

use v6;

=begin pod
=NAME B<algomaths1.p6> : Perl 6 executable pour B<algomaths>/maths/cycle1
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.01
=end pod

my Str $target-dir = "%*ENV<ALGOMATHS>/maths/cycle1";
my Str $target-file = "%*ENV<ALGOMATHS>/maths/cycle1/MAIN.p6";
shell "perl6 -I $target-dir $target-file";

