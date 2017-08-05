listlength([],0).
listlength([H|T],Length):-listlength(T,Tlength),Length is Tlength+1.