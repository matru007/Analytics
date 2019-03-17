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
#dimensions
cm(passfail)
table(passfail) # no of pass fails

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

