***Problem 5.2;
DATA EXAM;
   INPUT (Q1-Q8)(1.);

DATALINES;
10101010
11111111
11110101
01100000
11110001
11111111
11111101
11111101
10110101
00010110
;

data rawScore;
	set exam;
	rawScore=sum(of Q1-Q8);
run;

proc corr data=rawScore;
	title "Problem 5.2";
	var Q1-Q8;
	with rawScore;
run;