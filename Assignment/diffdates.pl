month(jan,31).
month(feb,29).
month(mar,31).
month(apr,30).
month(may,31).
month(jun,30).
month(jul,31).
month(aug,31).
month(sep,30).
month(oct,31).
month(nov,30).
month(dec,31).

next(jan,feb).
next(feb,mar).
next(mar,apr).
next(apr,may).
next(may,jun).
next(jun,jul).
next(jul,aug).
next(aug,sep).
next(sep,oct).
next(oct,nov).
next(nov,dec).
next(dec,jan).

days_in_year(Y,366):-Yt1 is Y mod 4,Yt2 is Y mod 100, Yt3 is Y mod 400 ,Yt1==0,Yt2\=0,Yt3\=0,!;Yt1 is Y mod 4,Yt2 is Y mod 100, Yt3 is Y mod 400 ,Yt1==0,Yt2==0,Yt3==0,!.
days_in_year(_,365).

diffdate(D1,M1,Y1,D1,M1,Y1,0).
diffdate(D1,M1,Y1,D2,M1,Y1,Diff):-Diff1 is D1-D2,Diff1<0,Diff is -Diff1;Diff is D1-D2.
diffdate(D1,M1,Y1,D2,M2,Y1,Diff):-Ytemp is Y1 mod 4,Ytemp\=0,countdays(M1,M2,DD),DD1 is DD-D1,Diff is DD1+D2.
							
diffdate(D1,M1,Y1,D2,M2,Y2,Diff):-days_bet_years(Y1,Y2,DY),diffdate(D1,M1,Y2,D2,M2,Y2,Diff1),Diff is DY+Diff1.


days_bet_years(Y1,Y1,0).
days_bet_years(Y1,Y2,DY):-Y1\=Y2,days_in_year(Y1,D1),Yt is Y1+1,days_bet_years(Yt,Y2,DY1),DY is D1+DY1.

countdays(M1,M1,0).
countdays(M1,M2,DD):-M1\=M2,month(M1,D1),next(M1,Mt),countdays(Mt,M2,DD1),DD is D1+DD1.