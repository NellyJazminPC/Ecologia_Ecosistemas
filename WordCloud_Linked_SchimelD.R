#WordCloud from data in Linked about David Schimel
#A fresh start
rm(list = ls())

#Charge libraries
library(wordcloud)
library("tm")
library("SnowballC")
library(RColorBrewer)

#Create a list of words (Random words concerning my work)
word<- c("Envr. Science","Science","Climate Change","Remote Sensing","Ecology","Envr. Awareness","Research", 
    "Envr. Policy","Envr. Education","Statistics","Data Analysis","Science Communication","ArcGIS", 
    "R","Physics","Sustainability","Field Work","Scientific Computing", "Environmental Impact Assessment", 
    "Water Quality", "Climate", "Meteorology")

#I give a frequency to each word of this list 
number<- c( 50, 44, 43, 40, 33, 19, 19, 19, 11, 9, 8, 7, 6, 6, 5, 5, 4, 3, 2, 2, 18, 2) 

#Create a data frame
d<- data.frame(word, number)

#WordCloud
wordcloud(words = d$word, freq = d$number, min.freq = 1,
          max.words=1e+100, random.order=FALSE, rot.per=0.35, 
          use.r.layout=FALSE, colors=brewer.pal(30, "Set3"))

