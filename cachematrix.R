## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Load a matrix value. Get the value of the matrix. Make the inverse matrix. Get the value of the inverse matrix.
makeCacheMatrix <- function(x = matrix()) {
        inverse_m <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
    get <- function() x
    setinverse <- function(inverse) inverse_m <<- inverse
    getinverse <- function() inverse_m
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
# These function make the inverse matrix, when it isn't cached.
# If it is cached, then load the value.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse_m <- x$getinverse()
        if(!is.null(inverse_m)) {
                message("getting cached data.")
                return(inverse_m)
        }
        data <- x$get()
        inverse_m <- solve(data)
        x$setinverse(inverse_m)
        inverse_m
}
