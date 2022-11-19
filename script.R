# Script to analyze the cleaned data for statistical relations
# between different attributes

rm(list=ls())


cleaned_data <- read.csv("./Data/final-stroke-data.csv")
cleaned_data


str(cleaned_data)
# Correlation 

# Gender/Stroke -> Result: -0.0090806
cor(cleaned_data$gender, cleaned_data$stroke)

# Age/Stroke -> Result:  0.2452388
cor(cleaned_data$age, cleaned_data$stroke)

# hypertension/Stroke -> Result: 0.1278913
cor(cleaned_data$hypertension, cleaned_data$stroke)

# heart_disease/Stroke -> Result: 0.1349048
cor(cleaned_data$heart_disease, cleaned_data$stroke)

# ever_married/stroke -> Result: -0.1082993
cor(cleaned_data$ever_married, cleaned_data$stroke)

# worktype/Stroke -> Result: -0.05826081
cor(cleaned_data$work_type, cleaned_data$stroke)

# residence type/Stroke -> Result: -0.01541458
cor(cleaned_data$Residence_type, cleaned_data$stroke)

# avg glucose level/Stroke -> Result: 0.1319912
cor(cleaned_data$avg_glucose_level, cleaned_data$stroke)

# bmi/Stroke -> Result: 0.03891213
cor(cleaned_data$bmi, cleaned_data$stroke)

# smoking/stroke -> Result: -0.06647108
cor(cleaned_data$smoking_status, cleaned_data$stroke)


######################## Chi Squared Test for categorical data###############################
score1 <- chisq.test(table(cleaned_data$gender, cleaned_data$stroke))$p.value
score2 <- chisq.test(table(cleaned_data$hypertension, cleaned_data$stroke))$p.value
score3 <- chisq.test(table(cleaned_data$heart_disease, cleaned_data$stroke))$p.value
score4 <- chisq.test(table(cleaned_data$ever_married, cleaned_data$stroke))$p.value
score5 <- chisq.test(table(cleaned_data$work_type, cleaned_data$stroke))$p.value
score6 <- chisq.test(table(cleaned_data$Residence_type, cleaned_data$stroke))$p.value
score7 <- chisq.test(table(cleaned_data$smoking_status, cleaned_data$stroke))$p.value

scoreDf <- data.frame(name=c('gender','hypertension','heart_disease','ever_married','work_type','residence_type','smoking status'),scores=c(score1,score2,score3,score4,score5,score6,score7))

scoreDf
######################## Plotting scores ###############

library(ggplot2)

# Plotting the scores, higher the p-score, lower the dependence
ggplot(scoreDf,aes(x=name,y=scores)) + geom_bar(stat='identity')


######################## Calculation of Covariance ####################

# Gender/Stroke -> Result: -0.0009632226
cov(cleaned_data$gender, cleaned_data$stroke)

# Age/Stroke -> Result:  1.194216
cov(cleaned_data$age, cleaned_data$stroke)

# hypertension/Stroke -> Result: 0.008169286
cov(cleaned_data$hypertension, cleaned_data$stroke)

# heart_disease/Stroke -> Result: 0.006567824
cov(cleaned_data$heart_disease, cleaned_data$stroke)

# ever_married/stroke -> Result: -0.01107735
cov(cleaned_data$ever_married, cleaned_data$stroke)

# worktype/Stroke -> Result: -0.01403564
cov(cleaned_data$work_type, cleaned_data$stroke)

# residence type/Stroke -> Result:-0.001659631
cov(cleaned_data$Residence_type, cleaned_data$stroke)

# avg glucose level/Stroke -> Result: 1.287134
cov(cleaned_data$avg_glucose_level, cleaned_data$stroke)

# bmi/Stroke -> Result: 0.06450607
cov(cleaned_data$bmi, cleaned_data$stroke)

# smoking/stroke -> Result: -0.01563653
cov(cleaned_data$smoking_status, cleaned_data$stroke)



######################## ANOVA F TEST #########################

anova_result1 <- aov(cleaned_data$stroke~factor(data$age))
summary(anova_result)


anova_result8 <- aov(cleaned_data$stroke~factor(data$avg_glucose_level))
summary(anova_result8)

anova_result9 <- aov(cleaned_data$stroke~factor(data$bmi))
summary(anova_result9)





