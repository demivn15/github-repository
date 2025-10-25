% Intelligent maze advisor.

% Base facts.

% Maze representation.

edge(a, b).
edge(b, f).
edge(b, c).
edge(c, g).
edge(c, d).
edge(d, h).
edge(a, e).
edge(e, f).
edge(f, g).
edge(g, h).
edge(e, i).
edge(i, j).
edge(j, k).
edge(k, l).
edge(f, j).
edge(g, k).
edge(h, l).
edge(i, entrance).
edge(entrance, n).
edge(n, o).
edge(o, exit).
edge(j, n).
edge(k, o).
edge(l, exit).

% BLocked doors.

blocked_p(a, b).
blocked_p(f, g).
blocked_p(c, d).
blocked_p(g, h).
blocked_p(n, o).
blocked_p(o, exit).
blocked_p(i, entrance).
blocked_p(f, j).
blocked_p(g, k).
blocked_p(k, o).
blocked_p(d, h).

% Reasoning rules.
blocked(X, Y) :- blocked_p(X, Y); blocked_p(Y, X).
can_move(X, Y) :- (edge(X, Y); edge(Y, X)), \+ (blocked(X, Y); blocked(Y, X)).
reason(X, Y, 'path is open') :- can_move(X, Y).
reason(X, Y, 'path is blocked') :- blocked(X, Y).
reason(_, Y, 'destination reached') :- Y == exit.
reason(_, Y, 'exit not reached yet') :- Y \= exit.

% Recursive traversal with explanation.

move(X, Y, Visited, [Y | Visited]) :- can_move(X, Y), format('moving from ~w to ~w.~n', [X, Y]).
move(X, Y, Visited, Path) :- can_move(X, Z), \+ member(Z, Visited), format('exploring from ~w to ~w...~n', [X, Z]), move(Z, Y, [Z | Visited], Path).

% Main predicate.

find_path(X, Y, Path) :- move(X, Y, [X], RevPath), reverse(RevPath, Path).

% Reasoning.

% First of all, the maze is defined using edge/2 and blocked/2 facts. Then,
% the rule for the movement is defined in such way that the program checks for opened
% paths from node X  to node Y, thus the can_move/2 rule is true if there
% is a path between two nodes and there is no blocked door between them. In a 
% similar way, the blocked/2 rule checks if there is a blocked door between
% two nodes.
