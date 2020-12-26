# vector

x <- c(1, 2, 3, 4, 5)
y <- c('one', 'two', 'three') # str type shoule be in ''
z <- c(TRUE, T, F)
z

c(1:100)
seq(from = 1, to = 100, by = 2) # generate arithmetic sequence 
seq(from = 1, to = 100, length.out = 10)# generate 10 outcomes
rep(2, 5) # repeat 
rep(x, 5)
rep(x, each = 5)
rep(x, each = 5, times = 2)

a <- c(1, 2, 'one')
a

# look up the data type
mode(a) # vector shouldn't be character
mode(z)

x <- c(1:5)
y <- (6:10)

x * 2 + y # matrix operations

x[x > 2]# filter
rep(x, c(1:5))

# index
x <- c(1:100)
x
length(x)
x[1] # interview the 1-th element
x[-19] # not interview the 19-th element
x[c(1:10)]

y <- c(1:10)
y[rep(c(T,T,F,F,T), times = 2)]
y[y > 5]
y[y > 5 & y < 7]

z <- c('one', 'two', 'three', 'four', 'five')
z
one %in% z
'one' %in% z
z['one' %in% z]
z[z %in% c('one', 'two')]
z %in% c('one', 'two')

# name
names(y)
names(y) <- c('one') 
names(y)
y['one']

x
x[101] = 99
x

v <- c(1:3)
v[c(4:6)] <- c(4:6)
v
v[20] <-4
v

append(x = v, values = 99, after = 3)
append(x = v, values = 99, after = 0)

y <- y[-c(1:3)]
y # del the partion of y

#  arithmetic
x <- c(1:10)
x
x + 1
x - 3

y <- seq(1, 100, length.out = 10)
y

x + y
x ** y
x %% y
x %/% y

z <- c(1, 2)
x + z
x * z

z <- c(1, 2, 3)
x + z


# logical jufgement
x > 5
x > y
x %in% y
x == y

# operator
x <- c(-5:5)
x
abs(x)
sqrt(25)
log(exp(5))
log10(10)

exp(0)

ceiling(c(-2.232, 2.23223))
floor(c(-2.232, 2.23223))
trunc(c(-2.232, 2.23223)) #return the interger
round(c(-2.232, 2.23523), digits = 2)
signif(c(-2.232, 2.23223), digits = 2)

sin(x)
cos(x)
sum(x)
max(x)
min(x)
mean(x)
var(x)
sd(x)
prod(x) # Product of Vector Elements
median(x)
quantile(x)
quantile(x, c(0.2, 0.8))
which(x == 0)
which.max(x)
which.min(x)


