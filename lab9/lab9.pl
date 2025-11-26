% Grammar rules.

sentence --> noun_phrase, verb_phrase.
% noun_phrase --> determiner, noun.
verb_phrase --> verb, noun_phrase.

% Lexicon.

determiner --> [the] | [a].
noun --> [cat] | [dog] | [fish] | [bird].
verb --> [eats] | [sees].

% Addition of adjectives.

adjective --> [big] | [small] | [angry].
adjectives --> [] | adjective, adjectives.

% Noun phrase update.

noun_phrase --> determiner, adjectives, noun.

