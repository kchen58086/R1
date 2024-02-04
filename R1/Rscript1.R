# TODO: Add comment
# 
# Author: 16478
###############################################################################

library(tidyverse)
bond <- read.csv("C:/Users/16478/Downloads/Book1.csv")
face = 101
print(face)
coupon <- bond[1]
periods <- bond[3]
price <- bond[4]
discount <- data.frame(double())
discount = 1:52
Spotrate = 1:52
pvcoup = 0
print("stop")
discount[1] = price$Current.Price[1]/(coupon$Coupon[1]/2 + face)
Spotrate[1] = (1/discount[1]-1)*2
for (i in 2:52){
	 pvcoup = 0
	for (x in 1:i){
		if(x != i){
			pvcoup = pvcoup + coupon$Coupon[i]/2*discount[x]
		}
		discount[i] = (price$Current.Price[i] - pvcoup)/(coupon$Coupon[i]/2 + face)
		Spotrate[i] = ((1/discount[i])^(1/i)-1)*2
	}
}

print(pvcoup)