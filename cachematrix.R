## Goofy program to cache a matrix inverse


## Creates a list of getters/setters that store the matrix 
## and its inverse
makeCacheMatrix <- function(x = matrix()) {
        xinv <- NULL
        set <- function(y) {
                x <<- y
                xinv <<- NULL
        }
        get <- function() x
        setinv <- function(inv) xinv <<- inv
        getinv <- function() xinv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Checks if the inverse has been computed. If so, retreives it,
## If not computes it

cacheSolve <- function(x, ...) {
      
        if(is.null(x$getinv())) {
               inv <- solve(x$get())
               x$setinv(inv)         
        } else {
        		message("getting cached data")
				inv <- x$getinv()
        }
        
        inv
}
