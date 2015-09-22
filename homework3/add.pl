
#!/usr/bin/env perl
#file: math.pl
use strict;
use warnings;

my $x = $ARGV[0];
my $y = $ARGV[1];

if (defined(x) && defined(y)) {
	if ($x < 0 || $y < 0) {
		die "please provide positive numbers \n"; 
	}
	print "$x + $y = ", y+x, "\n";
}
elsif (!defined(x) || !defined(y)){
	print "please provide two numbers!";
}
