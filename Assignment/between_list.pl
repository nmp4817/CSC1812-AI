between_list(N1,N1,[N1]).
between_list(N1,N2,[N1|T]):-N1<N2,NN1 is N1+1,between_list(NN1,N2,T).