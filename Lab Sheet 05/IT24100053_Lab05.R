setwd("C:\\Users\\chama\\OneDrive\\Desktop\\IT24100053\\Lab 05-20250828")
getwd()

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
Delivery_Times

fix(Delivery_Times)
attach(Delivery_Times)

names(Delivery_Times) <- c("X1")

attach(Delivery_Times)

hist(X1, main = "Histogram for Delivery Times")

histogram <- hist(X1, main = "Histogram for Delivery Times", breaks = seq(20, 70, length = 10), 
                  right = FALSE)

#The distribution is approximately symmetric 

breaks <- round(histogram$breaks)
freq <- histogram$counts
mids<- histogram$mids
mids

cum.freq <- cumsum(freq)


new <- c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  }else{
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new , type = "l", main = "Cumalative Frequency Polygon for deliver times", 
     xlab = "Shareholders", ylab = "Cumulative Frequncy", ylim = c(0,max(cum.freq)))

cbind(Upper = breaks, CumFreq = new)




