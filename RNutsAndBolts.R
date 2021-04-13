
#Vector: only 1 type of data object/class across all elemnts (numeric, character, etc.)
x <- 1:20 # vector

##List: A vector that can contain multiple classes across elements
y <- list(1, "a", TRUE, 1 + 4i) # list

msg <- "hello"

as.character(x)
##matrices: Vectors in R that have attributes called dimensions
## dimension of 2 (rows and columns)


m <- matrix(1:6, nrow =2, ncol = 3) ##matrix
dim(m)
attributes(m)

    ## creating matrix using dim func
m <- 1:10
dim(m) <- c(2,5)

    ## creating matrix by cbind and rbind

x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)

# Factors : special vector used to represent categorical data
# unordered and ordered
# unordered (male/female)....not ranked
#ordered (assistant, professor, etc)
