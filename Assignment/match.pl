player(paresh,9).
player(prerak,10).
player(chetan,9).
player(suresh,9).
between(X,Y):-player(X,9),player(Y,9),X\=Y.
