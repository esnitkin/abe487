#!/usr/bin/env perl
#file: math.pl
use strict;
use warnings;

my $n = abs($ARGV[0]);
my $m = abs($ARGV[1]);
my $s = $n+$m;

If ($s==0) {
	print "the % can not be calculated \n please enter at least one non-zero number \n";
}
else {
	print "The first value is", 100*$n/($n+$m), "% of the total";
}
