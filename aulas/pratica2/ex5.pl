deCarro(auckland,hamilton).
deCarro(hamilton,raglan).
deCarro(valmont,saarbruecken).
deCarro(valmont,metz).
deTrem(metz,frankfurt).
deTrem(saarbruecken,frankfurt).
deTrem(metz,paris).
deTrem(saarbruecken,paris).
deAviao(frankfurt,bangkok).
deAviao(frankfurt,singapore).
deAviao(paris,losAngeles).
deAviao(bangkok,auckland).
deAviao(losAngeles,auckland).

viagem(X, Y, Z) :- 
    deCarro(X, Y);
    deTrem(X, Y);
    deAviao(X, Y).

viagem(X, Y, Z) :-
    deCarro(X, Z),
    viagem(Z, Y).

viagem(X, Y, Z) :-
    deTrem(X, Z),
    viagem(Z, Y).

viagem(X, Y, Z) :-
    deAviao(X, Z),
    viagem(Z, Y).
    
