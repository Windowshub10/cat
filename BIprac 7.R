#1
rainfall <-c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)
rainfall.timeseries <- ts(rainfall,start = c(2012,1),frequency = 12)
print(rainfall.timeseries)
png(file = "rainfall.png")
plot(rainfall.timeseries)
dev.off()
plot(rainfall.timeseries)


#2
install.packages("party")
library(party)
print (head (readingSkills)) 
input.dat<-readingSkills [c(1:105),] 
png(file="abhay.png") 
output.tree<-ctree (nativeSpeaker~age+shoeSize+score, data=input.dat) 
plot (output.tree) 
dev.off()