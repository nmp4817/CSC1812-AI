sum_list([],0).
sum_list([H|T],S):-sum_of(T,Ts),S is Ts+1.