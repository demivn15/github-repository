% EDGES DEFINITION

edge(a, b).
edge(b, c).
edge(a, d).
edge(d, c).
edge(c, a).

% MAZE

edge(d0, d1).
edge(d1, d2).
edge(d1, d3).
edge(d1, d4).
edge(d4, d5).
edge(d4, d10).
edge(d5, d6).
edge(d6, d7).
edge(d7, d8).
edge(d8, d9).
edge(d8, d10).
edge(d9, d11).
edge(d11, d12).
edge(d11, d17).
edge(d12, d13).
edge(d12, d15).
edge(d13, d14).
edge(d14, d16).
edge(d16, d17).
edge(d16, d18).
edge(d18, d19).
edge(d19, d20).
edge(d19, d21).

% PATH DEFINITION

% Recursion no addresed.

% path(Start, End) :- edge(Start, End).
% path(Start, End) :- edge(Start, Aux), path(Aux, End).

% Recursion addresed.

path(X, Y, Path) :- travel(X, Y, [X], Path).
travel(X, Y, Visited, Path) :- edge(X, Y), append(Visited, [Y], Path).
travel(X, Y, Visited, Path) :- edge(X, Z), \+ member(Z, Visited), append(Visited, [Z], NewPath), travel(Z, Y, NewPath, Path).

% MAZE LOGIC

connectedPath(X, Y) :- edge(X, Y).
connectedPath(X, Y) :- edge(Y, X).

mazePath(X, Y, Path) :- mazeTravel(X, Y, [X], Path).
mazeTravel(X, Y, Visited, Path) :- connectedPath(X, Y), append(Visited, [Y], Path).
mazeTravel(X, Y, Visited, Path) :- connectedPath(X, Z), \+ member(Z, Visited), append(Visited, [Z], NewPath), mazeTravel(Z, Y, NewPath, Path).
