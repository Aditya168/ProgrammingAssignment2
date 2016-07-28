## Following functions illustrate how to create a Matrix, 
## Find the inverse of Matrix, and then 
## Store the results in a Cache, to save time
## required to perform inverse operation on same matrix

## Making a specal function for getting our "Matrix"

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function(y) {
x <<- y
i <<- NULL
}
get <- function() x
setinverse <- function(inv) i <<- inv
getinverse <- function() i
list(
set = set,
get = get,
setinverse = setinverse,
getinverse = getinverse
)
}

## Calculate the inverse of the special "matrix" created with the above function, reusing cached result if it is available
cacheSolve <- function(x, ...) {
i <- x$getinverse()
if(!is.null(i)) {
message("getting cached data")
return(i)
}
m <- x$get()
i <- solve(m, ...)
x$setinverse(i)
i
}
