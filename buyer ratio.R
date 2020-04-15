buyer<-BuyerRatio1
buyer1<-t(buyer[,-1])
View(buyer1)

chisq.test(BuyerRatio1[,-1])###P value=0.66
chisq.test(buyer1)###P value=0.66
mean(BuyerRatio1[,2])#98.25
mean(BuyerRatio1[,3])#1016

t.test(BuyerRatio1[,-1],alternative = "two.sided",conf.level = 0.95,correct = TRUE,Data=buyer)####0.032

## Check the normalaity test by applying shapiro test
shapiro.test(BuyerRatio1[,2])    
## p-value = 0.3419>0.05  ,we accpt null hypo ,it follows normal disribution
shapiro.test(BuyerRatio1[,3])   
## p-value = 0.548>0.05   ,we accept null hypo,it follws norml distribution  
