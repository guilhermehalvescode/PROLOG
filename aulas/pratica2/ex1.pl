%a
sobre(livro, mesa).
sobre(caneta, livro).
sobre(borracha, livro).

%b
acima_de(X, Y) :- sobre(X, Y).

%c
/* acima_de(b, mesa). 
    false.
*/