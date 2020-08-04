data PROB13_4;
	infile "c:\My SAS Homework\FILE*.csv" dsd;
	input ID $ X Y Z;
run;

proc print;
run;
