## Put comments here that give an overall description of what your
## functions do

## A function that returns a list of 4 functions - set and get an internal matrix as well as its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function(m)
  {
    x <<- m
    i <<- NULL
  }
  
  get <- function()
  {
    x
  }
  
  setInverse <- function(inverse)
  {
    i <<- inverse
  }
  
  getInverse <- function()
  {
    i
  }
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## A function that takes above structure and compute its inverse as well as display the inverse

cacheSolve <- function(x, ...) {
  i <- x$getInverse()
  if(!is.null(i))
  {
    message("getting cached inverse matrix")
    return(i)
  }
  
  m <- x$get()
  i <- solve(m, ...)
  x$setInverse(i)
  
  i
}
