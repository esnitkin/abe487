#!/usr/bin/env perl6

sub MAIN (Str $input!, Numeric :$threshold = 0.3) {
    die "Usage: Must be a file" if !$input.IO.f;
    my ($CG, $bp, $percent) = 0, 0, 0;

    for $input.IO.lines -> $line {
        # next if is header
        $bp = $line.chars;
        for $line.comb {
            when 'g' {$CG++}
            when 'c' {$CG++}
        }
        $percent = $CG/$bp;    

        if $percent gt $threshold {put join ":", $percent, " burkholderia"}
        else {put join ":", $percent, " anthrax"};
    }
}

