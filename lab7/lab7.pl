% MODULE

:- use_module(library(clpfd)).

% AUSTRALIA BORDER DEFINITION

adjacent(wa, nt).
adjacent(wa, sa).
adjacent(nt, sa).
adjacent(nt, q).
adjacent(sa, q).
adjacent(sa, nsw).
adjacent(sa, v).
adjacent(q, nsw).
adjacent(nsw, v).

% SOUTH AMERICA BORDERS DEFINITION

% REFERENCE: https://geopolicraticus.wordpress.com/2010/01/17/the-map-of-south-america-changes/ 

border(venezuela, colombia).
border(venezuela, guyana).
border(venezuela, brasil).
border(colombia, ecuador).
border(colombia, brasil).
border(colombia, peru).
border(ecuador, peru).
border(suriname, guyana).
border(suriname, frenchGuiana).
border(brasil, guyana).
border(brasil, suriname).
border(brasil, frenchGuiana).
border(brasil, bolivia).
border(brasil, paraguay).
border(brasil, uruguay).
border(brasil, peru).
border(peru, bolivia).
border(peru, chile).
border(chile, bolivia).
border(chile, argentina).
border(argentina, uruguay).
border(argentina, paraguay).
border(argentina, bolivia).
border(bolivia, paraguay).
border(brasil, argentina). 

% COLOR DEFINITION

% color(1, "red").
% color(2, "green").
% color(3, "blue").
% color(4, "yellow").

% ORDERED LIST OF REGIONS

listOfRegionsAU(_List, ListOfRegions) :- findall(X, (adjacent(X, _); adjacent(_, X)), List), sort(List, ListOfRegions).

listOfRegions(_List, ListOfRegions) :- findall(X, (border(X, _); border(_, X)), List), sort(List, ListOfRegions).

% LIST OF BORDERS

bordersListAU(BordersList) :- findall((X, Y), adjacent(X, Y), BordersList).

bordersList(BordersList) :- findall((X, Y), border(X, Y), BordersList).

% COLOR NAMES

colorNames(Number, Color) :- nth1(Number, [red, green, blue, yellow], Color).

mapColor(_ListOfRegions, Regions, Vars, K) :- listOfRegionsAU(_, ListOfRegions), Regions = ListOfRegions, Vars = [_], Vars ins 1..K.
% colorize() :-
% prettyColorsByRegion() :-
