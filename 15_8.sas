***Problem 15.8;
data exper;
	input TIME0-TIME4;
datalines;
100 200 300 400 500
55 110 130 150 170
;

data prob15_8;
	set exper;
	array TIME[0:4] TIME0-TIME4;
	do index=0 to 4;
		TIME[index]=round(TIME[index]/60,.1);
	end;
	drop index;
run;

proc print;
	title "Problem 15.8";
run;