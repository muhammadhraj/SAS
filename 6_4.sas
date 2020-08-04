***Problem 6.4;
DATA QUES6_4;
   DO GROUP = 'A','B','C';
      DO I = 1 TO 10;
         X = ROUND(RANNOR(135)*10 + 300 + 
                   5*(GROUP EQ 'A') - 7*(GROUP EQ 'C'));
         Y = ROUND(RANUNI(135)*100 + X);
         OUTPUT;
      END;
   END;
   DROP I;
RUN;

proc ttest data=ques6_4;
	title "Problem 6.4";
	where group in ("A" "C");
	class group;
	var x y;
run;