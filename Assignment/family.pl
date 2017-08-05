parent(laxmi,nilesh);
parent(suresh,ganga).
parent(nilesh,nisha).
parent(nilesh,bhargav).
parent(suresh,nilesh).
parent(bhargav,aditya).
parent(nisha,jyoti).
parent(shubhi,laxmi).
parent(ganga,asha).
parent(nita,nisha).
parent(suresh,godavari).
parent(godavari,monali).
parent(jay,suresh).
parent(jay,raju).

female(godavari).
female(monali).
female(laxmi).
female(ganga).
female(nisha).
female(jyoti).
female(shubhi).
female(asha).
female(nita).
male(ramu).
male(suresh).
male(nilesh).
male(bhargav).
male(aditya).
male(ramesh).
male(jay).
male(raju).

wife(rajni,raju).
wife(laxmi,suresh).
wife(nisha,ramesh).
wife(nita,nilesh).
wife(godavari,ramu).

husband(X,Y):-wife(Y,X).

sister(X,Y):-parent(Z,X), parent(Z,Y),female(X),X\=Y.

brother(X,Y):-male(X),parent(Z,X),parent(Z,Y),X\=Y.

father(X,Z):-parent(X,Z),male(X).

mother(X,Y):-parent(X,Y),female(X).

kaka(X,Y):-parent(Z,X),parent(Z,P),parent(P,Y),male(X),male(P),X\=P.

kaki(X,Y):-parent(Z,Q),parent(Z,P),parent(P,Y),wife(X,P),male(P),female(X),P\=Q.

mama(X,Y):-parent(Z,X),parent(Z,P),parent(P,Y),male(X),female(P),X\=P.

mami(X,Y):-parent(Z,Q),parent(Z,P),parent(P,Y),wife(X,Q),male(Q),female(P),P\=Q.

dada(Z,X):-parent(Z,Y),parent(Y,X),male(Z),male(Y),X\=Y.

dadi(Z,X):-parent(Z,Y),parent(Y,X),male(Y),female(Z),X\=Y.

nana(Z,X):-parent(Z,Y),parent(Y,X),female(Y),male(Z),X\=Y.

nani(Z,X):-parent(Z,Y),parent(Y,X),female(Y),female(Z).

offspring(X,Y):-parent(Y,X).

foi(Y,X):-parent(Z,X),male(Z),sister(Y,Z).

fuva(X,Y):-parent(Z,Y),male(Z),sister(P,Z),husband(X,P).

masi(X,Y):-parent(Z,Y),female(Z),sister(X,Z).

masa(X,Y):-parent(Z,Y),female(Z),sister(P,Z),husband(X,P).

sibling(X,Y):-parent(Z,X),parent(Z,Y),X\=Y.

cousinbro(Y,X):-parent(Z,X),sibling(P,Z),parent(P,Y),male(Y),X\=Y,Z\=P.

cousinsis(Y,X):-parent(Z,X),sibling(P,Z),parent(P,Y),female(Y),X\=Y,Z\=P.
