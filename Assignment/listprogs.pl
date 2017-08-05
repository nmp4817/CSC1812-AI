member1(X,[X|_]).
member1(X,[_|Y]):-member1(X,Y).

append1([],L2,L2).
append1([H|T],L2,[H|T1]):-append1(T,L2,T1).

length_list([],0).
length_list([_|T],L):-length_list(T,L1),
					  L is L1+1.
					  
printList([]).
printList([H|T]):-write(H),nl,printList(T).
					  
length_list1([],N,N).
length_list1([_|T],X,N):-L1 is X+1,length_list1(T,L1,N).

sum_of([],0).
sum_of([H|T],N):-sum_of(T,N1),N is H+N1.

sum_of1([],Sum,Sum).
sum_of1([H|T],X,S):-X1 is X+H,sum_of1(T,X1,S).

last_element([H],H).
last_element([_|T],E):-last_element(T,E).

extract([H|_],1,H).
extract([_|T],Position,Element):-X is Position-1,extract(T,X,Element).

insert(List,1,E,[E|List]).
insert([H|T1],Position,E,[H|T2]):-X is Position-1,insert_list(T1,X,E,T2).

delete1([H|T],H,T).
delete1([H|T],Element,[H|T1]):-delete1(T,Element,T1).

max(X,Y,Max):-X>Y,Max=X;X<=Y,Max=Y.
max1(X,Y,Y):-X<Y,!.
max1(X,Y,X):-X>=Y.

maxList([H],H).
maxList([H|T],Max):-maxList(T,Max1),max(H,Max1,Max).

between_list(N1,N2,[N2]):-N1=N2.
between_list(N1,N2,[N1|T]):-N1<N2,NN is N1+1,between_list(NN,N2,T).

reverse_list([],[]).
reverse_list([H|T],RList):-reverse_list(T,TRList),append1(TRList,[H],RList).

palindrome(List):-reverse_list(List,List).

oddLength([_]).
oddLength([_|T]):-evenLength(T).
evenLength([]).
evenLength([_|T]):-oddLength(T).

shift([H|T],L1):-append(T,[H],L1).

shift1([H|T],L1) :- length_list1([H|T],0,Y),last_element([H|T],X),delete1([H|T],Y,List),insert(List,1,X,L1).

removeuni([H|T],L) :- member1(H,T),write("IN"),removeuni(T,[H|L]).

means(0,zero).
means(1,one).
means(2,two).
means(3,three).
means(4,four).
means(5,five).
means(6,six).
means(7,seven).
means(8,eight).
means(9,nine).
translate([],[]).
translate([H|T],[H1|T1]):-means(H,H1),translate(T,T1).

tower_hanoi(N,L):-move(N,left,center,right,L).
move(0,_,_,_,[]).
move(N,A,B,C,List):-M is N-1,move(M,A,C,B,L1),ins_list(A,C,L2),append1(L1,L2,L3),move(M,B,A,C,L4),append1(L3,L4,List).
ins_list(A,B,[[move,A,B]]).

fibonacci(1,[1]).
fibonacci(2,[1,1]).
fibonacci(N,List):-fib(N,F),N1 is N-1,fibonacci(N1,List1),append1(List1,[F],List).

fib(1,1).
fib(2,1).
fib(N,F):-N1 is N-1,N2 is N-2,fib(N1,F1),fib(N2,F2),F is F1+F2.