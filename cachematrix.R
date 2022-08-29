## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#the following function sets the value of matrix, gets the value of matrix, sets the value of inverse of the matrix, gets the value of the inverse of the matrix 

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <-function(y){
    x <<- y
    inverse <<- NULL
    
  }
  get <-function() x
  setinverse <- function(inv) inverse <<- inv
  getinverse <- function() inverse
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function
# The following function returns the inverse of the matrix. It first checks if the inverse is computed already, if yes then it retrieves the adat from the cache else computes the inverse and stores the value in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <-x$getinverse()
  if(!is.null(inverse)){
    message("Getting cached values")
    return(inverse)
  }
  data <-x$get()
  inverse<-solve(data)
  x$setinverse(inverse)
  inverse
}
