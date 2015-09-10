#!/usr/bin/env perl
use strict;
use warnings;

print '"Hello Tucson";"';
print "\n Enter your name \n";
my $name = <STDIN>;
print "Hello $name, \n \t Thank you for telling me your name.\n In recognition of this event I will place your name on a new line proceded by three tabs \n \t \t \t $name";
print "In single quotes the contents are literaly printed and no interpolation ocours \n";
print 'Hello $name, \n \t Thank you for telling me your name.\n In recognition of this event I will place your name on a new line proceded by three tabs \n \t \t \t $name';
print "\n";
print 'This is important to note when math statements like 2+3 are involved';
print "\n by using double quotes math statments can be evaluated before display \n";
print '2+3=', "2+3";
