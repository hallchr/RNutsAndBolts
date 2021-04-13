
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
# using factors with labels are good because it's more descriptive....
#Male and Female is better than 1 & 2

x <- factor(c("yes", "yes", "no", "yes", "no"))
x
table(x)
unclass(x)

x <- factor(c("yes", "yes", "no", "yes", "no"),
            levels = c("yes", "no")) ## can use levels argument to set order of levels

##Missing values
## denoted by NA or NaN
## is.na() tests if there are NA objects
##is.nan() is used to test for NaN

x <- c(1, 2, NA, 10, 3)
is.na(x)
is.nan(x)

##Data Frames
#Used to store tabular data - Very Important!
# represented as a special type of list where every element has the same length
# each column can have different class
#unlike matrices, data frames can store diff classes of objects
#special attributes called row.names
#usually created by calling read.table() or read.csv()
#can be converted to matrix by data.matrix()

x <- data.frame(foo = 1:4, bar =c(T, T, F, F))

##Names attributes
# r objects can have names. Very usable for writing readable code.
x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
names(x)

x<- list(a =1, b = 2, c = 3)
m <- matrix (1:4, nrow =2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m
