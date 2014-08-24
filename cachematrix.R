## Put comments here that give an overall description of what your
## functions do

## Creates a list that stores cached matricies.
##   set the value of the matrix
##   get the value of the matrix
##   set the value of the matrix
##   get the value of the matrix
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse) 
}

## Returns a previously inverted matrix if it has
## been cached, otherwise inverts and caches.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <-x$get()
  i <- solve(x)
  x$setinverse(inv)
  inv
}
