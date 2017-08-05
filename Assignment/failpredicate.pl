/*go:-write('City'),write(' '),write('State'),nl.*/
go:-location(City,State),write(City),write(' '),write(State),nl,fail.
/*ckState('Mah'):-fail.*/
location('Ahmedabad','Guj').
location('Mumbai','Mah').
location('Baroda','Guj').