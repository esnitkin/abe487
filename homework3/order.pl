
#!/usr/bin/env perl
#file: math.pl
use strict;
use warnings;

my $w0=$ARGV[0];
my $w1=$ARGV[1];
my $w01=join @ARGV;
my $oo='';

sort -d w0, w1 | $oo
if ($oo eq $w01) {
	print "right order";
}
else {
	print "wrong order";
}
