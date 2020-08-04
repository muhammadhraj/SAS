***Problem 6.6;
data prob6_6;
	do subj=1 to 12;
		input weight_before weight_after @ ;
		output;
	end;

datalines;
300 290 350 331 190 200 400 395 244 240 321 300 330 332 250 242 190 185 160 158 260 256 240 220
;

proc ttest data=prob6_6;
	title "Problem 6.6";
	paired weight_before*weight_after;
run;
