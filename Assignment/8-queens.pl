member1(X,[X|_]).
member1(X,[_|Y]) :- member1(X,Y).

solution([]).
solution([X,Y|Others]) :- solution(Others) , member1(Y,[1,2,3,4,5,6,7,8]), no_attack(X,Y,Others).

no_attack(X,Y,[]).
no_attack(X,Y,[X1,Y1|Others]) :-Y\=Y1 , Y1-Y \= X1-X ,	Y1-Y \= X-X1, no_attack(X,Y,Others).