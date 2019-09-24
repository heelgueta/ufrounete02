options(scipen=999)


###loading data
#install.packages("foreign")
#install.packages("semTools")
#install.packages("tidyverse")

dfori <- foreign::read.spss("2019-06-unete2.sav", use.value.labels = FALSE, to.data.frame = TRUE, use.missings = to.data.frame)
colnames(dfori)
