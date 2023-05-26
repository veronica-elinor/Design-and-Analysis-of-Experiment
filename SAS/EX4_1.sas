/*Import file*/
PROC IMPORT DATAFILE="C:\Users\User\Downloads\20230526SAS實習資料.xlsx"
OUT=example4_1
DBMS=XLSX;
SHEET="EXP4_1";
RUN;

/*manual 
DATA EXAMPLE4_1;
		INPUT PSI BLOCK Y@@;
		DATALINES;
		8500 1 90.3 8500 2 89.2
    ;
