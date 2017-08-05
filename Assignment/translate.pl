means(0,zero).
means(1,one).

translate([],[]).
translate([N|T],[W|T1]):-means(N,W),translate(T,T1).
