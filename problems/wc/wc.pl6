#!/usr/bin/env perl6

sub MAIN (Str $input!) {
     die "Not a file" if !$input.IO.f;
     my ($lines, $words, $chars) = 0, 0, 0;

     for $input.IO.lines -> $line {
          $lines++;
          $chars++;
       	  $chars = $chars + $line.chars;
          $words = $words + $line.words.elems;
     }; 
    
     say "lines ($lines) words ($words) chars ($chars)";
}
