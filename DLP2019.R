DLP2019<-read.csv("C:/Users/naman/Downloads/district_level_mapping_2019.csv", encoding = "UTF-8")
View(DLP2019)

#Changing Structures 
DLP2019$Division.Code<-as.factor(DLP2019$Division.Code)
DLP2019$Major.Head.Code<-as.factor(DLP2019$Major.Head.Code)
DLP2019$Treasury.Code<-as.factor(DLP2019$Treasury.Code)

#Removing Unnecessary columns
DLP2019 <-DLP2019[,-c(11:15,18)]

#Missing values 
DLP2019<-na.omit(DLP2019)
summary(DLP2019)

#For School Education 
library("dplyr")
library(tidyr)
DLP2019 %>% select(Grant.Number,Major.Head.Code,,Scheme.Code,Total.Expenditure.Upto.Month..November.,Progressive.Allotment,X..A.E) %>% filter(Major.Head.Code==2202,Scheme.Code<2202030010300)->Education19
View(Education19)
DLP2019$Scheme.Code> options("scipen"=100, "digits"=4)
sum(Education19$Total.Expenditure.Upto.Month..November.)
sum(Education19$Progressive.Allotment)

DLP2019 %>% separate(Scheme.Code, 'major head','sub_major')->ll 
View(ll)
