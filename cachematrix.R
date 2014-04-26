## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This is new!.
makeCacheMatrix <- function(x = matrix()) {
        CacheMatrix <- NULL
        set <- function(mtrx) {
                x <<- mtrx
                CacheMatrix <<- NULL
        }
        get <- function() x
        setMatrix <- function(parmMatrix) CacheMatrix <<- parmMatrix
        getMatrix <- function() CacheMatrix
        list(set = set, get = get,
             setMatrix = setMatrix,
             getMatrix = getMatrix)
        

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        CacheMatrix <- x$getMatrix()
        if(!is.null(CacheMatrix)) {
                message("getting inverse matrix")
                return(CacheMatrix)
        }
        data <- x$get()
        CacheMatrix <- solve(data, ...)
        x$setMatrix(CacheMatrix)
        CacheMatrix
}
