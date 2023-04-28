#EX3_1
#With EX3_1.csv and EX3_1.txt

RF = rep(c(160,180,200,220),each = 5)
Y=c(575,542,530,539,570,565,593,590,579,610,600,651,610,637,629,725,700,715,685,710)
data=as.data.frame(cbind(RF,Y))
data #print

dir="C:/Users/User/Downloads/"
file1=paste(dir,"EX3_1.csv",sep="") #combine directory and filename
data_csv=read.table(file1,header=T,sep=",") #header: column name data seperate with comma
data_csv
dim(data_csv) #how many columns and rows

file2=paste(dir,"EX3_1.txt",sep="")
data_txt=read.table(file2,header=T,sep="") #sep default as space or tab
data_txt
dim(data_txt)

data_csv$coding_Y=data_csv$Y-600 #$ means using the value of front variable to do the operation
data_csv

#export EX3_1(coding).csv
outfile=paste(dir,"EX3_1(coding).csv",sep="");outfile
write.csv(data_csv,file=outfile,row.names=FALSE)

#
class(data_csv)
class(data_csv$RF)
