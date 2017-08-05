delete([E|T],E,[T]).
delete([H|T],E,[H|T1]):-delete(T,E,T1).
