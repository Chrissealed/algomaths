#!/usr/bin/env perl6

use v6;

=begin pod
=NAME B<init.p6> : Perl 6 executable in B<algomaths>/maths/cycle1/bbw
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.03
=end pod

use index;

my $index = Index::BBW-Index.new();
my Str @selection = $index.select();
say "Bilan des exercices effectués : @selection[]";
   
