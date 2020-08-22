equiv(falso, falso).
equiv(verdade, verdade).
equiv(X, X).
impl(verdade, verdade).
impl(falso, verdade).
impl(falso, falso).

ou(verdade, verdade).
ou(falso, verdade).
ou(verdade, falso).

e(verdade, verdade).

nao(falso).

prova(X) :- X.
