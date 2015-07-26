## An efficienct inverse square calculation solving mechanism. Will cache the results of a
## calculation for subsequent reuse, instead of re-calculating every single time.

## This function creates a special "matrix" object that can cache its inverse.
##
## x: matrix whose inverse can be cached. will default to an empty matrix if no arg is set.
## RETURN: data structure with functions
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    # set our working matrix to the passed in matrix
    x <<- y
    
    # set inverse to NULL
    i <<- NULL
  }
  
  # get the working matrix.
  get <- function() x
  
  # set the cached inverse
  setInverse <- function(inverse) i <<- inverse
  
  # get the cached inverse. will return NULL if inverse has never been set.
  getInverse <- function() i
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix 
## above. If the inverse has already been calculated (and the matrix has not changed), then 
## cacheSolve should retrieve the inverse from the cache.
##
## x: matrix to solve for inverse
## RETURN: the inverse of x
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
