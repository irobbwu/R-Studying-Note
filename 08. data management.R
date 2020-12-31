# data management
manager <- c(1, 2, 3, 4, 5)
date <- c("10/24/08", "10/28/08", "10/1/08", "10/12/08", 
          "5/1/09")
gender <- c("M", "F", "F", "M", "F")
age <- c(32, 45, 25, 39, 99)
q1 <- c(5, 3, 3, 3, 2)
q2 <- c(4, 5, 5, 3, 2)
q3 <- c(5, 2, 5, 4, 1)
q4 <- c(5, 5, 5, NA, 2)
q5 <- c(5, 5, 2, NA, 1)
leadership <- data.frame(manager, date, gender, age, 
                         q1, q2, q3, q4, q5, stringsAsFactors = F)
leadership

mydata <- data.frame(x1 = c(2, 2, 6, 4), x2 = c(3, 
                                                4, 2, 8))
mydata$sumx <- mydata$x1 + mydata$x2
mydata$meanx <- (mydata$x1 + mydata$x2)/2

attach(mydata)
mydata$sumx <- x1 + x2
mydata$meanx <- (x1 + x2)/2
detach(mydata)
mydata <- transform(mydata, sumx = x1 + x2, meanx = (x1 + x2)/2)
mydata

leadership$age[leadership$age == 99] <- NA
leadership$ag

leadership$agecat
leadership$agecat[leadership$age > 75] <- "Elder"
leadership$agecat[leadership$age > 45 & 
                    leadership$age <= 75] <- "Middle Aged"
leadership$agecat[leadership$age <= 45] <- "Young"
leadership

leadership <- within(leadership, {
  agecat <- NA
})
leadership
leadership <- within(leadership, {
  agecat <- NA
  agecat[age > 75] <- "Elder"
  agecat[age >= 55 & age <= 75] <- "Middle Aged"
  agecat[age < 55] <- "Young"
})
leadership

# rename variable
fix(leadership)
names(leadership)
names(leadership)[1] <- "managerID"
names(leadership)[2] <- "testDate"
names(leadership)[5:9] <- c("item1", "item2", "item3", "item4",
                            "item5")
leadership

install.packages("plyr") 
library(plyr)
leadership <- rename(leadership,
                     c(managerID="manager", testDate="date"))
leadership
leadership <- rename(leadership,
                     c(manager="managerID", date="testDate"))
leadership

# Missing values
y <- c(1, 2, 3, NA)
is.na(y)

leadership[, 5:9]
is.na(leadership[, 5:9])

5/0
sin(5/0)
y <- c(1, 2, 3, 5/0)
is.infinite(y)

y <- c(1, 2, 3, sin(5/0))
is.nan(y)

# Recoding values to missing
leadership[leadership$age == 99, "age"] <- NA
leadership

x <- c(1, 2, NA, 3)
y <- x[1] + x[2] + x[3] + x[4]
y
z <- sum(x)
z

x <- c(1, 2, NA, 3)
y <- sum(x, na.rm=TRUE) 
# na.rm=TRUE delete the missing values
y


# reomve missing values
leadership
newdata <- na.omit(leadership)
newdata

# data values
?as.Date
mydates <- as.Date(c("2007-06-22", "2004-02-13"))
mydates

strDates <- c("01/05/1965", "08/16/1975")
str(strDates)
dates <- as.Date(strDates, "%m/%d/%Y")
dates
str(dates)


manager <- c(1, 2, 3, 4, 5)
date <- c("10/24/08", "10/28/08", "10/1/08", "10/12/08", 
          "5/1/09")
gender <- c("M", "F", "F", "M", "F")
age <- c(32, 45, 25, 39, 99)
q1 <- c(5, 3, 3, 3, 2)
q2 <- c(4, 5, 5, 3, 2)
q3 <- c(5, 2, 5, 4, 1)
q4 <- c(5, 5, 5, NA, 2)
q5 <- c(5, 5, 2, NA, 1)
leadership <- data.frame(manager, date, gender, age, 
                         q1, q2, q3, q4, q5, stringsAsFactors = FALSE)
leadership

myformat <- "%m/%d/%y"
leadership$date <- as.Date(leadership$date, myformat)
leadership

Sys.Date()
date()

today <- Sys.Date()
today
format(today, format = "%B %d %Y")
format(today, format = "%B/%d/%Y")
format(today, format = "%b %d %Y")
format(today, format = "%A")
format(today, format = "%a")

startdate <- as.Date("2004-02-13")
enddate <- as.Date("2009-06-22")
days <- enddate - startdate
days

today <- Sys.Date()
format(today, format = "%B %d %Y")
dob <- as.Date("1956-10-10")
format(dob, format = "%A")

?difftime
today <- Sys.Date()
dob <- as.Date("1989-03-23")
difftime(today, dob, units="days")
difftime(today, dob, units="weeks")
difftime(today, dob, units="hours")

# convert
a <- c(1, 2, 3)
a
is.numeric(a)
is.vector(a)
a <- as.character(a)
a
is.numeric(a)
is.vector(a)
is.character(a)


# sort
leadership
attach(leadership)
newdata <- leadership[order(age), ]
newdata
newdata <- leadership[order(gender, age), ]
newdata
newdata <- leadership[order(gender, -age), ]
newdata
detach(leadership)

# merge
library(openxlsx)
setwd("/Users/yasmine/Documents/学习/language/R/数据/teachtest/data")
tradeAUS <- "tradeAUS.xlsx"
dataframeA <- read.xlsx(tradeAUS,1)
dataframeA

tradeCHN <- "tradeCHN.xlsx"
dataframeB <- read.xlsx(tradeCHN,1)
dataframeB

total <- merge(dataframeA, dataframeB, by="ID")
total
fix(total)

total <- merge(dataframeA, dataframeB, by=c("ID","Country"))
total
fix(total)

total <- cbind(dataframeA, dataframeB)
total
fix(total)

# Excluding (dropping) variables
myvars <- names(leadership) %in% c("q3", "q4")
myvars
newdata <- leadership[!myvars]
newdata

leadership$q3 <- leadership$q4 <- NULL
leadership

leadership$q3 <- leadership$q4 <- NA
leadership

# Selecting observations
newdata <- leadership[1:3, ]

newdata <- leadership[which(leadership$gender == "M" & 
                              leadership$age > 30), ]

attach(leadership)
newdata <- leadership[which(gender == "M" & 
                              age > 30), ]
detach(leadership)

leadership
leadership$date <- as.Date(leadership$date, "%m/%d/%y")
startdate <- as.Date("2009-01-01")
enddate <- as.Date("2009-10-31")
newdata <- leadership[leadership$date >= startdate & 
                        leadership$date <= enddate, ]
newdata

# subset
newdata <- subset(leadership, age >= 35 | age < 24, 
                  select = c(q1, q2, q3, q4))
newdata
newdata <- subset(leadership, gender == "M" & age > 
                    25, select = gender:q4)
newdata

# Random samples
mysample <- leadership[sample(1:nrow(leadership), 3, replace=FALSE),]
mysample