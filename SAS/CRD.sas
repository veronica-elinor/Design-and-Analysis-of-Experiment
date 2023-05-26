PROC GLM DATA=example3_1;
		CLASS RF;
		MODEL Y=RF;
QUIT;

PROC GLM DATA=example3_1 plots=diagnostics;
		CLASS RF;
		MODEL Y=RF;
QUIT;

PROC GLM DATA=example3_1 plots=diagnostics;
		CLASS RF;
		MODEL Y=RF;
		MEANS RF/HOVTEST=BARTLETT;
QUIT;

PROC GLM DATA=example3_1 plots=diagnostics;
		CLASS RF;
		MODEL Y=RF;
		CONTRAST "RF1+RF2-RF3-RF4" RF 1 1 -1 -1;
QUIT;

PROC GLM DATA=example3_1 plots=diagnostics;
		CLASS RF;
		MODEL Y=RF;
		MEANS RF/LSD CLDIFF;
QUIT;
