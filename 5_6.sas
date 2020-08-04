***Problem 5.6;

***Part a);
proc reg data=scores;
	title "Problem 5.6a";
	model science=math;
	plot science*math residual.*math;
run;
quit;

***Part b);
proc reg data=scores;
	title "Problem 5.6b";
	model science=math / clm alpha=.1;
	plot science*math;
run;
quit;

