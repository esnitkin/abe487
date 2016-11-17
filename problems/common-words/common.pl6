#!/usr/bin/env perl6

sub MAIN (Str $f1="./const.txt", Str $f2="./dec.txt") {

    for $f1.IO.lc.lines -> $line {
         my $bag1= bag<$line.subst(/<-[\w\s]>/, '', :g).words>.keys.sort;
    };

    for $f2.IO.lc.lines -> $line {
         my $bag2=bag<$line.subst(/<-[\w\s]>/, '', :g).words>.keys.sort;
    };


}
