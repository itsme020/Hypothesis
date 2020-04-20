#############Anova (Labtat )##########

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
































