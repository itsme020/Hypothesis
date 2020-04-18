#Hypothesis
attach(Cutlets)#Datasets

View(Cutlets)
str(Cutlets)

summary(Cutlets)

t.test(Cutlets)
#H0 = mean is equal to zero=Null
#Ha= Mean is not equal to zero=alternative

t.test(Cutlets$Unit.B, mu = 0, alternative = "two.sided")
t.test(Cutlets$Unit.A, mu = 0, alternative = "two.sided")

chisq.test(Cutlets)
#means are not equal, so here we can reject Null Hypothesis and accept alternate.