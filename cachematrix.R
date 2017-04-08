## Put comments here that give an overall description of what your
## functions do

#### 1. makeCacheMatrix function makes a matrix that is able to cache its inverse.
#### 2. cacheSolve function uses the matrix created by makeCacheMatrix function
####    to find its inverse. In case inverse already available, it returns that
####    inverse from cache.

## Write a short comment describing this function

#### Takes a square invertible matrix and returns the setter and getter for the 
#### matrix and its inverse. This list of setter & getter is passed to cacheSolve.

makeCacheMatrix <- function(x = matrix()) {
  
        i <- NULL
        set <- function(m) {
        x <<- m
        i <<- NULL
  } 
      get <- function() x 
      seti <- function(inverse) i <<- inverse
      geti <- function() i
  
      list(set=set, get=get, seti=seti, geti=geti)
}


## Write a short comment describing this function

#### Takes argument returned by makeCacheMatrix and provides the inverse of matrix 
#### given to makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   i <- x$geti()
  ## to check if given matrix's inverse already calculated and present in cache.
  if (!is.null(i)){
      print("Returning the inverse from the cache")
      i
  }
  
   matri <- x$get()
   i <- solve(matri, ...)
   x$seti(i)
   i
}
