#############Anova (Contract_Renewal Data )##########

#download dataset

View(LabTAT)

Stacked_Data <- stack(LabTAT)
View(Stacked_Data)
attach(Stacked_Data)

library(readxl)
shapiro.test(LabTAT$`Laboratory.1`)
shapiro.test(LabTAT$`Laboratory.2`)
shapiro.test(LabTAT$`Laboratory.3`)
shapiro.test(LabTAT$`Laboratory.4`)

summary(LabTAT)

# Data is normally distributed
library(car)

leveneTest(values~ ind, data = Stacked_Data)
Anova_results <- aov(values~ind,data = Stacked_Data)
summary(Anova_results)
# p-value = i less than 0.05 accept alternate hypothesis 
# All Proportions all equal 





























# Customer order form 
# Unstacked data 

cof<-read_excel(file.choose()) # customer_order(unstacked).xlsx
View(cof) # countries are in their own columns; so we need to stack the data 
stacked_cof<-stack(cof)
attach(stacked_cof)
View(stacked_cof)
table(stacked_cof$ind,stacked_cof$values)
chisq.test(table(stacked_cof$ind,stacked_cof$values))


################# Mood's Median Test #################
install.packages("RVAideMemoire")
library(RVAideMemoire)
height <- read_excel(file.choose())
height
table(height$Treatment)

attach(height)
mood.medtest(Growth ~ Treatment,data = height,exact = FALSE)

############### Kruskal Wallis #################
kruskal.test(Growth,Treatment)

