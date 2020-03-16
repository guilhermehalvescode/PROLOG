likes(joao, pyong).
likes(pyong, sopa_de_morcego).

influencer(pyong).                

gostade(X, Y) :- likes(X, Z), influencer(Z), likes(Z, Y).