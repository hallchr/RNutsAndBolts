#subsetting object in R
 # [always returns an object of the same class as the original....if you subset a vector you will get back a list]
  #[[is used to extract elements of a list or data frame and can only extract a single element and class may not be a list or DF]]
  # $ is used to extract elements of a list or dataframe by name; semantics are similiar to hat [[]]

x <- c("a", "b", "c", "d", "a")
x[1]
x[2]
x[1:4]
x[x > "a"]
u <- x > "a"
x[u]

#subsetting r objects lists
# can use [[]] or $

x <- list(foo = 1:4, bar = 0.6)
x[1] # got a list containing sequence
x[[1]] # got just the sequence...not the list
x$bar
x[["bar"]]
x["bar"]

  #extracting multiple elements need to use single bracket []

x <- list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(1,3)]

  #double bracket can be used with computed indices; $ can only be used on literal names
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
name <- "foo"
x[[name]] ##computed index for 'foo'
x$name ##does not exist
x$foo

  #subsetting nested elements of a list
x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x[[c(1,3)]] # gives 14
x[[1]][[3]]
x[[c(2, 1)]] #gives 3.14

  #subsetting matrices: usual way with row and column index (i,j)
x <- matrix(1:6, 2, 3)
x[1,2] # gives row 1 column 2
x[1, ] # indices can also be missing

x[1, 2, drop = FALSE] # will give you a matrix back
x[1, , drop = FALSE]

#partial matching of names allowed with [[]] and $
x <- list(aardvark = 1:5)
x$a # looks at list with a matching element of a....which could be aardvark
x[["a", exact = FALSE]]

#removing missing values, NAs
x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
good
x[good]
y[good]
airquality[1:6,]
good <- complete.cases(airquality) # looks at all rows where only complete rows
airquality[good, ][1:6, ]

#vectorized operations easy to use and nice to write code without looping

x <- 1:4; y <- 6:9
x + y  # add first element of x to first element of y
x > 2 # logical True or False
y==8
x*y
x/y

x <- matrix(1:4, 2, 2); y <- matrix(rep(10, 4), 2, 2)
x*y # will do multiplaction in parallel
x/y 
x %*% y #will do matrix multiplation not element multiplication


