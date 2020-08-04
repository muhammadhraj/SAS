***Problem 12.2;
data Prob12_2;
	infile datalines dlm=",";
	informat DOB mmddyy10. VISIT date9. GENDER $1. NAME $11.;
	input dob visit gender name;
	format dob visit mmddyy10.;
	
datalines;
10/21/1950,03MAY2004,M,Schneider
11/12/1944,05DEC2004,F,Strawderman
01/01/1960,25APR2004,M,Smith
;

proc print data=Prob12_2;
	title "Problem 12.2";
run;