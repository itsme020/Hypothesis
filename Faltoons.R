#download data set
#Hypotheses
library(readxl)
View(Faltoons)

#normality test
#ho: Data are normal
#ha: Data are non- normal

###################Proportional T Test(Faltoons)##########

attach(Faltoons)
table1 <- table(Weekdays,Weekend)

table1
?prop.test
prop.test(x=c(47,120),n=c(113,287),conf.level = 0.95,correct = FALSE,alternative = "two.sided")
# two. sided -> means checking for equal proportions 
# p-value = 0.9681 > 0.05 reject alternate hypothesis i.e.
# Unequal proportions 

prop.test(x=c(47,120),n=c(113,287),conf.level = 0.95,correct = FALSE,alternative = "less")

# p-value = 0.48 >0.05 accept null hypothesis 


