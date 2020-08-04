***PROBLEM 12.6c;
data prob12_6;
	input @1 NAME $10. @12 GENDER $1. @13 DOB mmddyy10.;
	AGE=int(yrdif(DOB,today()));
	format DOB mmddyy10.;
	
DATALINES;
Cody       M05/11/1981
McMaster   F11/11/1967
Bill Smith M12/25/1999
;

proc print data=prob12_6;
	title "Problem 12.6";
run;