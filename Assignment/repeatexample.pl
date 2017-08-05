user(ramesh,force).
user(suresh,xyz).
user(hemant,happy).

logon:-getInput(_,_),write('You are logged on'),nl.

logon:- repeat,write('Sorry access denied'),nl,
		write('Please try again'),nl,getInput(_,_),write('You are logged on'),nl.
		
getInput(Username,Password):- write('Enter your username : '),read(Username),
				write('Enter your password : '),read(Password),
				user(Username,Password).