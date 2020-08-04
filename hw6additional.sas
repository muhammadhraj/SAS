***Additional Problem;
data additional;
	input mean low high;
	index=low;
	probability=0;
	do while(index le high);
		probability=probability+pdf("POISSON",index,mean);
		index=index+1;
	end;
	drop index;
		
datalines;
5 3 6
2 1 3
;

proc print;
	title "Additional Problem";
run;