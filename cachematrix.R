## X is our matrix in function makeacheMatrix
## The makecacheMatrix function will return a list of functions to:
## a)set the matrix
## b)get the matrix
## c)set the inverse
## d)get the inverse
## The function is made to act as an input for CacheSolve function 

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function(y){
## <<- It is used to assign a value to an object of another environment 
    x<<-y
  inv<<-NULL
  }
get<-function()x
setinv<-function(inverse) inv<<-inverse
getinv<-function() inv
list(set=set,get=get,setinv=setinv,getinv=getinv)
}

## This function return the inverse of the original matrix if available
## from getinv function of makeCacheMatrix otherwise itself calculate 
## the inverse and return it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  ##solve function is used to calculate inverse of a matrix
  data<-x$get()
  inv<-solve(data)
  x$setinv(inv)
  return(inv)
}
## We can check our function by randomnly making a matrix of 100 rows and columns 
## and use Sys.time() to calulate the time diference as it came to 0.003 seconds
## in my case and next time time difference was zero

