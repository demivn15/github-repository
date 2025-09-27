% Definition of 10 parent/2 facts with multiple generations.

parent(john, mary).
parent(mary, susan).
parent(mary, bob).
parent(susan, alice).
parent(alice, dough).
parent(alice, jake).
parent(jake, mark).
parent(mark, rose).
parent(rose, finn).
parent(rose, joel).

% Rules.

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), dif(X, Y).

% Recursion.

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).