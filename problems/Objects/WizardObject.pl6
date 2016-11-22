#!/usr/bin/env perl6

Class Wizard {
     has Int $.age;
     has Str $.type;
     has Int $.spells;
     has Str $.name;

     method play() {
     if $.type == "pinball" {say "He beats your best"};
     else if $.type == "red" {say "$.name casts scorching ray"};
     else if $.type == "fire" {say  "$.name casts fire ball"};
     else if $.type == "grey" {say  "YOU SHALL NOT PASS!!!"};
     else if $.type == "ice" {say "$.name casts cone of cold"};
     else {say "$.name casts magic missile"};
     }

     method introduce() {
     if $.type == "pinball" && $.name = "Tommy" {say "No response"};
     else {say "I am $.name the $.type wizard"};
     }
}
