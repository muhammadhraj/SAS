***Problem 12.10;
data pairs;
	input @1 (Group1-Group3)($1. +4) @2 (Score1-Score3)(3. +2);
	
datalines;
A100 B 90 C 76 
C 87 A 86 B 88 
C 93 B 92 A 90
;

proc print;
run;