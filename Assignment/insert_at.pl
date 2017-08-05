insert_at(List,1,E,[E|List]).
insert_at([H|T],P,E,[H|T1]):-Np is P-1,insert_at(T,Np,E,T1).