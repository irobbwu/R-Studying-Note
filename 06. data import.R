# keyboard
mydata <- data.frame(age = numeric(0), gender = character(0), weight = numeric(0))
mydata
mydata <- edit(mydata)、

?read.table
mydatatxt <- "
age gender weight
25 m 166
30 f 115
18 f 120
"
mydata <- read.table(header=TRUE, text=mydatatxt)
mydata

setwd('/Users/yasmine/Documents/学习/language/R/数据/teachtest/data')
salary <- read.table("salary.csv", header=TRUE, sep="")
salary
str(salary)

salary1 <- read.table("salary.csv", header=TRUE, sep=",")
salary1
str(salary1)

# import excel data
# 1.'xlsx'
install.packages("rJava")
install.packages("xlsxjars")
install.packages("xlsx")
library(xlsx)
workbook <- "salary.xlsx"
mydataframe <- read.xlsx(workbook,sheetIndex = 1)
mydataframe
?read.xlsx

# 2.'openxlsx'
install.packages('openxlsx')
help(package = "openxlsx")
library(openxlsx)
dd3.1=read.xlsx('salary.xlsx','Sheet2',colNames=TRUE,rowNames=TRUE)
dd3.1
dd3.11=read.xlsx('salary.xlsx','Sheet2',colNames=TRUE,rowNames=FALSE)
dd3.11