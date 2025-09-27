% Definition of facts.

likes(alice, apple).
likes(robert, sandwich).
likes(demian, pizza).
likes(bmo, pizza).
likes(harry, hotdog).

% Rule.

foodFriend(X, Y) :- likes(X, Z), likes(Y, Z), dif(X, Y).