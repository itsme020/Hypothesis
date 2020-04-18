#hypothesis

attach(CostomerOrderForm)
str(CostomerOrderForm)
#convert dummy variable for the categorical data 

library(caret)
Dummy1 <- dummyVars("~ .", data = CostomerOrderForm, fullRank = T)
COF <- data.frame(predict(Dummy1, newdata = CostomerOrderForm))
# Dummy data conversion in numeric
str(COF)
View(COF)

chisq.test(COF)   ###### P value is 1

###As p value is greather than alpha value that is 0.5, we accpet alternate hypothesis.

t.test(COF)
#mean of x 
#0.9058333 
#95 percent confidence interval:
#0.8892852 0.9223815

