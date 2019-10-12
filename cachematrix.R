## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invmatrix <- NULL
        setMatrix <- function(y) {
                x <<- y
                invmatrix <<- NULL
        }
        
        getmatrix <- function() x
        setinverse <- function(inverse) invmatrix <<- inverse
        getinverse <- function() invmatrix
        list(setmatrix = setmatrix, getmatrix = getmatrix,
             setnverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
        invmatrix <- x$getinverse()
        if(!is.null(invmatrix)) {
                return(invMatrix)
        }
        else {
                MatrixData <- x$getMatrix()
                invMatrix <- solve(MatrixData, ...)
                x$setInverse(invMatrix)
                return(invMatrix)
        }
        
}
        ## Return a matrix that is the inverse of 'x'
