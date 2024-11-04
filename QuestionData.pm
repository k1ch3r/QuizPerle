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
        title      => "Listing the keys of a hash table",
        text       => "Which function is used to get the keys of a hash in Perl?",
        options    => ["values()", "keys()", "each()", "split()"],
        answer     => 1,
        difficulty => 1
    ),
    Question -> new(
        title      => "File reading",
        text       => "How do you open a file for reading in Perl??",
        options    => ["open(FH, \"<file.txt\")", "open FILENAME, \"file.txt\"", "file.open(\"file.txt\", \"r\")", "open FH, file.read()"],
        answer     => 0,
        difficulty => 2
    ),
    Question -> new(
        title      => "Module imports",
        text       => "Which of the following is used to include a module in Perl?",
        options    => ["include 'Module'", "require 'Module'", "import 'Module'", "use Module"],
        answer     => 3,
        difficulty => 1
    ),
    Question -> new(
        title      => "\@_ array",
        text       => "What is the purpose of the \@_ array in a subroutine?",
        options    => ["Stores the return values of a function", "Stores the arguments passed to a function", "Stores all declared variables", "Holds environment variables"],
        answer     => 1,
        difficulty => 1
    ),
    Question -> new(
        title      => "die vs. warn",
        text       => "What is the difference between die and warn in Perl?",
        options    => ["die continues execution, warn stops execution", "die prints an error message and exits, warn only prints an error message", "die logs errors, warn raises exceptions", "There is no difference"],
        answer     => 1,
        difficulty => 2
    ),
    Question -> new(
        title      => "Exception handling",
        text       => "How do you handle exceptions in Perl?",
        options    => ["Using eval {}", "Using try-catch blocks", "Using finally", "Using catch {}"],
        answer     => 0,
        difficulty => 2
    ),
    Question -> new(
        title      => "Iterating over a hash table",
        text       => "Which of the following methods can be used to iterate over a hash in Perl?",
        options    => ["Using a while loop with each()", "Using for with keys()", "Both A and B", "Neither A nor B"],
        answer     => 2,
        difficulty => 2
    ),
    Question -> new(
        title      => "grep",
        text       => "What does the grep function do in Perl?",
        options    => ["Searches for a file in the file system", "Filters a list based on a condition", "Sorts an array", "Splits a string into an array"],
        answer     => 1,
        difficulty => 2
    ),
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
