#!/usr/bin/env perl6

use v6;

=begin pod
=NAME B<algomaths1.p6> : Perl 6 executable pour B<algomaths>/maths/cycle1
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.03.21
=end pod

my $MAIN = IO::Path.new("%*ENV<ALGOMATHS>/maths/cycle1");
for $MAIN.IO.dir(test => 'MAIN.p6') -> $file { run $file, 'status' }

