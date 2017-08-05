between_list(N1,N1,[N1]).
between_list(N1,N2,[N1|T]) :- N1<N2, NN is N1+1, between_list(NN,N2,T).

delete2(H,[H|T],T).
delete2(Element,[H|T],[H|T1]) :- delete2(Element,T,T1).

generate_lists(N,XYList, UList ,VList) :- between_list(1,N,XYList), N1 is N-1, N2 is (-1)*N1, between_list(N2,N1,UList), N3 is N*2, between_list(2,N3,VList).

solution(N,YList) :- generate_lists(N,DX,DU,DV), sol(YList,DX,DX,DU,DV).

sol([],[],_,_,_).
sol([Y|YList],[X|DX1],DY,DU,DV) :- delete2(Y,DY,DY1),U is X-Y, delete2(U,DU,DU1) , V is X+1 , delete2(V,DV,DV1),sol(YList,DX1,DY1,DU1,DV1).