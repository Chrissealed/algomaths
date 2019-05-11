#!/usr/bin/env perl6

use v6;

=begin pod
=NAME B<init.p6> : Perl 6 executable in B<algomaths>/maths/cycle1/fm3
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.10
=end pod

use index;

my $index = Index::FM3-Index.new();
my Str @selection = $index.select();
say "Bilan des exercices effectués : @selection[]";
   
