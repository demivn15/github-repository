% DCG semantic lab tutorial.

% Core semantic grammar without semantic implementation for adjectives.

sentence(Sem)          --> noun_phrase(Subj), verb_phrase(Subj, Sem).
noun_phrase(Subj)      --> determiner, adjectives, noun(Subj).
verb_phrase(Subj, Sem) --> verb(V), noun_phrase(Obj), {Sem =.. [V, Subj, Obj]}.

% Lexicon.

% Now, instead of having noun/0 and verb/0, we pass an argument. the determiner/0 stays the same.

determiner --> [the] | [a].

noun(cat)  --> [cat].
noun(dog)  --> [dog].
noun(fish) --> [fish].
noun(bird) --> [bird].

verb(eats) --> [eats].
verb(sees) --> [sees].

% Addition of adjectives / syntax-only.

adjective  --> [big] | [small] | [angry].
adjectives --> [] | adjective, adjectives.