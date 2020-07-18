## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function creates a special "matrix" object that can cache its inverse.
#invm:inverse of x
makeCacheMatrix <- function(x = matrix()) {
   invm<-NULL
   set <- function(y) {
     x <<- y
     invm <<- NULL
   }
   get <- function() x
   setinvm <- function(inversemat) invm <<- inversemat
   getinvm <- function() invm
   list(set = set, get = get,
        setinvm = setinvm,
        getinvm = getinvm)
}


## Write a short comment describing this function
#This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
#If the inverse has already been calculated (and the matrix has not changed), 
#then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  invm <- x$getinvm()
  if(!is.null(invm)) {
    message("getting cached data")
    return(invm)
  }
  data <- x$get()
  invm <- solve(data,...)
  x$setinvm(m)
  invm
}
