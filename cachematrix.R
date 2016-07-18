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

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
