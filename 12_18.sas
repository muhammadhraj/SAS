***Problem 12.18;
data prob12_18;
	input @1 DATE mmddyy10. @11 GENDER $1. @12 AGE 2. @14 SCORE 3.;
	if gender = "F";
	format DATE mmddyy10.;

datalines;
04/04/2004M15 90
05/12/2004F16 95
07/23/2004M18 88
01/20/2004F17100
;

proc print data=prob12_18;
	title "Problem 12.18";
run;