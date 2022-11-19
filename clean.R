library(dplyr)

data <- read.csv("./Data/stroke-data.csv")

dim(data)

str(data)

head(data)

summary(data)


# Dropping id column as no effect on the prediction 
data <- data %>% select(-id)
str(data)

# Dropping columns with na values
data <- data[complete.cases(data),]
dim(data)

unique(data$gender)

data<- subset(data, gender != 'Other')
unique(data$gender)

dim(data)

str(data)


data$bmi <- as.numeric(data$bmi)

sum(is.na(data))

data <- data %>% mutate(bmi = replace(bmi, is.na(bmi), median(bmi,na.rm=TRUE)))

sum(is.na(data))

