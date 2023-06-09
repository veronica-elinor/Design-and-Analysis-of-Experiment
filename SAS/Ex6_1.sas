PROC GLM DATA=Ex6_1;
CLASS Gap Gas_flow Power;
MODEL Y=Gap Gas_flow Gap*Gas_flow Power Gap*Power Gas_flow*Power Gap*Gas_flow*Power;
QUIT;
