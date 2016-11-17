#!/usr/bin/env perl6

sub MAIN (Str $f1="./const.txt", Str $f2="./dec.txt") {

     my @bag1= bag <$f1.IO.words.lc.subst(/<-[\w\s]>/, '', :g)>.keys.sort;
     my @bag2= bag <$f2.IO.words.lc.subst(/<-[\w\s]>/, '', :g)>.keys.sort;

     my @set1= $f1.IO.words.lc.subst(/<-[\w\s]>/, '', :g).Set;
     my @set2= $f2.IO.words.lc.subst(/<-[\w\s]>/, '', :g).Set;


      put (@set1 (&) @set2).elems;

      put (@bag1 (&) @bag2).elems;
 
}
