## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL # assign value of matrix inverse to NULL
  # function is defined to set and get matrix (x)
   
  setMatrix <- function(y) { x <<- y 
                             inv <<- NULL      #matrix status changes, then clear 
  }                          
  
  getMatrix <- function() {
    x
  }                          # End of get cache
  
  # set inverse of matrix
  
  setinverse <- function(inverse) { message("Setting matrix")
                                    inv <<- inverse } 
  
  getinverse <- function() { message("Getting inverse of matrix")
                             inv
  }                    # End of get inverse 
  
  # list results
  list(setMatrix=setMatrix, getMatrix=getMatrix, setinverse=setinverse ,getinverse=getinverse)
                        #End of first block makeChacheMatrix 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
  
  # check result status, whether results have been cached
  if(!is.null(inv)) {
    
    message("Get the cached data.")
    return(inv) }
  #get the value of inverse
  data = x$getMatrix() inv <- solve(data,...) x$setinverse(inv)
  inv
}
