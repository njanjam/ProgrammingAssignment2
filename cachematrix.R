## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invofx <- NULL
    set <- function(y) {
        x <<- y
        invofx <<- NULL
    }
    get <- function() x
    setinverse<- function(inverse) invofx <<-inverse
    getinverse <- function() invofx
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    invofx <- x$getinverse()
    if (!is.null(invofx)) {
        message("get the cached inverse of matrix")
        return(invofx)
    } else {
        invofx <- solve(x$get())
        x$setinverse(invofx)
        return(invofx)
    }
}
