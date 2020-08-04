***Problem 5.4;
DATA SCORES;
   DO SUBJECT = 1 TO 100;
      IF RANUNI(1357) LT .5 THEN GROUP = 'A';
      ELSE GROUP = 'B';
      MATH = ROUND(RANNOR(1357)*20 + 550 + 10*(GROUP EQ 'A'));
      SCIENCE = ROUND(RANNOR(1357)*15 + .4*MATH + 300);
      ENGLISH = ROUND(RANNOR(1357)*20 + 500 + .05*SCIENCE +
               .05*MATH);
      SPELLING = ROUND(RANNOR(1357)*15 + 500 + .1*ENGLISH);
      VOCAB = ROUND(RANNOR(1357)*5 + 400 + .1*SPELLING +
             .2*ENGLISH);
      PHYSICAL = ROUND(RANNOR(1357)*20 + 550);
      OVERALL = ROUND(MEAN(MATH, SCIENCE, ENGLISH, SPELLING, VOCAB, 
                     PHYSICAL));
      OUTPUT;
   END;
RUN;

***Part a);
proc corr data=scores nosimple;
	title "Problem 5.4a";
	var math--overall;
run;

*/Part b) This is because PHYSICAL is a constituent of the OVERALL score. Since it is one
of the six scores that makes up the OVERALL score, it makes sense that the two are correlated.*/;

***Part c);
proc corr data=scores nosimple;
	title "Problem 5.4c";
	var math--physical;
	with overall;
run;
