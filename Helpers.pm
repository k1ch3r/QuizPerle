#!/usr/bin/env perl
require 5.40.0;
use strict;
use warnings;

sub ask_binary {
    # print("ask_binary called.");
    my ($QuestionString) = @_;
    my $answer = -1;

    while ($answer == -1) {
        print("\n" . $QuestionString . "\n");
        my $Input = <STDIN>;
        chomp $Input;
        $answer = parse_binary($Input);
    }

    return $answer
}

sub parse_binary {
    my ($InString) = @_;

#    print("You entered: $InString. ");

    my @trues = ("yes", "y", "j", "ja", 1);
    my @falses = ("no", "n", "nein", 0);

    if (grep { $_ eq $InString } @trues) {
        # print "Input is considered true.\n";
        return 1;
    }

    if (grep { $_ eq $InString } @falses) {
        # print "Input is considered false.\n";
        return 0;
    }

    print "Input is not recognized as true or false.\n";
    return -1;
}

sub draw_random {
    my $arr = shift;
    my $len = scalar @$arr;
    print "Draw array has $len elements before drawing.\n";

    my $index = int(rand($len));
    my $drawn = splice(@$arr, $index, 1);  # Splice removes and returns the element

    print "Drew question $index, new length of draw array is " . scalar(@$arr) . "\n";
    return $drawn;
}

1;
