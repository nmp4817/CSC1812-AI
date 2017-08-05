between(N1,N1,N1):-N1<N2.
between(N1,N2,N):-N1<N2,NN1 is N1+1,between(NN1,N2,T).