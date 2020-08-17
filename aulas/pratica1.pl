mulher(ana).
mulher(juliana).
mulher(paula).
mulher(fernanda).
mulher(roberta).
mulher(leticia).
mulher(rubiula).
mulher(barbie).

homem(felipe).
homem(joao).
homem(cleber).
homem(carlos).
homem(antonio).
homem(jefferson).

pai(cleber, paula).
pai(cleber, leticia).
pai(joao, carlos).
pai(joao, antonio).
pai(antonio, jefferson).
pai(antonio, barbie).

pai(carlos, ana).
pai(carlos, felipe).
pai(carlos, juliana).

mae(fernanda, paula).
mae(fernanda, leticia).
mae(roberta, carlos).
mae(roberta, antonio).
mae(rubiula, jefferson).
mae(rubiula, barbie).
mae(paula, ana).
mae(paula, felipe).
mae(paula, juliana).

%definição de avo
avo(Vo, Neto) :-
    pai(Vo, Pessoa),
    pai(Pessoa, Neto).

avo(Vo, Neto) :-
    pai(Vo, Pessoa),
    mae(Pessoa, Neto).

%definição de filho
filho(Filho, Alguem) :-
    homem(Filho),
    pai(Alguem, Filho).

filho(Filho, Alguem) :-
    homem(Filho),
    mae(Alguem, Filho).

%definição de filha
filha(Alguem, Outra) :-
    mulher(Alguem),
    pai(Outra, Alguem).

filha(Alguem, Outra) :-
    mulher(Alguem),
    mae(Outra, Alguem).
    
%definição de irmao
irmao(X, Y) :-
    filho(X, Z),
    filho(Y, Z),
    dif(X, Y).

irmao(X, Y) :-
    filho(X, Z),
    filha(Y, Z),
    dif(X, Y).

%definição de irmã
irma(X, Y) :-
    filha(X, Z),
    filho(Y, Z),
    dif(X, Y).

irma(X, Y) :-
    filha(X, Z),
    filha(Y, Z),
    dif(X, Y).

%definição de tio
tio(X, Y) :-
    irmao(X, Z),
    pai(Z, Y).

tio(X, Y) :-
    irmao(X, Z),
    mae(Z, Y).

%definição de tia
tia(X, Y) :-
    irma(X, Z),
    pai(Z, Y).

tia(X, Y) :-
    irma(X, Z),
    mae(Z, Y).

%definição de primo
primo(X, Y) :-
    homem(X),
    tio(Z, X),
    filho(Y, Z).

primo(X, Y) :-
    homem(X),
    tia(Z, X),
    filha(Y, Z).

primo(X, Y) :-
    homem(X),
    tio(Z, X),
    filha(Y, Z).

primo(X, Y) :-
    homem(X),
    tia(Z, X),
    filho(Y, Z).

%definição de prima
prima(X, Y) :-
    mulher(X),
    tio(Z, X),
    filho(Y, Z).

prima(X, Y) :-
    mulher(X),
    tia(Z, X),
    filha(Y, Z).

prima(X, Y) :-
    mulher(X),
    tio(Z, X),
    filha(Y, Z).

prima(X, Y) :-
    mulher(X),
    tia(Z, X),
    filho(Y, Z).  

avoM(Vo, Neto) :-
    mae(Vo, Pessoa),
    pai(Pessoa, Neto).

avoM(Vo, Neto) :-
    mae(Vo, Pessoa),
    mae(Pessoa, Neto). 