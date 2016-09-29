#!/usr/bin/env perl6

sub MAIN (str :$name!) {


    if ( @*ARGS.elems != 1 ) {
          note "usage: Please enter your name \n";
          exit 1;
    } else {
          say "Hello, ";
          say $name;
          say ", your name has ";
          say "$name.chars";
          say "characters";
    };
}
