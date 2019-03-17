mtcars
git config --global user.email "matrupnanda@gmail.com"
git config --global user.name "matru007"
summary(mtcars)
str(mtcars)


df<- mtcars
df
head(df)
df$cyl=factor(df$cyl)
str(df)
model4<- kmeans(mtcars[c("mpg","wt")],model4$cluster)
model4$centers
?kmeans
