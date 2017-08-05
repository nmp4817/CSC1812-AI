next(1,2).
next(1,3).
next(1,4).
next(2,1).
next(2,3).
next(2,4).
next(3,1).
next(3,2).
next(3,4).
next(4,1).
next(4,2).
next(4,3).

adj(C1,C2,C3,C4) :- next(C1,C2),next(C1,C3),next(C1,C4),next(C2,C3),next(C2,C4),next(C3,C4).


solution(C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16) :- adj(C1,C2,C3,C4),adj(C5,C6,C7,C8),adj(C9,C10,C11,C12),adj(C13,C14,C15,C16),adj(C1,C5,C9,C13),adj(C2,C6,C10,C14),adj(C3,C7,C11,C15),adj(C4,C8,C12,C16),adj(C1,C2,C5,C6),adj(C3,C4,C7,C8),adj(C9,C10,C13,C14),adj(C11,C12,C15,C16).