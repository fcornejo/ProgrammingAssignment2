## Function takes a matrix, calculates the inverse of the matrix with the solve function. 
# the inverse result its stored on cached. If the user calls the function with the same values
#the fucntion returns the stored inverse value. If the matrix has different values, the function
#calculates again the inverse value of hte matrix.

## Function checks if the inverse of the matrix is stored. 

makeCacheMatrix <- function(x = matrix()) {
        
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(solve) inv <<- solve
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
        
}

## function computes and stores the inverse of the matrix


cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv## Return a matrix that is the inverse of 'x'
}
