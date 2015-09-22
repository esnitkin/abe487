#!/usr/bin/env perl
#file: math.pl
use strict;
use warnings;

my $word1 = $ARGV[0];
my $word2 = $ARGV[1];

if ($word1 eq $word2) {
	print "same \n";
}
else {
	print "different \n";
}
