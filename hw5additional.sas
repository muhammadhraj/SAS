proc freq data = calc_bmi;
 tables cat*self_cat/chisq;
run;

proc ttest data=calc_bmi sides=u;
	paired bmi*self_bmi;
run;

proc ttest data=calc_bmi sides=u;
	where sex=2;
	paired bmi*self_bmi;
run;

proc ttest data=calc_bmi sides=u;
	where sex=3;
	paired bmi*self_bmi;
run;

proc ttest data=calc_bmi sides=l;
	where sex=2;
	paired height*self_height;
run;

proc ttest data=calc_bmi sides=l;
	where sex=3;
	paired height*self_height;
run;

proc ttest data=calc_bmi sides=l;
	where sex=2;
	paired weight*self_weight;
run;

proc ttest data=calc_bmi sides=l;
	where sex=3;
	paired weight*self_weight;
run;

