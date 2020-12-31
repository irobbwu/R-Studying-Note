# advanced data management
setwd('/Users/yasmine/Documents/学习/language/R/数据/teachtest/data')

x <- c(1, 2, 3, 4, 5, 6, 7, 8)
mean(x)
sd(x)
n <- length(x)
meanx <- sum(x)/n
css <- sum((x - meanx)**2)            
sdx <- sqrt(css / (n-1))
meanx
sdx

x <- matrix(1:10, ncol = 2)
centered.x <- scale(x, scale = FALSE)
centered.x

a <- c(1:5)
b <- c(6:10)
mean(a)
sd(a)
mean(b)
sd(b)
a - mean(a)
b - mean(b)

x <- matrix(1:10, ncol = 2)
centered.x <- scale(x)
centered.x

a <- c(1:5)
b <- c(6:10)
mean(a)
mean(b)
sd(a)
sd(b)
(a-mean(a))/sd(a)
(b-mean(b))/sd(b)

x <- matrix(1:10, ncol = 2)
centered.x <- scale(x, center = FALSE)

a <- c(1:5)
b <- c(6:10)
MSa <- sqrt(sum(a^2)/(length(a)-1))
MSa
MSb <- sqrt(sum(b^2)/(length(b)-1))
MSb
a/MSa
b/MSb

x <- pretty(c(-3,3), 30)
y <- dnorm(x)
plot(x, y,
     type = "l",
     xlab = "Normal Deviate",
     ylab = "Density",
)

pnorm(1.96)
qnorm(.9, mean=500, sd=100)
rnorm(50, mean=50, sd=10)

runif(5)
runif(5)
set.seed(1234)                                                     
runif(5)
set.seed(1234)                                                      
runif(5)

library(MASS)
options(digits=3)
set.seed(1234)
mean <- c(230.7, 146.7, 3.6)                                           
sigma <- matrix( c(15360.8, 6721.2, -47.1,                              
                   6721.2, 4700.9, -16.5,
                   -47.1,  -16.5,   0.3), nrow=3, ncol=3)

mydata <- mvrnorm(500, mean, sigma)                                     
mydata <- as.data.frame(mydata)                                         
names(mydata) <- c("y", "x1", "x2")                                       

dim(mydata)                                                             
head(mydata, n=10)   

x <- c("ab","cde", "fghij") 
nchar(x)

x <- "abcdef" 
substr(x, 2, 4)

?grep
grep("A",c("b","A","a","c"),fixed=FALSE,ignore.case = FALSE)
grep("A",c("b","A","a","c"),fixed=FALSE,ignore.case = TRUE)

sub("\\s",".","Hello There",fixed=FALSE)
sub("\\s",".","Hello There",fixed=TRUE)

x <- c('sdsd', 'sdfsdf', 'dsffd')
y <- strsplit(x, ",")
y

paste("x", 1:3, sep="")
paste("x",1:3,sep="M")
paste("Today is", date())

toupper("Abc")
tolower("ABC") 

grep("^[hc]?at",c("hat","Hat","bat","cat","Cat"),
     fixed=FALSE,ignore.case = TRUE)

name <- c("Jane")
cat("Hello" , name, "\n")
?cat

name <- "Bob"
cat("Hello", name, "\b.\n", "Isn\'t R", "\t", "GREAT?\n")
cat( "Hello", name, ".\n", "Isn\'t R", "\t", "GREAT?\n")
cat( "Hello", name, ".\n", "\bIsn\'t R", "\t", "GREAT?\n")
     
# Applying functions to matrices and data frames
a <- 5
sqrt(a)
b <- c(1.243, 5.654, 2.99)
round(b)
c <- matrix(runif(12), nrow=3)
c
log(c)
mean(c)


?apply
c
apply(c, 1, mean)   # 1 is row， 2 is col
apply(c, 2, mean) 
apply(c, 2, mean, trim=.2)  

#  A solution for the data-management challenge
options(digits=2)

Student <- c("John Davis", "Angela Williams", 
             "Bullwinkle Moose", "David Jones", 
             "Janice Markhammer", "Cheryl Cushing",
             "Reuven Ytzrhak", "Greg Knox", "Joel England",
             "Mary Rayburn")
Math <- c(502, 600, 412, 358, 495, 512, 410, 625, 573, 522)
Science <- c(95, 99, 80, 82, 75, 85, 80, 95, 89, 86)
English <- c(25, 22, 18, 15, 20, 28, 15, 30, 27, 18)

roster <- data.frame(Student, Math, Science, English,
                     stringsAsFactors=FALSE)
roster

z <- scale(roster[,2:4]) 
z
score <- apply(z, 1, mean)    
score
roster <- cbind(roster, score)
roster

y <- 
  (score, c(.8,.6,.4,.2))  # 分位数
y
roster$grade[score >= y[1]] <- "A"                                     
roster$grade[score < y[1] & score >= y[2]] <- "B"
roster$grade[score < y[2] & score >= y[3]] <- "C"
roster$grade[score < y[3] & score >= y[4]] <- "D"
roster$grade[score < y[4]] <- "F"

name <- strsplit((roster$Student), " ")    
name
lastname <- sapply(name, "[", 2) 
# sapply函数将列表中的每个成分的第n个元素组成一个向量，"["是一个可以提取某个对 象的一部分的函数??????在这里它是用来提取列表name各成分中的第一个或第二个元素的。
lastname
firstname <- sapply(name, "[", 1)
firstname

