***Problem 14.8;
DATA STUDENT;
   INPUT ID NAME & $30. @@;

DATALINES;
1 John Torres  5 Alex Antoniou  3 Thomas Friend  
2 Sheldon Goldstein  11 Joanne Dipietro  12 Bill Murray
21 Janet Reno  4 Deborah Smith  6 Don Dubin  7 Alice Ford
8 Diane Farley  9 Laura Easton  10 Brian Fishmann
13 Eric Garrett  14 James Galt  15 Toni Gilman
;


DATA TEST;
   INPUT ID SCORE @@;

DATALINES;
15 95  1 80  3 98  21 75  4 87  14 67  13 91  11 85  12 57 
29 93
;

proc sort data=STUDENT;
	by ID;
run;

proc sort data=TEST;
	by ID;
run;

data merged;
	merge STUDENT(in=in_STUDENT) test(in=in_TEST);
	by ID;
	if in_TEST;
	if not in_STUDENT then do;
		NAME="Not in Student File";
		LAST="ZZZ";
		end;
	else LAST=scan(NAME,-1);
run;

proc sort data=merged;
	by LAST;
run;

proc print data=merged;
	title "Problem 14.8";
	id NAME;
	var ID SCORE;
run;