libname library "c:\My SAS Homework";
options fmtsearch=(library);

proc format library=library;
	value urb_rur 1="rural" 2="urban";
	value sex 2="female" 3="male";
	value educ 2,4="college" 3,6="high school" 5,7="below high school";
	value mar_stat 2,3="has partner" 5,6,7="no partner";
run;

data young;
	infile "c:\My SAS Homework\young.csv" dsd;
	input height weight self_height self_weight residence sex education marital age;
	format residence urb_rur. sex sex. education educ. marital mar_stat.;
run;


proc means data=young n nmiss mean std;
	var height weight self_height self_weight age;
run;

proc freq data=young;
tables residence sex education marital / nocum;
run;


data calc_bmi;
set young;
bmi=weight/((height/100)**2);
if bmi lt 18.5 then cat="underweight";
else if bmi >= 18.5 and bmi < 25.0 then cat="normal";
else if bmi >= 25.0 and bmi < 30.0 then cat="overweight";
else if bmi >= 30.0 then cat="obese";

self_bmi=self_weight/((self_height/100)**2);
if self_bmi < 18.5 then self_cat="underweight";
else if self_bmi >= 18.5 and self_bmi < 25.0 then self_cat="normal";
else if self_bmi >= 25.0 and self_bmi < 30.0 then self_cat="overweight";
else if self_bmi >= 30.0 then self_cat="obese";
else self_cat="unknown";

file "c:\My SAS Homework\bmi.csv";
put residence sex education marital age bmi cat self_bmi self_cat;

run;

proc means data=calc_bmi n nmiss mean std;
	var bmi self_bmi;
run;

proc freq data=calc_bmi;
tables cat self_cat / nocum;
run;
