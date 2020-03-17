male(bob).
male(bill).
male(richard).
male(ben).
male(robert).

female(katherine).
female(layla).
female(suzy).
female(stela).
female(maria).

mother(layla, katherine).
mother(layla, bill).

father(bob, katherine).
father(bob, bill).

parent(bob, katherine).
parent(bob, bill).
parent(layla, katherine).
parent(layla, bill).
parent(ben, bob).
parent(suzy, bob).
parent(ben, maria).
parent(suzy, maria).
parent(richard, layla).
parent(stela, layla).
parent(stela, robert).
parent(richard, robert).

diff(X, Y) :- 
    X \== Y.

is_mother(Mom, Son) :- 
    female(Mom),
    mother(Mom, Son).

is_father(Dad, Son) :-
    male(Dad),
    father(Dad, Son).

is_son(Child, Parent) :-
    male(Child),
    parent(Parent, Child).

sister_of(Sis, Per) :-
    female(Sis),
    parent(Parent, Sis),
    parent(Parent, Per),
    diff(Sis, Per).

grandpa_of(Grand, Gchild) :-
    male(Grand),
    parent(Grand, Father),
    parent(Father, Gchild).

sibling(Per1, Per2) :-
    parent(Parent, Per2),
    parent(Parent, Per1),
    diff(Per1, Per2).

aunt(X, Y) :-
    sister_of(X, Z),
    parent(Z, Y).

