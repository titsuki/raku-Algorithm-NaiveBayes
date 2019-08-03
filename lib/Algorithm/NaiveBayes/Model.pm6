use v6;

use Algorithm::NaiveBayes::Classifiable;
unit class Algorithm::NaiveBayes::Model:ver<0.0.3>;

has Algorithm::NaiveBayes::Classifiable $!classifier;

submethod BUILD(:$!classifier) {}

method word-given-class(Str $word, Str $class) {
    $!classifier.word-given-class($word, $class);
}

multi method predict(%v) {
    $!classifier.predict(%v);
}

multi method predict(Str $text) {
    $!classifier.predict($text);
}
