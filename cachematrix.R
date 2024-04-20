## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # variable and functions
  matrixInverse <- NULL
  set <- function( y ){
    x <<- y
    matrixInverse <<- NULL
  }
  get <- function() ( x )
  setInverse <- function( calcinverse ) ( matrixInverse <<- calcinverse )
  getInverse <- function() ( matrixInverse )
  list( set = set, get = get, setInverse = setInverse, getInverse = getInverse )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  # Return a matrix that is the inverse of 'x'
  soluInverse <- x$getInverse()
  if (!is.null(soluInverse)) {
    message( "getting cached data" )
    return( soluInverse )
  }
  data <- x$get()
  soluInverse <- solve(data, ...)
  x$setInverse(soluInverse)
  soluInverse
}