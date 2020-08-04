***Problem 6.8;
data prob6_8;
	do Subject=1 to 48;
		Group=ranuni(1234);
		output;
	end;
run;

proc rank data=prob6_8 groups=2;
	var Group;
run;

proc format;
	value group 0="Placebo" 1="Drug";
run;

proc print;
	title "Problem 6.8";
	format Group group.;
	id Subject;
run;

data prob6_8_part2;
	Subject=0;
	do Block=1 to 6;
		do index=1 to 8;
			Group=ranuni(1234);
			Subject=Subject+1;
			output;
		end;
	end;
	drop index;
run;

proc rank data=prob6_8_part2 out=prob6_8_part2 groups=2;
	by Block;
	var Group;
run;

proc print data=prob6_8_part2;
	title "Problem 6.8 Part 2";
	format Group group.;
	id Subject;
run;