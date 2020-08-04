***Problem 15.2;
data temperature;
	input TF1-TF10;
	array TF[10];
	array TC[10];
	do index=1 to 10;
		TC[index]=round((5/9)*(TF[index]-32),.1);
	end;
	drop index;
	
datalines;
32 212 -40 10 20 30 40 50 60 70
-10 0 10 20 30 40 50 60 70 80
;

proc print;
	title "Problem 15.2";
run;