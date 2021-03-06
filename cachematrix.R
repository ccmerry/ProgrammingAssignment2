## Put comments here that give an overall description of what your
## functions do
## These functions store the inverse of matrices. If a the inverse is needed again, 
## the computation is skipped and the stored matrix is returned.

## Write a short comment describing this function
## 'makeCacheMatrix' takes an object 'x' and turns it into a matrix format and stores the matrix.

makeCacheMatrix <- function(x = matrix()) {
        	inv <- NULL
	set <- function(y) {
		x <<- y
		inv <<- NULL
	        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function
## 'cahceSolve' takes the matrix 'x' and creates an inverse of matrix 'x'

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
}
