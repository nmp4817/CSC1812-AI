dxy(2,-1).

dxy(2,1).

dxy(1,2).

dxy(1,-2).

dxy(-1,-2).

dxy(-1,2).

dxy(-2,-1).

dxy(-2,1).


inboard(Co_ordi):-0<Co_ordi,Co_ordi<9.

knightjump(X,Y,X1,Y1):-dxy(Dx,Dy),X1 is X+Dx,inboard(X1),Y1 is Y+Dy,inboard(Y1).
