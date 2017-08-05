is_integer(1).
is_integer(N) :- is_integer(M),  N is M+1.

pythag(X,Y,Z) :- intriple(X,Y,Z),X\=0,Y\=0,Z\=0,Sumsq is X*X + Y*Y , Sumsq is Z*Z.

intriple(X,Y,Z) :- is_integer(Sum), minus(Sum,X,Sum1) , minus(Sum1,Y,Z).

minus(Sum,Sum,0).
minus(Sum,D1,D2) :- Sum>0 ,Sum1 is Sum-1, minus(Sum1,D1,D3), D2 is D3+1.