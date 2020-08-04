***Problem 16.2;
data ques;
	input ID $ REASON1-REASON4;
datalines;
001 3 6 13 17
002 8 3 4 .
003 20 2 . .
004 8 4 20 19
;

data prob16_2;
	set ques;
	array reasons[4] REASON1-REASON4;
	do index=1 to 4;
		if not missing(reasons[index]) then do
			Reason=reasons[index];
			output;
		end;
	end;
	drop index;
run;

proc freq;
	title "Problem 16.2";
	tables Reason/nocum;
run;