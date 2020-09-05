## Put comments here that give an overall description of what your
## functions do

## This function works to create a list for the giving matirx with the way to get,to set, to get the inverse and set the inverse.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        ## This function works to give the value of y to x, no matter what the type that y may be.
        get <- function()x
        setInverse <- function(inverse) i <<-inverse
        getInverse <- function() i 
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Thid function will give the inverse of a matirx created by 'makeCacheMatrix' from the cache, or give it after calculate and store it.  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()
        if(!is.null(i)){
                message("Getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setInverse(i)
        i
}
