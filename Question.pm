#!/usr/bin/env perl
package Question;

require 5.40.0;
use strict;
use warnings;
sub new {
    my ($class, %params) = @_;
    my $self = {
        title      => $params{title},
        text       => $params{text},
        options    => $params{options},
        answer     => $params{answer},
        difficulty => $params{difficulty},
        score      => 0
    };

    bless $self, $class;
    return $self;
}


sub updateScore {
    my ($self, $evaluation) = @_;
    $self ->{score} += $evaluation ? 1 : -1;
}

sub ask {
    my $self = shift;
    my $optionCount = scalar @{ $self->{options} };

    if (defined($self -> {title})) {
        print "Question Topic: " . $self ->  {title} . " \n";
    }

    print "Question: " . $self -> {text} . "\n";

    my $i = 0;
    foreach my $option (@{ $self->{options} }) {
        print $i + 1 . ": " . $option . "\n";
        $i++;
    }

    my $user_answer = -1;
    print "Your answer: ";
    while (1) {
        $user_answer = <STDIN>;
        chomp($user_answer);
        $user_answer--;
        if ($user_answer < 0 || $user_answer >= $optionCount) {
            print "Invalid answer. Please answer with the number correspoinding to the answer you want to choose!";
            next;
        }
        last;
    }
    my $evaluation = $user_answer == $self -> {answer};
    $self -> updateScore ($evaluation);

    my $eval_score = (-1 + ($evaluation * 2)) * $self -> {difficulty};

    if(!$evaluation) {
        print "Your answer " . $user_answer + 1 . " was wrong. The correct answer was: " . $self -> {answer} . ". " . $self -> {options} -> [$self -> {answer}];
    }
    if($evaluation) {
        print "correct!"
    }

    print "\nYour score will be changed by $eval_score and this question has a score of $self->{score}.\n";
    return ($evaluation, $eval_score);
}

return 1;
