***Problem 14.10;
DATA PRICES;
   INPUT PART_NUMBER QUANTITY PRICE @@;

DATALINES;
100 23 29.95  102 12 9.95  103 21 15.99  123 9 119.95  113 40 56.66
111 55 39.95  105 500 .59
;

data updated;
	input PART_NUMBER QUANTITY PRICE @@;
datalines;
103 21 18.99 111 45 29.95 113 35 56.66 123 9 129.96
;

proc sort data=PRICES;
	by PART_NUMBER;
run;

proc sort data=updated;
	by PART_NUMBER;
run;

data PRICES;
	update PRICES updated;
	by PART_NUMBER;
run;

proc print data=PRICES;
	title "Problem 14.10";
run;