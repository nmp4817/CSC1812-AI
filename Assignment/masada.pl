masada([X,Y],_,_):-write('Survivor is '),write(X),nl,write('Surviovr friend is '),write(Y),!.
masada([X,_,Z],_,_):-write('Survivor is '),write(X),nl,write('Surviovr friend is '),write(Z),!.
masada(A,B,C):-len(A,L),E is L mod 2,E==0,!,split(A,B,C),!,masada(B,_,_).
masada(A,B,C):-len(A,L),E is L mod 2,E\=0,!,split(A,B,C),delfirst(B,B1),!,masada(B1,_,_).


delfirst([_|T],T).
len([],0).
len([_|T],C1):-len(T,C2),C1 is C2+1.

split([],[],[]).
split([A],[A],[]).
split([A,B|T],[A|T1],[B|T2]):-split(T,T1,T2).

sol(List):-masada(List,_,_).

