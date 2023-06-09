PROC GLM DATA=Ex6_1;
CLASS Gap Gas_flow Power;
MODEL Y=Gap|Gas_flow|Power@2;
QUIT;
