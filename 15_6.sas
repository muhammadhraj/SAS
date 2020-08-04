***Problem 15.6;
data ANSWERS;
	input ID $ SCORE1-SCORE5;
datalines;
001 50 70 62 78 85
002 90 86 87 91 94
003 63 72 58 73 68
;

data prob15_6;
	set answers;
	array SCORE[5];
	array pass[5] _temporary_ (65 70 60 75 66);
	numberOfPasses=0;
	do index=1 to 5;
		if SCORE[index] ge pass[index] then numberOfPasses=numberOfPasses+1;
	end;
	drop index;
run;

proc print data=prob15_6;
	title "Problem 15.6";
run;