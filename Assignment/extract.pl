extract([H|T],1,H).
extract([_|T],P,E):-NP is P-1,extract(T,NP,E).
