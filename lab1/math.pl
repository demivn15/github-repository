% Definition of factorial (recursively).

factorial(1, 1).
factorial(N, F) :- N > 1, N1 is N - 1, factorial(N1, F1), F is N * F1.

% Definition of a rule to compute the sum of a list.

sumList([], 0).
sumList([H|T], Sum) :- sumList(T, N), Sum is N + H.

% Implementation of a rule to get the length of a list.

lenList([], 0).
lenList([_|T], Len) :- lenList(T, N), Len is N + 1.

% Implementation of a rule to append an element (or list) to another list.

appendList([], List2, List2).
appendList([H|T], List2, [H|Result]) :- appendList(T, List2, Result).