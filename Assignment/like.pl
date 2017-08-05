ishuman(jay).
ishuman(amit).
ishuman(annu).
iscat(honey).
iscat(mini).
iscat(rani).
isbeutiful(honey).
isbeutiful(mini).
notlazy(honey).
notlazy(rani).
posses(jay,honey).
posses(amit,mini).
posses(annu,rani).

likes(H,C):-ishuman(H),iscat(C),isbeutiful(C),notlazy(C),posses(H,C).


