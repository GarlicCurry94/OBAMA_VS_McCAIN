getwd()
getwd()
setwd("~/R PROJ/rprojext")
getwd()

ls()

install.packages("learningr")
install.packages("gapminder")
install.packages("rmarkdown")
install.packages("tinytex")
install.packages("ISLR2")

library(readxl)
library(tidyverse)
library(janitor)
library(palmerpenguins)
library(learningr)
library(gapminder)
library(ggplot2)
library(rmarkdown)
library(tinytex)
library(dplyr)
library(ISLR2)

data()

data(obama_vs_mccain)
View(obama_vs_mccain)
str(obama_vs_mccain)
summary(obama_vs_mccain)

obama <-obama_vs_mccain$Obama
View(obama)
mean(obama)
var(obama)
sd(obama)
mad(obama)
min(obama)

with(obama_vs_mccain, pmin(obama, McCain))

quantile(obama)
quantile(obama, type = 5)
quantile(obama,c(0.9, 0.95, 0.99))

with(obama_vs_mccain, cor(Obama, McCain))
with(obama_vs_mccain, cancor(Obama, McCain))
with(obama_vs_mccain, cov(Obama, McCain))
     
     ggplot(obama_vs_mccain, aes(Income, Turnout)) +
       geom_point()
     
     ggplot(obama_vs_mccain, aes(Income, Turnout)) +
       geom_point() +
       scale_x_log10(breaks = seq(2e4, 4e4, 1e4)) +
       scale_y_log10(breaks = seq(50, 75,5))
     
     ggplot(obama_vs_mccain, aes(Income, Turnout)) +
       geom_point() +
       scale_x_log10(breaks = seq(2e4, 4e4, 1e4)) +
       scale_y_log10(breaks = seq(50, 75,5)) +
       facet_wrap(~ Region, ncol =4)
     
     ggplot(crab_tag$daylog, aes(Date))+
       geom_line(aes(y = -Max.Depth))+
       geom_line(aes(y = -Min.Depth))
     
     ggplot(obama_vs_mccain, aes(Obama))+
       geom_histogram(binwith = 5)
     
     ggplot(obama_vs_mccain,aes(Region, Obama))+
       geom_boxplot()
     