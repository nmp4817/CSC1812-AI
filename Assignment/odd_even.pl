oddlist([_]).
oddlist([_|T]):-evenlist(T).
evenlist([]).
evenlist([_|T]):-oddlist(T).