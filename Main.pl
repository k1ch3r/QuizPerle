#!/usr/bin/env perl
require 5.40.0;
use strict;
use warnings;
use lib '.';
use Helpers;
use Question;
use QuestionData;

my $running = 1;
my $score = 0;
my $q_count = 0;
my $success_count = 0;
my $streak = 0;
my @questions = QuestionData::get_questions();

print "Welcome to this stupid little quiz app!\n";

while ($running) {
    my $q_index = int(rand(scalar(@questions)));
    my $q = draw_random(\@questions);
    my @roundScore = $q -> ask();
    $q_count++;
    $score += $roundScore[1];
    if ($roundScore[0]) {
        $success_count ++;
        $streak += 1;
    }
    else {
        $streak = 0;
    }
    print_state();
    $running = ask_binary("Continue?");
}

print "Thanks for playing!";

sub print_state {
    print "You answered $success_count of $q_count questions answered correctly.\n" .
    "Score: $score ";
    # if ($streak != 0) {
        print "Current streak: $streak"
    # }
}
