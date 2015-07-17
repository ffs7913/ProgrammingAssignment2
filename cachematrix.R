<<<<<<< HEAD
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
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}
