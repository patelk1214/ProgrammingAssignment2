## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  # m as NULL    
  m<-NULL
  
  set<- function(y) {b
                     
                     x<<-y
                     m<<-NULL
                     
  }
  
  get <-function() x                    # get the special matrix from cache
  setinverse <- function(mat) m <<- mat # compute the inverse of special matrix and set it in cache
  getinverse <- function() m            # retrieve the inverse of special matrix
  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  
  
  
  m <- x$getinverse()                  # check is the m is NULL, if not null then retrive the inverse matrix from cache
  if(!is.null(m)) {                     
    message("getting cached data")
    return(m)
  }
  
  # if m is null then compute the inverse of special matrix and rertun  
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv) 
  x$getinverse() 
        ## Return a matrix that is the inverse of 'x'
  
}
