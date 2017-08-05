append1([],L2,L2).
append1([H|T],L2,[H|T1]):-append1(T,L2,T1).

bubsort(L,S):-append1(X,[A,B|Y],L),B<A,!,append1(X,[B,A|Y],M),bubsort(M,S).
bubsort(SL,SL).


partition(H,[A|X],[A|Y],Z):-A=<H,partition(H,X,Y,Z).
partition(H,[A|X],Y,[A|Z]):-H<A,partition(H,X,Y,Z).
partition(_,[],[],[]).

quicksort([],[]).
quicksort([H|T],S):-partition(H,T,A,B),quicksort(A,A1),quicksort(B,B1),append1(A1,[H|B1],S).