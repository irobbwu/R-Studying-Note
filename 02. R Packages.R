# R Package

?install.packages
install.packages() # The name should be with ''

install.packages(vcd)
install.packages('vcd')

# Use R Packaging
# Use library or require to load R package
library(vcd)
require(vcd)

help(package = 'vcd') # look up the information of R packages
ls('package:vcd') # look up all functions in package vcd
data(package = 'vcd') # show all datasets in package vcd

# delete a package
detach('package:vcd')  # eject
remove.packages('vcd') # delete

# Back up all packages
installed.packages() # list installed packages
installed.packages()[, 1]
Rback <- installed.packages()[, 1]
save(Rback, file = 'Rback.Rdata')

# Help
help.start()
help(sum)
?plot
