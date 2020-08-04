***Problem 15.4;
data mixed;
	informat A1-A3 B C $5.;
	input X1-X3 Y Z A1-A3 B C;
	array logs[5] LX1-LX3 LY LZ;
	array num[5] X1-X3 Y Z;
	array char[5] $ A1-A3 B C;
	do index=1 to 5;
		logs[index]=log(num[index]);
		if char[index]="?" then char[index]=" ";
	end;
	drop index;
	/*LX1=log(X1);
	LX2=log(X2);
	LX3=log(X3);
	LY=log(Y);
	LZ=log(Z);*/

	/*if A1="?" then A1=" ";
	if A2="?" then A2=" ";
	if A3="?" then A3=" ";
	if B="?" then B=" ";
	if C="?" then C=" ";*/
datalines;
10 20 30 40 50 ONE TWO THREE ? ?
11 22 33 44 55 ? LLL MMM ? VVV
;
proc print data=mixed noobs;
	title "Problem 15.4";
run;