?strsplit
?sapply
roster <- cbind(firstname,lastname, roster[,-1])
roster <- roster[order(lastname,firstname),]
roster

# Control flow
#  Repetition and looping
for (i in 1:10) {
  print("Hello")
}

i <- 1
while(i < 10){
  print(i)
  i <- i+1
}  

# Conditional execution
Math <- c(502, 600, 412, 358, 495, 512, 410, 625, 573, 522)
Science <- c(95, 99, 80, 82, 75, 85, 80, 95, 89, 86)
English <- c(25, 22, 18, 15, 20, 28, 15, 30, 27, 18)
roster <- data.frame(Student, Math, Science, English,
                     stringsAsFactors=FALSE)

z <- scale(roster[,2:4]) 
score <- apply(z, 1, mean)                                            
roster <- cbind(roster, score)

y <- 
  (score, c(.8,.6,.4,.2))                                   
roster$grade[score >= y[1]] <- "A"                                     
roster$grade[score < y[1] & score >= y[2]] <- "B"
roster$grade[score < y[2] & score >= y[3]] <- "C"
roster$grade[score < y[3] & score >=y[4]] <- "D"
roster$grade[score < y[4]] <- "F"
roster

attach(roster)
if (!is.factor(grade)) {
  grade <- as.factor(grade)
} else {
  print("Grade already is a factor")
}
detach(roster)

x <- c("what","is","truth")

if("Truth" %in% x) {
  print("Truth is found the first time")
} else if ("truth" %in% x) {
  print("truth is found the second time")
} else {
  print("No truth found")
}  

attach(roster)
outcome <- ifelse (score > 0.5, "Passed", "Failed")
# if score > 0.5, 相应位置为passed否则为failed
outcome
roster$outcome <- ifelse (score > 0.5, "Passed", "Failed")
roster
detach(roster)

x <- 2
switch(x, "happy", "sad", "angry")


switch(3, 3+5, 3*5, 3-5, 3**5)

switch(2*2, mean(1:10), sum(1:10), max(1:10), min(1:10), sqrt(1:10))

you.like<-"fruit"
switch(you.like, drink="water", meat = "beef",
       fruit = "apple", vegetable="cabbage")

feelings <- c("sad", "afraid")
for (i in feelings){
  print(
    switch(i,
           happy  = "I am glad you are happy",
           afraid = "There is nothing to fear",
           sad    = "Cheer up",
           angry  = "Calm down now"
    )
  )
}

# User-written functions
mystats <- function(x, parametric=TRUE, print=FALSE) {
  if (parametric) {
    center <- mean(x); spread <- sd(x) 
  } else {
    center <- median(x); spread <- mad(x) 
  }
  if (print & parametric) {
    cat("Mean=", center, "\n", "SD=", spread, "\n")
  } else if (print & !parametric) {
    cat("Median=", center, "\n", "MAD=", spread, "\n")
  }
  result <- list(center=center, spread=spread)
  return(result)
}

set.seed(1234)
x <- rnorm(500) 
y <- mystats(x)
y
y <- mystats(x, parametric=TRUE, print=TRUE)
y
y <- mystats(x, parametric=FALSE, print=TRUE)
y

mydate <- function(type="long") {
  switch(type,
         long =  format(Sys.time(), "%A %B %d %Y"), 
         short = format(Sys.time(), "%m-%d-%y"),
         cat(type, "is not a recognized type\n"))
}
mydate("long")
mydate("short")
mydate()
mydate("medium")

common.compute <- function(x,type){
  switch(type,
         mean = mean(x),
         median = median(x),
         sum = sum(x),
         max = max(x),
         min = min(x),
         sqrt = sqrt(x)
         
  )
}
x<- c(11,13,34,43,54,65,78)
common.compute(x,"median")
common.compute(x,"max")
common.compute(x,"sqrt")

# Aggregation and reshaping
cars <- mtcars[1:5, 1:4]      
cars
t(cars)

options(digits=3)
attach(mtcars)
aggdata <-aggregate(mtcars, by=list(cyl,gear), 
                    FUN=mean, na.rm=TRUE)
aggdata

#reshape
install.packages("reshape2")

?melt

library(reshape2)
# 变量只保留id=‘ID’ ’time‘，其他变为值
# vars=c("X1", "X2") 表示 X1，X2合并成一组
md <- melt(mydata, id=c("ID", "Time"))
md
md2 <- melt(mydata, measure.vars=c("X1", "X2"))
md2

md3 <- melt(mydata, measure=c("X1", "X2"))
md3

newwin <- melt(md, id = c('ID', 'Time', 'X1', 'X2'))
newwin

dcast(md,ID~variable,mean) 
# 分为ID，和变量，id显示id分类，mean表示variable 的取值

dcast(md,Time~variable,mean)

dcast(md,ID~Time,mean)

dcast(md,ID~Time+variable,mean)

dcast(md,ID+variable~Time,mean)

dcast(md,ID~variable+Time)

setwd('/Users/yasmine/Documents/学习/language/R/数据/teachtest/data')
DT <- read.table("melt_default.csv",header = T,sep = ",")
DT

library(reshape2)

DT.m1 <- melt(DT, measure.vars = c("dob_child1", "dob_child2", "dob_child3"),
              variable.name = "child", value.name = "dob")
DT.m1

dcast(DT.m1, family_id + age_mother ~ child, value.var = "dob")
