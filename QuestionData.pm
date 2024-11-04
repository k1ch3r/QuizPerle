#!/usr/bin/env perl
package QuestionData;

require 5.40.0;
use strict;
use warnings;
use Question;

my @questions = ();

push @questions,
    Question -> new(
    title      => "Perl nickname",
    text       => "What is a popular slogan for perl?",
    options    => ["Batteries Included", "The Swiss Army Chainsaw of Scripting Languages", "The Language of the Web", "Write Once, Run Anywhere"],
    answer     => 1,
    difficulty => 1
    ),
    Question -> new(
        title      => "Shebang",
        text       => "What is a 'shebang'?",
        options    => ["A fatal error that blows your app up", "A way to verbalize '#!'", "A popular module for rate limiting", "A woman who is confident and has the skills to back that up"],
        answer     => 1,
        difficulty => 1
    ),
    Question -> new(
        title      => "Primary Data Types",
        text       => "Which of these options is NOT a primary data type in perl?",
        options    => ["Scalar", "Hash", "Boolean", "Array"],
        answer     => 2,
        difficulty => 2
    ),
    Question -> new(
        title      => "Single line comment",
        text       => "How do you comment out a single line in perl?",
        options    => ["//", "--", "#", "%"],
        answer     => 2,
        difficulty => 1
    ),
    Question -> new(
        title      => "chomp()",
        text       => "What does the chomp function do?",
        options    => ["Removes leading spaces from a string", "Removes the last character of a string", "Converts a string to lowercase", "Removes a newline character from the end of a string"],
        answer     => 3,
        difficulty => 2
    ),
    Question -> new(
        title      => "Primary Data Types",
        text       => "What is the correct syntax to declare an array in Perl?",
        options    => ["\@array = (1, 2, 3)", "\$array = [1, 2, 3]", "%array = (1, 2, 3)", "array[] = {1, 2, 3}"],
        answer     => 0,
        difficulty => 2
    ),
    Question -> new(
        title      => "Primary Data Types",
        text       => "Which function is used to get the keys of a hash in Perl?",
        options    => ["\@array = (1, 2, 3)", "\$array = [1, 2, 3]", "%array = (1, 2, 3)", "array[] = {1, 2, 3}"],
        answer     => 0,
        difficulty => 2
    ),


A) values()
B) keys()
C) each()
D) split()
Answer: B) keys()
    ;

sub get_questions {
    return @questions;
}

sub get_question {
    my ($index) = @_;
    return $questions[$index] if defined $questions[$index];
    return;
}

return 1;
