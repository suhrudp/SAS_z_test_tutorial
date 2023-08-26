/*LOAD DATA*/	
proc import datafile="/home/u62868661/Datasets/Z-Test for proportions/PCSK9.xlsx"
dbms=xlsx
out=df
replace;
run;

/*Z-TEST FOR EQUALITY OF PROPORTIONS*/
proc freq data=df;
   tables Group*MI / riskdiff(equal var=null cl=wald);
run;