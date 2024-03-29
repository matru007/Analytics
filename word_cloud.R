#Word Cloud 2

#(https://www.r-graph-gallery.com/the-wordcloud2-library/)

# library : install it first
library(wordcloud2) 

# have a look to the example dataset
head(demoFreq)
str(demoFreq)
#wordcloud
wordcloud2(demoFreq, size=1.6)
head(demoFreq[order(-demoFreq$freq),])
?wordcloud2

#create your own set of words
word = c('Suchi','Matru', 'Harish','Fish','beef','mallu', 'anas','loki', 'jyoti','finance', 'operations')
freq = c(30,20,15,50,15,13,11,44,13,44,34)
df1 = data.frame(word, freq)
#rownames(df1)= word
head(df1)
#df1 = head(demoFreq)
wordcloud2(df1, size=.4)

# Gives a proposed palette
wordcloud2(demoFreq, size=1.6, color='random-dark')
wordcloud2(df1, size=1, color='random-dark')

# or a vector of colors. vector must be same length than input data
wordcloud2(demoFreq, size=1.6, color=rep_len( c("green","blue"), nrow(demoFreq) ) )
# Change the background color
wordcloud2(demoFreq, size=1.6, color='random-light', backgroundColor="black")


# Change the shape:
wordcloud2(demoFreq, size = 0.7, shape = 'star')
#It is possible to change the shape of the wordcloud. Several shapes are available within the package: ‘circle’ (default), ‘cardioid’, ‘diamond’ (alias of square), ‘triangle-forward’, ‘triangle’, ‘pentagon’, and ‘star’).
wordcloud2(df1, size = 0.7, shape = 'pentagon')


#It is also possible to use any image you have as a mask! Just insert the image in the current working directory and use it as in the code below
# Change the shape using your image - not working
#wordcloud2(demoFreq, figPath = "peace.png", size = 1.5, color = "skyblue", backgroundColor="black")


#rotation
ww=wordcloud2(demoFreq, size = 2.3, minRotation = -pi/6, maxRotation = -pi/6, rotateRatio = 1)
ww

#chinese
demoFreqC
head(demoFreqC)
wordcloud2(demoFreqC, size = 2, fontFamily = "微软雅黑", color = "random-light", backgroundColor = "grey")

wordcloud2(demoFreqC, size = 2, color = "random-light", backgroundColor = "grey")
?demoFreqC

#Try this... not working as of now
#https://unicode.org/charts/PDF/U0900.pdf :  0900–097F
V2 = c('<U+9000><U+9001>', '<U+9002><U+9003>', '<U+900D><U+900F>', '<U+6570><U+636E>')
V1 = c(2000, 1000, 500,1000)
hindi = data.frame(V2, V1)
hindi
wordcloud2(hindi, size = 2, color = "random-light", backgroundColor = "grey")



#notworking : clear the plot area

#The lettercloud function allows to use a letter or a word as a shape for the wordcloud.
letterCloud( demoFreq, word = "R", color='random-light' , backgroundColor="blue")
letterCloud( demoFreq, word = "PEACE", color="white", backgroundColor="pink")


#see the link : https://www.r-graph-gallery.com