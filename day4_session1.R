n = 1000
(rollnos = 1:n)
(sname = paste('student',1:n, sep = '_'))
sname
(gender = sample(c("M","F"),size = 1000, replace = T, prob = c(0.35, 0.65)) ) #M, F; 65% females
table(gender)
prop.table(table(gender))
(age = runif(1000, min = 20, max = 30))#between 20 and 30, uniform distribution
round(age)
(marks1 = rnorm(1000,mean = 65, sd = 10) )#mean = 65, sd = 10, normally distributed
round(marks1)
(marks2 = rnorm(1000,mean = 70, sd = 8))# mean =70, sd = 8, normally distributed
round(marks2)
(course = sample(c('btech','mtech','phd'),size =1000, replace = T, prob = c(0.7,0.2,0.1)))
course
(passfail =  sample(c(0,1), size = 1000, replace = T, prob = c(0.4,0.6))) #Pass, Fail on placement drive, 60% in pass
#give the data frame as dataiitb
#find properties of data like
#first row or last row
data2 = read.csv('https://raw.githubusercontent.com/dupadhyaya/hheanalytics/master/data/dataiitb.csv')
#dimensions
cm(passfail)
table(passfail) # no of pass fails
head(data2)
library(dplyr)
data2 %>% group_by(gender) %>% summarise(meanM1 = mean(marks1), meanM2 = mean(marks2))
data2 %>% group_by(course) %>% summarise(meanM1 = mean(marks1), meanM2 = mean(marks2))

data2 %>% group_by(gender,course) %>% summarise(meanM1 = mean(marks1),meanM2 = mean(marks2), minA = min(age), sdA = sd(age))%>%
  arrange(meanM1)
data2 %>% group_by(gender,course) %>% summarise(meanM1 = mean(marks1),meanM2 = mean(marks2), minA = min(age), sdA = sd(age), count =n())%>%arrange(gender, desc(sdA))

data2 %>% group_by(gender) %>% arrange(gender,marks2) %>% top_n(2,marks2)
barplot(height= c(10,20))
table(data2$gender)
barplot(height = table(data2$gender), col = 1:2)
barplot(height = table(data2$course))
fit1 = lm(marks2~ age + marks1 +course +gender, data = data2)
summary(fit1)

library(rpart.plot)
fit1 =rpart(passfail ~ marks1 + marks2 +gender, data = data2,method = "class")

rpart.plot(fit1)

fit1 = kmeans(data2[,c('age','marks1','marks2')], centers = 4)
fit1$centers


# %>% piping operator





dataiitb = data.frame(sname,gender,age,marks1,marks2,passfail)
dataiitb
summary(dataiitb)
head(dataiitb)
tail(dataiitb)
str(dataiitb)
nrow(dataiitb)
ncol(dataiitb)
mean(marks1)
mean(marks2)

