## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## x is assigned matrix()
## solved value 'v' is assigned NULL 
## 'inverse of matrix' is set to value of 'v'
makeCacheMatrix <- function(x = matrix()) {
         v <- NULL
        set <- function(y) {
                x <<- y
                v <<- NULL

}
 get <- function()x
  setInverse <- function(inverse) v <<- inverse
  getInverse <- function() v
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}
## Write a short comment describing this function
## cacheSolve stores the inverse of matrix() and returns the value 'V'
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  v <- x$getInverse()
  if(!is.null(v)){
  message("getting cached data")
  return(v)
  }
  mat <- x$get()
  v <- solve(mat,...)
  x$setInverse(v)
  v
}
