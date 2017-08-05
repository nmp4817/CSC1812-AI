next(r,y).
next(r,w).
next(r,b).
next(b,y).
next(b,w).
next(b,r).
next(y,r).
next(y,b).
next(y,w).
next(w,b).
next(w,r).
next(w,y).

adj(R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13) :- next(R1,R2),next(R1,R5),next(R1,R6),next(R1,R10),next(R2,R3),next(R2,10),next(R2,11),next(R3,R4),next(R3,R7),next(R3,R11),next(R4,R5),next(R4,R7),next(R5,R6),next(R5,R7),next(R6,R7),next(R6,R8),next(R6,R10),next(R7,R8),next(R7,R9),next(R7,R11),next(R8,R9),next(R8,R10),	next(R9,R10),next(R9,R11),next(R10,R11),next(R10,R12),next(R11,R13).