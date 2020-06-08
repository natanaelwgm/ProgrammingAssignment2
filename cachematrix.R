## Put comments here that give an overall description of what your
## functions do

## The below makeCacheMatrix function is constructed primarily based on the 
## makeVector function defined in the assignment description. The only distinction
## is the default being made matrix() and not numeric() as we are taking in
## matrices. Also, the function used is not mean but solve(a,b,...) with a
## being a matrix and b by default an identity matrix. 

## The solve function returns the multiplication between a and b, thus creating 
## the proper inverse matrix. The cacheSolve then calculates the inverse matrix 
## of the resulting "special" matrix from the makeCacheMatrix function 

## Write a short comment describing this function

## This function was tried in my desktop with the simple matric m1 from
## the discussion classified as "test cases". Returns the function perfectly.

makeCacheMatrix <- function(x = matrix()) {
  i = NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data,...)
  x$setinverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
