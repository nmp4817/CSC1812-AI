reverse([],[]).
reverse([H|T],Rlist):-reverse(T,RT),append(RT,[H],Rlist).
