likes(joao, pyong).
likes(pyong, sopa_de_morcego).

influencer(pyong).                

gostade(X, Y) :- likes(X, Z), influencer(Z), likes(Z, Y).

male(albert).
male(edward).

female(alice).
female(victoria).

parents(edward,victoria,albert).
parents(alice,victoria,albert).


sister_of(X,Y) :-
    female(X),
    parents(X,M,D),
    parents(Y,M,D),
    X \== Y.