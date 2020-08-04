***Problem 6.2;
data prob6_2;
	do method="Cody ","Smith";
		do subject=1 to 14;
			input speed@;
			output;
		end;
	end;
datalines;
500 450 505 404 555 567 588 577 566 644 511 522 543 578 
355 388 440 600 510 501 502 489 499 489 515 520 520 480
;
proc ttest data=prob6_2;
	title "Problem 6.2";
	class method;
	var speed;
run;