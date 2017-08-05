max(X,Y,X):-X>=Y.
max(X,Y,Y):-X<Y.
maxlist([X],X).
maxlist([X|T],Max):-maxlist(T,Max1),max(X,Max1,Max).