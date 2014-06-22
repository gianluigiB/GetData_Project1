#If input string starts with a t of an f
#this prepends time or frequency, respectively
appendTimeFrequency <- function(x) {
  if (substring(x, 1,1)=="t"){
    s <- paste("time", substring(x, 2), sep="")
  }
  else if (substring(x, 1,1)=="f") {
    s <- paste("frequency", substring(x, 2), sep="")
  }
  else {
    s <- x
  }
  s    
}

#Splits input string based on white spaces
#Concatenates all the pieces capitalizing from the second onward
#Ex: "Very niCe wEAThER" => "veryNiceWEAThER"
capitalizeVariableName <- function(x) {
  s <- strsplit(x, " ")[[1]]
  s <- paste(toupper(substring(s, 1,1)), substring(s, 2), sep="", collapse="")
  paste(tolower(substring(s, 1,1)),substring(s, 2), sep="")
}

#Removes any white space from input string
#Concatenates all the pieces capitalizing from the second onward
#Ex: "Very niCe wHEATER" => "Very Nice Wheather"
capitalizeValue <- function(x) {
  s <- strsplit(x, " ")[[1]]
  s <- tolower(s)
  paste(toupper(substring(s, 1,1)), substring(s, 2), sep="", collapse=" ")
}
