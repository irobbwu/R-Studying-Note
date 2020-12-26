# matrix
iris3
state.x77
heatmap(state.x77)

x <- 1:20
m <- matrix(x, nrow = 4, ncol = 5)
m

m <- matrix(x, nrow = 4, ncol = 4)
m

m <- matrix(x, nrow = 4, ncol = 6)
m

m <- matrix(x, nrow = 3, ncol = 3)
m

m <- matrix(x, nrow = 4, ncol = 5, byrow = T)
m

rnames <- c('r1', 'r2', 'r3', 'r4')
rnames
cnames <- c('c1', 'c2', 'c3', 'c4', 'c5')
cnames
dimnames(m) <- list(rnames, cnames)
m

?dim
dim(m)
dim(x) <- c(4,5)
x

x <- 1:20
dim(x) <- c(2,2,5)
x

?array
dim1 <- c('a1', 'a2')
dim2 <- c('b1','b2','b3')
dim3 <- c('c1','c2','c3','c4')
z <- array(1:24, c(2,3,4),dimnames = list(dim1, dim2, dim3))
z

# index of matrix
m <- matrix(1:20, 4, 5, byrow = T)
m
m[1,2]
m[,1]
m[1,]
m[-1, 2]
dimnames(m) <- list(rnames, cnames)
m['r1', 'c2']

?head # list 6_ed rows
head(state.x77)
state.x77['Alabama']
state.x77['Alabama',]

m + 1
m * 2
n <- matrix(1:20, 5, 4)
n
m*n
rowSums(m)
colSums(m)
rowMeans(m)

n <- matrix(1:9, 3, 3)
t <- matrix(2:10, 3,3)
n*t # Multiplies corresponding elements
n %*% t # matrix multiplication
n
diag(n)
t(n) # transfer

# list
state.center
a <- 1:20
b <- matrix(1:20, 4)
c <- mtcars
d <- 'this is a list'
mlist <- list(a,b,c,d)
mlist

mlist <- list(svd = a,sdfs = b,c,d)
mlist
mlist[1]
mlist[c(1,4)]
mlist$svd

mlist <- list('svd' = a,'sdfs' = b,c,d)
mlist

# dataframe
iris
?data.frame
iris[1]
iris[, 1]

women
plot(women$height, women$weight)

?attach
attach(mtcars)
mpg
hp
detach(mtcars)
mpg

# factor
?factor
diabetes <- c('type1', 'type2')
diabetes <- factor(diabetes)
diabetes

x <- c("男", "女", "男", "男",  "女",'sex')
sex <- factor(x)
sex
sex <- factor(x, levels = c('sex') )
sex
sex <- factor(x, levels = c('男', '女'), labels = c(1,2))
sex
sex <- factor(x, levels = c('男', '女'), labels = c(1,2), order = T)
sex
sex <- factor(x, order = T)
sex
str(sex)
str(x)