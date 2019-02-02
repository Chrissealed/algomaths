#!/usr/bin/env perl6

use v6;

=begin pod
=NAME B<init.p6> : Perl 6 executable in B<algomaths>/maths/cycle1/bbw/
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.01
=end pod

use index;

INIT {
   put 'Nice to meet you! Hope that this program will help you to make progress and have fun.';
}

my $index = Index::BBW-Index.new();
my Str @selection = $index.select();
say "Bilan des exercices effectués : @selection[]";
   
END {
   put 'Bye! Hope to see you later.';
}

