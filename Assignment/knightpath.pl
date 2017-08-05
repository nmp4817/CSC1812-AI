
knightpath([]).

knightpath([X,Y,X1,Y1|Rest]):-
jump(X,Y,X1,Y1),knightpath([X1,Y1|Rest]).


dxy(2,-1).
dxy(1,2).
dxy(-2,1).
dxy(-1,-2).


inboard(Co_ordi):-0<Co_ordi,Co_ordi<9.

jump(X,Y,X1,Y1):-dxy(Dx,Dy),X1 is X+Dx,Y1 is Y+Dy,inboard(X1),inboard(Y1);dxy(Dy,Dx),X1 is X+Dx,Y1 is Y+Dy,inboard(X1),inboard(Y1).
                 