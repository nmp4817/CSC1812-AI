next(1,2).
next(1,3).
next(1,4).
next(1,5).
next(1,6).
next(2,1).
next(2,3).
next(2,4).
next(2,5).
next(2,6).
next(3,1).
next(3,2).
next(3,4).
next(3,5).
next(3,6).
next(4,1).
next(4,2).
next(4,3).
next(4,5).
next(4,6).
next(5,1).
next(5,2).
next(5,3).
next(5,4).
next(5,6).
next(6,1).
next(6,2).
next(6,3).
next(6,4).
next(6,5).


adj(C1,C2,C3,C4,C5,C6) :- next(C1,C2),next(C1,C3),next(C1,C4),next(C1,C5),next(C1,C6),next(C2,C3),next(C2,C4),next(C2,C5),next(C2,C6),next(C3,C4),next(C3,C5),next(C3,C6),next(C4,C5),next(C4,C6),next(C5,C6).

solution(C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,C22,C23,C24,C25,C26,C27,C28,C29,C30,C31,C32,C33,C34,C35,C36) :- 
adj(C1,C2,C3,C4,C5,C6),adj(C7,C8,C9,C10,C11,C12),adj(C13,C14,C15,C16,C17,C18),adj(C19,C20,C21,C22,C23,C24),adj(C25,C26,C27,C28,C29,C30),adj(C31,C32,C33,C34,C35,C36),
adj(C1,C7,C13,C19,C25,C31),adj(C2,C8,C14,C20,C26,C32),adj(C3,C9,C15,C21,C27,C33),adj(C4,C10,C16,C22,C28,C34),adj(C5,C11,C17,C23,C29,C35),adj(C6,C12,C18,C24,C30,C36),
adj(C1,C2,C3,C7,C8,C9),adj(C4,C5,C6,C10,C11,C12),adj(C13,C14,C15,C19,C20,C21),adj(C16,C17,C18,C22,C23,C24),adj(C25,C26,C27,C31,C32,C33),adj(C28,C29,C30,C34,C35,C36).