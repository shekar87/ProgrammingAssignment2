## The functions here calculate the inverse of a matrix using solve function
## Since this is a tedious task for large matrices, we have used cached data to speed it up

## This function creates a special matrix by using set, get value and setting inverse and getting invers

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y){
        x<<- y
        i<<-NULL
    }
get <- function() x
setsolve <- function(solve) i <<- solve
getsolve <- function() i
list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}


## This function calculates inverse of a given matrix. It first checks to see if the inverse has already been calculated. If yes, it skips the computation. Otherwise, it calculates the inverse and sets the value in cache using setsolve function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getsolve
        if(!is.null(i)) {
            message("getting cached data)
            return(i)
        }
        data <- x$get()
        i <- solve(x,...)
        x$setsolve(i)
        i
}
