## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix takes in a matrix as a paramater and stores it. 
## the set and get functions allow you to set the matrix and get the matrix
## the setsolve and getsolve functions allow you to set the inverse matrix and get the inverse matrix


makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set <-function(y){
    x<<-y
    m<<-NULL
  }
    get <- function() {x}
    setsolve <- function() {m <<- solve(x)}
    getsolve <- function() {m}
    list(set = set, get = get,setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function
## this function returns the solved inverse if available. if not it solves the inverse and sets it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  m <- x$setsolve()
  m
}
