## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## creating cache matrix if values exists, else intializing with null values
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

## Write a short comment describing this function
## solving to get inverse matrix, if result exists than fetching fron cached matrix, else updating it
cacheSolve <- function(x=matrix(), ...) {
    ## Return a matrix that is the inverse of 'x'
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
