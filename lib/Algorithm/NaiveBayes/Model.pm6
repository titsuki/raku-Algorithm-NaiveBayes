use v6;

use Algorithm::NaiveBayes::Classifiable;
unit class Algorithm::NaiveBayes::Model:ver<0.0.3>;

has Algorithm::NaiveBayes::Classifiable $!classifier;

submethod BUILD(:$!classifier) {}

multi method predict(%v) {
    $!classifier.predict(%v);
}

multi method predict(Str $text) {
    $!classifier.predict($text);
}

method word-given-class(Str $word, Str $class) {
    $!classifier.word-given-class($word, $class);
}

=begin pod

=head1 NAME

Algorithm::NaiveBayes::Model - The Algorithm::NaiveBayes::Model class

=head1 DESCRIPTION

The Algorithm::NaiveBayes::Model class

=head2 METHODS

=head3 predict

    multi method predict(Str $text)
    multi method predict(%attributes)

Returns the class given document for each classes. These probabilities are represented by logarithms. The resulting list is sorted by descending order of probability.

=head3 word-given-class

    method word-given-class(Str $word, Str $class)

Returns the word given class.

=head1 AUTHOR

titsuki <titsuki@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2016 titsuki

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

This algorithm is from Manning, Christopher D., Prabhakar Raghavan, and Hinrich Schutze. Introduction to information retrieval. Vol. 1. No. 1. Cambridge: Cambridge university press, 2008.

=end pod
