%(a)
disjunto([],[]).

disjunto([H|Hs], [X|Xs]) :-
    not(member(H, [X|Xs])),
    not(member(X, [H|Hs])),
    disjunto(Hs, Xs).

%(b)
uniao([],L,L).

uniao([H|T],L,U):-
    uniao(T,L2,U).

%(c)
disjunto([],[]).

disjunto([H|Hs], [X|Xs], []) :-
    member(H, [X|Xs]),
    member(X, [H|Hs]),
    disjunto(Hs, Xs).
