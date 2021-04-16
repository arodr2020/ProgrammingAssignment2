## Put comments here that give an overall description of what your
## functions do

## Computing matrix for DS Course
## the value of the vector
##get the value of the vector
##set the value of the inverse of the function 
##get the value of the inverse of the function 

makeCache <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Takes inverse of special matrix for DS Course
##First checks to make sure there is no inverse 

cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- solve(mat, ...)
  x$setInverse(m)
  m
}
