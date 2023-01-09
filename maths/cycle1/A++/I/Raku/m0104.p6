#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<m0104.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.02
=end pod

use method01to04;

sub answering {
    my Junction $any-junction = 4|'d'|'D';
    my $xchoice = ChooseX.new();
    my Bool $status = $xchoice.exercises_01to04($any-junction);
}  

answering();

