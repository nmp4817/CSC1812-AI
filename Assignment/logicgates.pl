and1(0,0,0).
and1(0,1,0).
and1(1,0,0).
and1(1,1,1).

or1(0,0,0).
or1(0,1,1).
or1(1,0,1).
or1(1,1,1).

not1(0,1).
not1(1,0).

xor1(X,Y,Z):-not1(Y,Y1),not1(X,X1),and1(X,Y1,Z1),and1(X1,Y,Z2),or1(Z1,Z2,Z).

xnor(X,Y,Z):-xor1(X,Y,Z1),not1(Z1,Z).

nand(X,Y,Z):-and1(X,Y,Z1),not1(Z1,Z).

nor(X,Y,Z):-or1(X,Y,Z1),not1(Z1,Z).