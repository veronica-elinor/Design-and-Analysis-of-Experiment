dir="C:/Users/User/Downloads/"
file=paste(dir,"EX3_7.csv",sep="") #combine directory and filename
data_csv=read.table(file,header=T,sep=",") #header: column name data seperate with comma
data_csv
dim(data_csv) #how many columns and rows

#data type
class(data_csv) #data.frame
class(data_csv$RF) #integer

#casting
data_csv$RF=as.factor(data_csv$EM) #The data type of EM should be factor in ANOVA
class(data_csv$EM) #factor

#ANOVA
fit=aov(Y~RF, data=data_csv)
summary(fit) #print the result

fitcoding=aov(coding_Y~EM, data=data_csv)
summary(fitcoding)
plot(fit) #four graphs(each graph a page)
par(mfrow=c(2,2)) #four graphs in a page

#Bartlett’s test
bartlett.test(Y~EM, data=data_csv)
plot(fit)

#install package agricolae
install.packages("agricolae")
library(agricolae) #check if it is install

#LSD
LD <- LSD.test(fit, "EM", p.adj = "none" ) #"<-" assign operator #p value adjust #EM" the factor
LD
LD$groups #print result
plot(LD)

#Tukey
HSD=HSD.test(fit, "EM", group=TRUE)
HSD
plot(HSD)
TK=TukeyHSD(fit)
TK
plot(TK)
