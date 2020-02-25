%fatos
loves(romeo, juliet).
loves(juliet, romeo) :- loves(romeo, juliet).

happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).
with_albert(bob).

parent(albert,bob).
parent(albert,betsy).
parent(albert,bill).

parent(alice,bob).
parent(alice,betsy).
parent(alice,bill).

parent(bob,carl).
parent(bob,charlie).

runs(albert) :- 
    happy(albert).

dances(X) :-
    happy(X),
    with_albert(X).

does_dance(X) :- 
    dances(X),
    format('~w dances when It\'s happy and with Albert',[X]).

swims(X) :-
    happy(X).

is_even(X) :-
    Y is X//2, Y =:= 0.

what_grade(5) :-
        write('You\'re pretty!'),nl,write('!').

related(X,Y) :-
    parent(X,Y).

related(X,Y) :-
    parent(X,Z),
    related(Z,Y).
