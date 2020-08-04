data homework4additional;
	infile "c:\My SAS Homework\bmi.csv" dsd;
	input residence sex education marital age bmi cat self_bmi self_cat;
	format residence urb_rur. sex sex. education educ. marital mar_stat.;
run;

***Part a;
proc reg data=homework4additional;
	model bmi=residence sex age;
run;

***Part b;
proc reg data=homework4additional;
	model bmi=age;
run;
