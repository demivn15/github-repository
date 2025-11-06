% MODULE

:- use_module(library(clpfd)).

% TASK DEFINITION
 
% task(Name, Duration, Resource).

tasks([task(a,3,1), task(b,2,1), task(c,4,2)]).

% SCHEDULE LOGIC

schedule(Tasks, Starts, Ends, Makespan) :-
    findall(X, member(task(_,X,_), Tasks), Durations),
    findall(Y, member(task(_,_,Y), Tasks), Resources),
    length(Tasks, N),
    length(Starts, N),
    length(Ends, N),
    Starts ins 0..100,
    Ends ins 0..100,
    maplist(constrains, Starts, Durations, Ends),
    noOverlap(Starts, Durations, Resources),
    maximum(Makespan, Ends),
    append(Starts, Ends, AllVars),
    append(AllVars, [Makespan], Vars),
    Vars ins 0..100,
    labeling([min(Makespan)], Vars),
    printSchedule(Tasks, Starts, Ends, Makespan).

maximum(Max, List) :- foldl(max_fd, List, 0, Max).

max_fd(X, Acc, Max) :- Max #= max(X, Acc).



constrains(Start, Duration, End) :- End #= Start + Duration.

noOverlap([], [], []).
noOverlap([S|Ss], [D|Ds], [R|Rs]) :-
    End #= S + D,
    noOverlap(Ss, Ds, Rs),
    avoidOverlapping(S, End, R, Ss, Ds, Rs).

avoidOverlapping(_, _, _, [], [], []).
avoidOverlapping(S1, E1, R1, [S2|Ss], [D2|Ds], [R2|Rs]) :-
    E2 #= S2 + D2,
    (R1 #= R2) #==> (E1 #=< S2 #\/ E2 #=< S1),
    avoidOverlapping(S1, E1, R1, Ss, Ds, Rs).

printSchedule(Tasks, Starts, Ends, Makespan) :-
    maplist(printTask, Tasks, Starts, Ends),
    format("Makespan: ~d~n", [Makespan]).

printTask(task(Name,_,_), Start, End) :-
    format("Task ~w: Start = ~d, End = ~d~n", [Name, Start, End]).
