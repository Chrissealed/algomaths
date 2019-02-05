#!/usr/bin/env perl6

use v6;

=begin pod
=NAME Perl 6 executable in B<algomaths>/maths/cycle1/bbw/I/Perl6/B<m0602a.p6> 
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.05
=end pod

use corrective;
use teeput;
use method06;
use integer-divisors-listing;

sub answering {
    class T does Tput {}
    my $t = T.new(
        writefile => True,
        filemode => ':a', # :mode<wo>, :create, :append
        closefile => False,
        filepath => "%*ENV<ALGOMATHS>/maths/cycle1/bbw/I/Perl6/output/m0602a.txt",
    );

    my $divisors-listing = IntegerDivisorsListing.new(
        t => $t,
        array-or-hash => '@',
    );
    my @a = $divisors-listing.list-divisors(72);
    $t.tsay: @a;
    $t.closefile = True;
    $t.tprint: "\n";
}

my $xchoice = ChooseX.new();
$xchoice.exercise_02a();
my Bool $boolean = do-put-up-method();
if $boolean {
    $xchoice.put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    $xchoice.show-examples;
}
do-put-up-correct-version();
answering();

