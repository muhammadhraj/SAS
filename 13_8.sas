libname homework "c:\My SAS Homework";
options fmtsearch=(homework);

proc format library=homework;
	value $GENDER "M"="MALE" "F"="FEMALE";
	value Q 1="YES" 0="NO";
run;

data homework.SURVEY;
	infile "c:\My SAS Homework\SURVEY.dat" firstobs=2;
	length GENDER $ 1;
	input GENDER $ Q1-Q5;
	format GENDER $GENDER. Q1-Q5 Q.;
run;

proc print;
run;
