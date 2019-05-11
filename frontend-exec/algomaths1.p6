#!/usr/bin/env perl6

use v6;

=begin pod
=NAME B<algomaths1.p6> : Perl 6 executable pour B<algomaths>/maths/cycle1
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.04.30
=end pod

my $Main = IO::Path.new("%*ENV<ALGOMATHS>/maths/cycle1");
for $Main.dir(test => 'MAIN.p6').Str -> $file { run $file, 'status' }

