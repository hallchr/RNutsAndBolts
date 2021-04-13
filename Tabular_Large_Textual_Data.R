##Reading tabular data

  #read.table() and read.csv()
  #readLines for reading lines of a text file
  #source, for reading R code
  #dget for reading R code files that have ben deparsed
  #load for reading in saved workspaces and unserialize for reading sinle R in binary

#Write
  #write.table(), writeLines, dump, dput, save, serialize

  #read.table function most common
  #file, geader, sep, colClasses, nrows, comment.char, skip, stringsAsFactors

data <- read.table("foo.txt")

#Reading larger tables


  #read the help page for read.table()
  #make a rough calculation of the memorey required to store dataset.
  # If the dataset is larger than amount of RAM, you should stop there.
  #set comment.char = "" if there are no commented lines in your file.

  #colClasses argument is very important. specifying the column classes will run
  #table much faster. Easy as colClasses = "numeric". See example below:

initial <- read.table("datatable.txt", nrows=100)
classes <- sapply(initial, class)
tabAll <- read.table("datatable.txt",
                     colClasses = classes)

  #set nrows. Doesn't run faster but saves memory.

#Know the system! How much memory does your pc have? Physical ram? What other apps are
  #being used? What other loggers are using? OS? 32/64 bit?

  #calculating memory requirements
  #1,500,000 rows and 120 columns. All numeric. How much to store in memory?
  #elements = 1,500,00 * 120 * 8bytes(numeric) = 1440000000 bytes = 1,373.29 MB
  #1,373.29MB = 1.34 GB....need a bit more to read data in....almost twice as much!


#Textual data formats


  #dumping and dputing are useful because text format is editable
  #dump and dput preserve metadata
  #textual format can work well with version control like git
  #text can be long lived
  #downside: not space efficient

#dput: deparsing R object and read it back using dget

y <- data.frame(a=1, b="a")
dput(y) #writes r code which  can be used to reconstruct an r function
structure(list(a=1,
               b = structure(1L, .Label = "a",
                             class = "factor")),
          .Names = c("a", "b"), row.names = c(NA, -1L),
          class = "data.frame")
dput(y, file = "y.R")
new.y <-dget("y.R")
new.y

#Dump:multiple objects can be deparsed and can be reead back using source function

x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R")
rm(x,y)
source("data.R")
y
x

#Interfaces to the Outside World

  #interface R with the outside world!
  # file, gzfile, bzfile, url

str(file)
function(description = "", open = "", blocking = TRUE,
         encoding = getOption("encoding"))
  
  #Description in name of file
  #open is code indicating : "r" read only, "w" writing, "a" appending
  
  #Connections are very powerful to navigate files or other external objects.

con <- file("foo.txt", "r")
data <- read.csv(con)
close(con)

 #is same as!

data <- read.csv("foo.txt")

  #reading lines of a text file
con <- gzfile("words.gz")
x<- readLines(con, 10)
x
 #readLines can be useful for reading lines in a webpage
con <- url("http://www.jhsph.edu", "r")
x <- readLines(con)
head(x)


