# R Basis

x <- 1
y <- c(1:3)
z <- c(1, 2, 3)

# list all information
ls()

# show all information including the hiden file
ls(all.names = TRUE)

# list all information details
ls.str()

# list a variable information
str(x)

# del a variable
rm(x)
x

# del all variables
rm(list = ls())

# look up the recent commands
history()
history(10)

# clean the desktop crtl + L

save.image()

# quit R
q()