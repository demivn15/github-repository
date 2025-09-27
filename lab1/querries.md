# Querries

## Who are the ancestors of a specific person?

1 ?- \[family\].  
true.  

2 ?- ancestor(Who, rose).  
Who = mark;  
Who = john;  
Who = mary;  
Who = susan;  
Who = alice;  
Who = jake;  
false.

## Who are sibling in your family tree?

3 ?- sibling(X, Y).  
X = susan,  
Y = bob ;  
X = bob,  
Y = susan;  
X = dough,  
Y = jake;  
X = jake,  
Y = dough;  
X = finn,  
Y = joel;  
X = joel,  
Y = finn;  
false.

## Who are food friends?

4 ?- \[food\].  
true.  

5 ?- foodFriend(X, Y).  
X = demian,  
Y = bmo ;  
X = bmo,   
Y = demian ;  
false.

## What is the factorial of 6?

1 ?- [math].  
true.  

2 ?- factorial(6, F).  
F = 720

## What is the sum of \[2,4,6,8\]?

3 ?- sumList([2,4,6,8], Sum).   
Sum = 20.

## What is the length of \[a,b,c,d\]?

4 ?- lenList([a,b,c,d], Len).  
Len = 4.

## Append \[1,2\] and \[3,4\]

6 ?- appendList([1,2], [3,4], Result).   
Result = [1, 2, 3, 4].