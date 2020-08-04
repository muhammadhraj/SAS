***Additional Problem;
proc freq data = calc_bmi;
 tables cat*self_cat/chisq;
run;

proc ttest data=calc_bmi;
	paired bmi*self_bmi;
run;

proc ttest data=calc_bmi;
	where sex=2;
	paired bmi*self_bmi;
run;

proc ttest data=calc_bmi;
	where sex=3;
	paired bmi*self_bmi;
run;

proc ttest data=calc_bmi;
	where sex=2;
	paired height*self_height;
run;

proc ttest data=calc_bmi;
	where sex=3;
	paired height*self_height;
run;

proc ttest data=calc_bmi;
	where sex=2;
	paired weight*self_weight;
run;

proc ttest data=calc_bmi;
	where sex=3;
	paired weight*self_weight;
run;
